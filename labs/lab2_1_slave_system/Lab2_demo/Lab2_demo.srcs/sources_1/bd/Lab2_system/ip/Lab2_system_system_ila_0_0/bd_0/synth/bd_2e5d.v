//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_2e5d.bd
//Design : bd_2e5d
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_2e5d,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_2e5d,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=Global}" *) (* HW_HANDOFF = "Lab2_system_system_ila_0_0.hwdef" *) 
module bd_2e5d
   (clk,
    probe0,
    probe1,
    probe2,
    probe3,
    probe4);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN Lab2_system_processing_system7_0_0_FCLK_CLK0, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input clk;
  input [0:0]probe0;
  input [15:0]probe1;
  input [15:0]probe2;
  input [2:0]probe3;
  input [31:0]probe4;

  wire clk_1;
  wire [0:0]probe0_1;
  wire [15:0]probe1_1;
  wire [15:0]probe2_1;
  wire [2:0]probe3_1;
  wire [31:0]probe4_1;

  assign clk_1 = clk;
  assign probe0_1 = probe0[0];
  assign probe1_1 = probe1[15:0];
  assign probe2_1 = probe2[15:0];
  assign probe3_1 = probe3[2:0];
  assign probe4_1 = probe4[31:0];
  bd_2e5d_ila_lib_0 ila_lib
       (.clk(clk_1),
        .probe0(probe0_1),
        .probe1(probe1_1),
        .probe2(probe2_1),
        .probe3(probe3_1),
        .probe4(probe4_1));
endmodule
