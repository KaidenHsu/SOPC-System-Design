# Hw5. Embedded PetaLinux VMM Char Device Driver

## 1. Introduction

HW5 integrates the hardware accelerator from HW4 with the embedded Linux environment from Lab 3, completing the full hardware-software co-design stack on the Zedboard. The HW4 `VMM` AXI-Lite IP — previously verified in simulation and tested via bare-metal SDK — is now driven by a Linux kernel module that exposes the hardware's register interface to userspace through a char device. The Lab 3 PetaLinux environment was reused and updated with the HW4 hardware description, replacing the adder IP while preserving the SD card layout, rootfs, and boot flow. A userspace test application ports the HW4 SDK verification program to Linux with `ioctl` file operations against `/dev/vmm-master`.

## 2. `vmm.c`: driver kernel module

``` c
/* ioctl cmd indices */
#define CMD_CTRL_WR    0   /* write REG_CTRL  (0x00) */
#define CMD_DIM_WR     1   /* write REG_DIM   (0x04) */
#define CMD_I_ADDR_WR  2   /* write REG_I_ADDR(0x08) */
#define CMD_I_DAT_L_WR 3   /* write REG_I_DAT_L(0x0C) */
#define CMD_I_DAT_H_WR 4   /* write REG_I_DAT_H(0x10) */
#define CMD_O_ADDR_WR  5   /* write REG_O_ADDR(0x14) */
#define CMD_O_DAT_RD   6   /* read  REG_O_DAT (0x18) */
#define CMD_CTRL_RD    7   /* read  REG_CTRL  (0x00) - poll finish */

/* Register byte offsets */
#define REG_CTRL    0x00
#define REG_DIM     0x04
#define REG_I_ADDR  0x08
#define REG_I_DAT_L 0x0C
#define REG_I_DAT_H 0x10
#define REG_O_ADDR  0x14
#define REG_O_DAT   0x18

struct vmm_local {
    unsigned long mem_start;
    unsigned long mem_end;
    void __iomem *base_addr;
    struct device *plat_dev_p;  /* platform device pointer */
    struct device *char_dev_p;  /* char device pointer */
    dev_t dev_node;
    struct cdev cdev;
    struct class *class_p;
};

/* ------------------------------------------------------------------
 * File Operations
 * ------------------------------------------------------------------ */

/* ioctl: main interface between userspace application and hardware */
static long vmm_ioctl(struct file *file_p, unsigned int cmd, unsigned long arg)
{
    struct vmm_local *lp = (struct vmm_local *)file_p->private_data;

    /* writes come in as (cmd_index + 64*1024); subtract to recover index */
    if (cmd > 7)
        cmd -= 64 * 1024;

    switch (cmd) {
        case CMD_CTRL_WR:
            iowrite32((u32)arg, lp->base_addr + REG_CTRL);
            printk(KERN_INFO "vmm: CTRL write = 0x%lx\n", arg);
            break;
        case CMD_DIM_WR:
            iowrite32((u32)arg, lp->base_addr + REG_DIM);
            printk(KERN_INFO "vmm: DIM write = 0x%lx\n", arg);
            break;
        case CMD_I_ADDR_WR:
            iowrite32((u32)arg, lp->base_addr + REG_I_ADDR);
            break;
        case CMD_I_DAT_L_WR:
            iowrite32((u32)arg, lp->base_addr + REG_I_DAT_L);
            break;
        case CMD_I_DAT_H_WR:
            /* writing high word triggers the hardware SRAM write */
            iowrite32((u32)arg, lp->base_addr + REG_I_DAT_H);
            break;
        case CMD_O_ADDR_WR:
            iowrite32((u32)arg, lp->base_addr + REG_O_ADDR);
            break;
        case CMD_O_DAT_RD:
            return (long)ioread32(lp->base_addr + REG_O_DAT);
        case CMD_CTRL_RD:
            /* returns REG_CTRL; caller checks bit[1] for finish */
            return (long)ioread32(lp->base_addr + REG_CTRL);
        default:
            printk(KERN_WARNING "vmm: unknown cmd %d\n", cmd);
            return -EINVAL;
    }
    return 0;
}

static int vmm_open(struct inode *ino, struct file *file_p)
{
    file_p->private_data = container_of(ino->i_cdev, struct vmm_local, cdev);
    return 0;
}

static struct file_operations dm_fops = {
    .owner          = THIS_MODULE,
    .open           = vmm_open,
    .unlocked_ioctl = vmm_ioctl,
};

/* ------------------------------------------------------------------
 * Char Device Init / Exit
 * ------------------------------------------------------------------ */

static int cdevice_init(struct vmm_local *lp)
{
    // ...
}

static void cdevice_exit(struct vmm_local *lp)
{
    // ...
}

/* ------------------------------------------------------------------
 * Platform Driver: Probe / Remove
 * ------------------------------------------------------------------ */

static int vmm_probe(struct platform_device *pdev)
{
    // ...
}

static int vmm_remove(struct platform_device *pdev)
{
    // ...
}

/* ------------------------------------------------------------------
 * Device Tree Matching
 * NOTE: replace "xlnx,hw4ip-1.0" with the compatible string from
 *       your pl.dtsi after re-importing HW4 HDF into PetaLinux.
 * ------------------------------------------------------------------ */
#ifdef CONFIG_OF
static struct of_device_id vmm_of_match[] = {
    { .compatible = "xlnx,HW4IP-1.0", },
    { /* end of list */ },
};
MODULE_DEVICE_TABLE(of, vmm_of_match);
#else
# define vmm_of_match
#endif

static struct platform_driver vmm_driver = {
    .driver = {
        .name           = DRIVER_NAME,
        .owner          = THIS_MODULE,
        .of_match_table = vmm_of_match,
    },
    .probe  = vmm_probe,
    .remove = vmm_remove,
};

static int __init vmm_init(void)
{
    printk("<1>Hello module world.\n");
    return platform_driver_register(&vmm_driver);
}

static void __exit vmm_exit(void)
{
    platform_driver_unregister(&vmm_driver);
    printk(KERN_ALERT "Goodbye module world.\n");
}

module_init(vmm_init);
module_exit(vmm_exit);

```

## 3. `vmm.cpp`: user test app


| Category | HW4 — SDK bare-metal (helloworld.c) | HW5 — Linux userspace (vmm.cpp) |
|---|---:|---:|
| IO header | \#include "xil_io.h" | \#include <sys/ioctl.h> |
| Platform header | \#include "xparameters.h" | \#include <fcntl.h> |
| Integer type | u32 (Xilinx type) | unsigned int (standard C) |
| Hardware address | XPAR_HW4IP_0_S00_AXI_BASEADDR | "/dev/vmm-master" |
| Register write | Xil_Out32(BASE + REG, val) | ioctl(fd, CMD + 64*1024, val) |
| Register read | Xil_In32(BASE + REG) | ioctl(fd, CMD, 0) |
| Initialisation | init_platform() | fd = open("/dev/vmm-master", O_RDWR) |
| Cleanup | cleanup_platform() | close(fd) |

``` cpp
/* ioctl cmd indices — must match vmm.c driver definitions */
#define CMD_CTRL_WR    0
#define CMD_DIM_WR     1
#define CMD_I_ADDR_WR  2
#define CMD_I_DAT_L_WR 3
#define CMD_I_DAT_H_WR 4
#define CMD_O_ADDR_WR  5
#define CMD_O_DAT_RD   6
#define CMD_CTRL_RD    7

/* convenience macros matching the SDK Xil_Out32 / Xil_In32 style */
#define VMM_WRITE(fd, cmd, val) ioctl((fd), (cmd) + 64*1024, (val))
#define VMM_READ(fd, cmd)       ioctl((fd), (cmd), 0)

int main() {
    std::cout << "\n--- VMM Hardware Accelerator Verification ---\n\n";

    /* --------------------------------------------------------
     * Step 0: Open the driver device node
     * -------------------------------------------------------- */
    int fd = open("/dev/vmm-master", O_RDWR);
    if (fd < 0) {
        std::cout << "Cannot open /dev/vmm-master\n";
        std::cout << "Did you run: insmod vmm.ko ?\n";
        return -1;
    }

    /* ========================================================
     * Input data generated by Python gen_rand.py
     * Replace these arrays with your own generated values.
     * ======================================================== */
    unsigned int input_data_high[] = {0xb3870423, 0x52b64f09, 0xd98038fc, 0xaf00937b};
    unsigned int input_data_low[]  = {0x9fa6fff0, 0x4c10768b, 0x0286ae40, 0xc75b0266};
    int golden_data[]              = {3, 98, -9};
    /* ======================================================== */

    /* --------------------------------------------------------
     * Step 1: Auto-derive M and N dimensions
     * Same formula as SDK app:
     *   total_depth = M/16 + (M/16)*N
     *   => M = (total_depth * 16) / (1 + N)
     * -------------------------------------------------------- */
    int n_val = sizeof(golden_data) / sizeof(golden_data[0]);
    int total_input_depth = sizeof(input_data_high) / sizeof(input_data_high[0]);
    int m_val = (total_input_depth * 16) / (1 + n_val);

    std::cout << "Detected Dimensions : M = " << m_val
              << ", N = " << n_val << "\n";
    std::cout << "Total SRAM Lines    : " << total_input_depth << "\n\n";

    /* --------------------------------------------------------
     * Step 2: Write M and N into hardware dimension register
     * Upper byte = M, lower byte = N
     * -------------------------------------------------------- */
    unsigned int dim_config = (m_val << 8) | n_val;
    VMM_WRITE(fd, CMD_DIM_WR, dim_config);

    /* --------------------------------------------------------
     * Step 3: Write input data into hardware Input SRAM
     * Each entry: write address, then low word, then high word.
     * Writing high word triggers the hardware 64-bit SRAM write.
     * -------------------------------------------------------- */
    std::cout << "Writing test data to Input SRAM...\n";
    for (int i = 0; i < total_input_depth; i++) {
        VMM_WRITE(fd, CMD_I_ADDR_WR,  i);
        VMM_WRITE(fd, CMD_I_DAT_L_WR, input_data_low[i]);
        VMM_WRITE(fd, CMD_I_DAT_H_WR, input_data_high[i]);
    }

    /* --------------------------------------------------------
     * Step 4: Send 1-cycle start pulse
     * Assert bit[0] high then immediately low.
     * The driver's edge detector converts this into a
     * single-cycle start_pulse for the VMM state machine.
     * -------------------------------------------------------- */
    std::cout << "Sending Start Pulse to Hardware...\n";
    VMM_WRITE(fd, CMD_CTRL_WR, 0x01);  /* assert start */
    VMM_WRITE(fd, CMD_CTRL_WR, 0x00);  /* deassert    */

    /* --------------------------------------------------------
     * Step 5: Poll finish bit (REG_CTRL bit[1])
     * -------------------------------------------------------- */
    std::cout << "Waiting for hardware to compute...\n";
    long status;
    do {
        status = VMM_READ(fd, CMD_CTRL_RD);
    } while (!(status & 0x02));

    /* clear control register for next run */
    VMM_WRITE(fd, CMD_CTRL_WR, 0x00);
    std::cout << "Hardware Finished!\n\n";

    /* --------------------------------------------------------
     * Step 6: Read results and verify against golden data
     * -------------------------------------------------------- */
    std::cout << "Verifying Results:\n";
    int passed = 1;

    for (int j = 0; j < n_val; j++) {
        VMM_WRITE(fd, CMD_O_ADDR_WR, j);
        long result = VMM_READ(fd, CMD_O_DAT_RD);

        /* sign-extend 12-bit result to 32-bit signed int
         * bit[11] is the sign bit; if set, fill upper 20 bits with 1s */
        int signed_res = (int)(result & 0xFFF);
        if (signed_res & 0x800)
            signed_res |= 0xFFFFF000;

        std::cout << "  Result [" << j << "]: " << signed_res
                  << "\t| Golden: " << golden_data[j];

        if (signed_res != golden_data[j]) {
            std::cout << "  <-- [MISMATCH]\n";
            passed = 0;
        } else {
            std::cout << "  <-- [CORRECT]\n";
        }
    }

    // ...

    close(fd);
    return 0;
}
```

## 4. Demo

``` text
alarm login: root
Last login: Sat Aug  8 22:29:31 on ttyPS0
[root@alarm ~]#
[root@alarm ~]# ls
fat
[root@alarm ~]# mount /dev/mmcblk0p1 fat/
[root@alarm ~]# ls -la fat/
total 8480
drwxr-xr-x 3 root root    4096 Jan  1  1970 .
drwxr-x--- 4 root root    4096 Aug  8 22:29 ..
drwxr-xr-x 4 root root    4096 May 23  2026 .Trash-1000
-rwxr-xr-x 1 root root 4673432 May 23  2026 BOOT.BIN
-rwxr-xr-x 1 root root 3957624 May 23  2026 image.ub
-rwxr-xr-x 1 root root   13176 May 23  2026 vmm
-rwxr-xr-x 1 root root    6617 May 23  2026 vmm.cpp
-rwxr-xr-x 1 root root    9276 May 23  2026 vmm.ko
[root@alarm ~]# ls /dev/
block             mtd0                ram15   tty17  tty4   tty62
char              mtd0ro              ram2    tty18  tty40  tty63
console           mtd1                ram3    tty19  tty41  tty7
cpu_dma_latency   mtd1ro              ram4    tty2   tty42  tty8
disk              mtd2                ram5    tty20  tty43  tty9
fd                mtd2ro              ram6    tty21  tty44  ttyPS0
full              mtd3                ram7    tty22  tty45  urandom
gpiochip0         mtd3ro              ram8    tty23  tty46  vcs
iio:device0       mtdblock0           ram9    tty24  tty47  vcs1
kmsg              mtdblock1           random  tty25  tty48  vcs2
log               mtdblock2           shm     tty26  tty49  vcs3
loop-control      mtdblock3           snd     tty27  tty5   vcs4
loop0             network_latency     stderr  tty28  tty50  vcs5
loop1             network_throughput  stdin   tty29  tty51  vcs6
loop2             null                stdout  tty3   tty52  vcsa
loop3             port                tty     tty30  tty53  vcsa1
loop4             ptmx                tty0    tty31  tty54  vcsa2
loop5             pts                 tty1    tty32  tty55  vcsa3
loop6             ram0                tty10   tty33  tty56  vcsa4
loop7             ram1                tty11   tty34  tty57  vcsa5
mem               ram10               tty12   tty35  tty58  vcsa6
memory_bandwidth  ram11               tty13   tty36  tty59  vga_arbiter
mmcblk0           ram12               tty14   tty37  tty6   watchdog
mmcblk0p1         ram13               tty15   tty38  tty60  watchdog0
mmcblk0p2         ram14               tty16   tty39  tty61  zero
[root@alarm ~]# insmod fat/vmm.ko
vmm: loading out-of-tree module taints kernel.
<1>Hello module world.
vmm-master 43c00000.HW4IP: Device Tree Probing
vmm-master 43c00000.HW4IP: vmm at 0x43c00000 mapped to 0xe0b10000
[root@alarm ~]# ls /dev/
block             mtd0ro              ram3    tty2   tty43  ttyPS0
char              mtd1                ram4    tty20  tty44  urandom
console           mtd1ro              ram5    tty21  tty45  vcs
cpu_dma_latency   mtd2                ram6    tty22  tty46  vcs1
disk              mtd2ro              ram7    tty23  tty47  vcs2
fd                mtd3                ram8    tty24  tty48  vcs3
full              mtd3ro              ram9    tty25  tty49  vcs4
gpiochip0         mtdblock0           random  tty26  tty5   vcs5
iio:device0       mtdblock1           shm     tty27  tty50  vcs6
kmsg              mtdblock2           snd     tty28  tty51  vcsa
log               mtdblock3           stderr  tty29  tty52  vcsa1
loop-control      network_latency     stdin   tty3   tty53  vcsa2
loop0             network_throughput  stdout  tty30  tty54  vcsa3
loop1             null                tty     tty31  tty55  vcsa4
loop2             port                tty0    tty32  tty56  vcsa5
loop3             ptmx                tty1    tty33  tty57  vcsa6
loop4             pts                 tty10   tty34  tty58  vga_arbiter
loop5             ram0                tty11   tty35  tty59  vmm-master
loop6             ram1                tty12   tty36  tty6   watchdog
loop7             ram10               tty13   tty37  tty60  watchdog0
mem               ram11               tty14   tty38  tty61  zero
memory_bandwidth  ram12               tty15   tty39  tty62
mmcblk0           ram13               tty16   tty4   tty63
mmcblk0p1         ram14               tty17   tty40  tty7
mmcblk0p2         ram15               tty18   tty41  tty8
mtd0              ram2                tty19   tty42  tty9
[root@alarm ~]# cd fat/
[root@alarm fat]# ./vmm

--- VMM Hardware Accelerator Verification ---

Detected Dimensvmm: DIM write = 0x1003
ions : M = 16, N = 3
Total SRAM Lines    : 4

Writing test datvmm: CTRL write = 0x1
a to Input SRAM...
Sending Start Pulse to Hardware...
vmm: CTRL write = 0x0
Waiting for hardware to compute...
vmm: CTRL write = 0x0
Hardware Finished!

Verifying Results:
  Result [0]: 3 | Golden: 3  <-- [CORRECT]
  Result [1]: 98        | Golden: 98  <-- [CORRECT]
  Result [2]: -9        | Golden: -9  <-- [CORRECT]



        ==================================
        ==   ALL TESTS PASSED! MEOW~    ==
        ==================================
                  /\___/\
                 ( o   o )
                 (  =^=  )
                 (        )
                 (         )
                 (          ))))))
```

## 5. Conclusion

The completed system demonstrates the full path from RTL to userspace: the `VMM` hardware runs on the PL, the kernel driver maps its registers into the Linux device model, and the application controls computation and verifies results through a standard file descriptor interface. Separating hardware access into a kernel driver rather than bare-metal register writes provides isolation, portability, and the ability to run the accelerator as an ordinary Linux process — the same model used in production FPGA-based systems. The primary lesson is that the driver's `VMM`-specific logic is minimal: most of the work is boilerplate char device infrastructure, and the actual hardware knowledge is concentrated entirely in the `ioctl` handler's seven register cases.
