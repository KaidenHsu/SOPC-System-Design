/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"

#define slv_reg0 0
#define slv_reg1 1
#define slv_reg2 2
#define slv_reg3 3
#define slv_reg4 4


int main()
{
    init_platform();

    print("Hello World\n\r");

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



    printf("Test the function of SUB\n");
    // select signal
    pointer[slv_reg0] = 1;
    // operands
    pointer[slv_reg1] = 100;
    pointer[slv_reg2] = 200;

    printf("data_in1 = %d\n", pointer[1]);
    printf("data_in2 = %d\n", pointer[2]);
    printf("The SUB result is %d\n", pointer[3]);
    printf("--------------------------\n");



    printf("Test the function of MUL\n");
    // select signal
    pointer[slv_reg0] = 2;
    // operands
    pointer[slv_reg1] = 100;
    pointer[slv_reg2] = 200;

    printf("data_in1 = %d\n", pointer[1]);
    printf("data_in2 = %d\n", pointer[2]);
    printf("The MUL result is %d\n", pointer[3]);
    printf("--------------------------\n");



    cleanup_platform();
    return 0;
}
