# Lab 2.2 Calculator AXI-Lite Slave IP System

## 1. Steps

1. **Create and Edit Slave IP (Part 1.1)**
    * create an AXI4 peripheral in IP intergrator
    * add `Calculator.v` to source
    * edit AXI wrapper
    * re-package IP in IP wizard
2. **Create Hardware IP**
    * add ZYNQ-7000 PS, calculator IP to block design
    * run block, connection automation wizards
    * add ILA core
    * create HDL wrapper
    * generate bitstream
3. **Execute in SDK (Part 1.2)**
    * identify IP base address in `system.hdf`
    * modify `helloworld.c` to test our calculator slave IP
    * program to board and check execution result
4. **ILA Debug in Vivado (Part 1.3)**
    * setup trigger in ILA Debugger
    * launch hardware (system debugger) in SDK
    * check ILA capture result
5. **Exercise: Add a Second Slave IP in a Separate Address Space (Part 1.4)**
    * instantiate two calculator IP slaves
    * configure AXI interconnect so it accepts two slaves
    * identify the two IPs' base addresses in SDK `system.hdf`
    * program device, run firmware and check result

## 2. Slave IP and System Design

<img src="images/calculator_interface.png" alt="calucaltor interface" width="840" align="middle" />
▲ Calculator Circuit Interface

<img src="images/slave_block_diagram.png" alt="slave block diagram" width="840" align="middle" />
▲ System Block Diagram

<img src="images/vivado_block_design.png" alt="vivado block design" width="840" align="middle" />
▲ Vivado Block Design

## 3. SDK Application Program

``` C
volatile int *pointer = (int*)0x43c00000;

printf("Test the function of ADD\n");
// select signal
pointer[slv_reg0] = 0;
// operands
pointer[slv_reg1] = 100;
pointer[slv_reg2] = 200;

printf("data_in1 = %d\n", pointer[1]);
printf("data_in2 = %d\n", pointer[2]);
printf("The ADD result is %d\n", pointer[3]);
printf("--------------------------\n");

// test SUB and MUL functions
```

<img src="images/demo.png" alt="demo" width="480" align="middle" />
▲ SDK Execution

## 4. ILA debugger
<img src="images/ILA.png" alt="ILA" width="840" align="middle" />
▲ ILA Capture in Vivado

## 5. Exercise: Add a Second Slave IP in a Separate Address Space

``` C
// Cast base addresses to volatile pointers
volatile int *slave1 = (int*)SLAVE1_BASEADDR;
volatile int *slave2 = (int*)SLAVE2_BASEADDR;

// ==========================================
// Control Slave 1 (Lab2_IP_0)
// ==========================================
printf("=== Slave 1 ===\n");

// Write operands to Slave 1 once
slave1[slv_reg1] = 100;
slave1[slv_reg2] = 200;

printf("data_in1 = %d\n", slave1[slv_reg1]);
printf("data_in2 = %d\n", slave1[slv_reg2]);

// Test ADD
slave1[slv_reg0] = 0;
printf("The ADD result is %d\n", slave1[slv_reg3]);

// Test SUB
slave1[slv_reg0] = 1;
printf("The SUB result is %d\n", slave1[slv_reg3]);

// Test MUL
slave1[slv_reg0] = 2;
printf("The MUL result is %d\n\n", slave1[slv_reg3]);

// ==========================================
// Control Slave 2 (Lab2_IP_1)
// ==========================================
// ...
```

<img src="images/two_slaves_block_design.png" alt="two slaves block design" width="840" align="middle" />
▲ Two Slaves Block Design

<img src="images/two_slaves_demo.png" alt="two slaves demo" width="480" align="middle" />
▲ Two Slaves SDK Execution
