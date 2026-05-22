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
#include <stdlib.h>
#include <math.h>
#include "platform.h"
#include "xil_printf.h"
#include "run.h"
#include "ff.h"

FATFS fatfs;


int main()
{
    FRESULT res;
    Transformer transformer;
    Tokenizer tokenizer;
    int ret;

    char prompt[] = "One";
    int steps = 256;

    init_platform();

    printf("======== GENERATE TEST START ========\r\n");

    //** f_mount(arg_1, arg_2, arg_3)
    //** arg_2: mount the first device
    //** arg_3: 0 means delay mount (until use can check whether mount is successful)
    //          1 means immediate mount (can check whether mount is successful immediately)

    res = f_mount(&fatfs, "0:/", 1);
    printf("f_mount res = %d\r\n", res);
    if (res != FR_OK) {
        cleanup_platform();
        return 0;
    }

    ret = build_transformer(&transformer, "str15M.bin");
    printf("build_transformer ret = %d\r\n", ret);
    if (ret != 0) {
        cleanup_platform();
        return 0;
    }

    ret = build_tokenizer(&tokenizer, "tok.bin", transformer.config.vocab_size);
    printf("build_tokenizer ret = %d\r\n", ret);
    if (ret != 0) {
        free_transformer(&transformer);
        cleanup_platform();
        return 0;
    }

    printf("===== GENERATION OUTPUT =====\r\n");

    printf("Prompt: %s\r\n", prompt);

    generate(&transformer, &tokenizer, prompt, steps);
    printf("===== GENERATION DONE =====\r\n");

    free_tokenizer(&tokenizer);
    free_transformer(&transformer);

    cleanup_platform();
    return 0;
}
