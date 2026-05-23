/*
 * vmm.c - Linux Kernel Driver for HW5 VMM AXI-Lite IP
 *
 * Adapted from Lab 3 adder driver template.
 * Implements a char device with ioctl interface to the
 * HW4IP AXI-Lite slave register map.
 *
 * Register Map (Base: 0x43c00000):
 *   0x00  REG_CTRL    - Write start bit [0] / Read finish bit [1]
 *   0x04  REG_DIM     - Write M[13:8] and N[5:0] dimensions
 *   0x08  REG_I_ADDR  - Write input SRAM address
 *   0x0C  REG_I_DAT_L - Write lower 32 bits of 64-bit input data
 *   0x10  REG_I_DAT_H - Write upper 32 bits; triggers HW SRAM write
 *   0x14  REG_O_ADDR  - Write output SRAM read address
 *   0x18  REG_O_DAT   - Read output SRAM result (12-bit)
 *
 * ioctl cmd convention (matches adder driver):
 *   Writes: pass (cmd_index + 64*1024) from userspace
 *   Reads:  pass cmd_index directly
 *
 *   cmd 0  -> REG_CTRL  write
 *   cmd 1  -> REG_DIM   write
 *   cmd 2  -> REG_I_ADDR write
 *   cmd 3  -> REG_I_DAT_L write
 *   cmd 4  -> REG_I_DAT_H write (triggers HW)
 *   cmd 5  -> REG_O_ADDR write
 *   cmd 6  -> REG_O_DAT  read
 *   cmd 7  -> REG_CTRL   read (poll finish bit)
 */

#include <linux/kernel.h>
#include <linux/init.h>
#include <linux/module.h>
#include <linux/slab.h>
#include <linux/io.h>
#include <linux/interrupt.h>
#include <linux/cdev.h>
#include <linux/fs.h>

#include <linux/of_address.h>
#include <linux/of_device.h>
#include <linux/of_platform.h>

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Kaiden");
MODULE_DESCRIPTION("VMM AXI-Lite Driver for HW5");

#define DRIVER_NAME "vmm-master"

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
    int rc;
    static struct class *local_class_p = NULL;

    /* allocate a char device number from the kernel */
    rc = alloc_chrdev_region(&lp->dev_node, 0, 1, DRIVER_NAME);
    if (rc) {
        dev_err(lp->plat_dev_p, "unable to get a char device number\n");
        return rc;
    }

    /* initialise the cdev structure and link it to file_operations */
    cdev_init(&lp->cdev, &dm_fops);
    lp->cdev.owner = THIS_MODULE;

    rc = cdev_add(&lp->cdev, lp->dev_node, 1);
    if (rc) {
        dev_err(lp->plat_dev_p, "unable to add char device\n");
        goto init_error1;
    }

    /* create the class (shared across multiple instances) */
    if (!local_class_p) {
        local_class_p = class_create(THIS_MODULE, DRIVER_NAME);
        if (IS_ERR(local_class_p)) {
            dev_err(lp->plat_dev_p, "unable to create class\n");
            rc = -1;
            goto init_error2;
        }
    }
    lp->class_p = local_class_p;

    /* create /dev/vmm-master node */
    lp->char_dev_p = device_create(lp->class_p, NULL,
                                   lp->dev_node, NULL, DRIVER_NAME);
    if (IS_ERR(lp->char_dev_p)) {
        dev_err(lp->plat_dev_p, "unable to create the char device\n");
        goto init_error3;
    }

    return 0;

init_error3:
    class_destroy(lp->class_p);
init_error2:
    cdev_del(&lp->cdev);
init_error1:
    unregister_chrdev_region(lp->dev_node, 1);
    return rc;
}

static void cdevice_exit(struct vmm_local *lp)
{
    if (lp->char_dev_p) {
        device_destroy(lp->class_p, lp->dev_node);
        class_destroy(lp->class_p);
        cdev_del(&lp->cdev);
        unregister_chrdev_region(lp->dev_node, 1);
    }
}

/* ------------------------------------------------------------------
 * Platform Driver: Probe / Remove
 * ------------------------------------------------------------------ */

static int vmm_probe(struct platform_device *pdev)
{
    struct resource *r_mem;
    struct device *dev = &pdev->dev;
    struct vmm_local *lp = NULL;
    int rc = 0;

    dev_info(dev, "Device Tree Probing\n");

    /* get memory-mapped IO resource from device tree */
    r_mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
    if (!r_mem) {
        dev_err(dev, "invalid address\n");
        return -ENODEV;
    }

    lp = (struct vmm_local *) kmalloc(sizeof(struct vmm_local), GFP_KERNEL);
    if (!lp) {
        dev_err(dev, "could not allocate vmm device\n");
        return -ENOMEM;
    }
    dev_set_drvdata(dev, lp);
    lp->mem_start  = r_mem->start;
    lp->mem_end    = r_mem->end;
    lp->plat_dev_p = dev;

    /* reserve the physical memory region */
    if (!request_mem_region(lp->mem_start,
                lp->mem_end - lp->mem_start + 1,
                DRIVER_NAME)) {
        dev_err(dev, "couldn't lock memory region at %p\n",
            (void *)lp->mem_start);
        rc = -EBUSY;
        goto error1;
    }

    /* map physical registers into kernel virtual address space */
    lp->base_addr = ioremap(lp->mem_start, lp->mem_end - lp->mem_start + 1);
    if (!lp->base_addr) {
        dev_err(dev, "could not allocate iomem\n");
        rc = -EIO;
        goto error2;
    }

    dev_info(dev, "vmm at 0x%08x mapped to 0x%08x\n",
        (unsigned int __force)lp->mem_start,
        (unsigned int __force)lp->base_addr);

    /* register char device so userspace can open /dev/vmm-master */
    rc = cdevice_init(lp);
    if (rc) {
        dev_err(dev, "char device init failed\n");
        return -1;
    }

    return 0;

error2:
    release_mem_region(lp->mem_start, lp->mem_end - lp->mem_start + 1);
error1:
    kfree(lp);
    dev_set_drvdata(dev, NULL);
    return rc;
}

static int vmm_remove(struct platform_device *pdev)
{
    struct device *dev = &pdev->dev;
    struct vmm_local *lp = dev_get_drvdata(dev);
    cdevice_exit(lp);
    iounmap(lp->base_addr);
    release_mem_region(lp->mem_start, lp->mem_end - lp->mem_start + 1);
    kfree(lp);
    dev_set_drvdata(dev, NULL);
    return 0;
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
