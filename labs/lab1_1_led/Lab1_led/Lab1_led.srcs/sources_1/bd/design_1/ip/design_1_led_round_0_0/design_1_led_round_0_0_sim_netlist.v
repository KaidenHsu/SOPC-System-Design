// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed May  6 17:35:54 2026
// Host        : kaiden running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/ryanh/fpga/sopc/Lab1_led/Lab1_led.srcs/sources_1/bd/design_1/ip/design_1_led_round_0_0/design_1_led_round_0_0_sim_netlist.v
// Design      : design_1_led_round_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_led_round_0_0,led_round,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "led_round,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_led_round_0_0
   (clk,
    rst,
    Led);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_clk_0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  output [7:0]Led;

  wire [7:0]Led;
  wire clk;
  wire rst;

  design_1_led_round_0_0_led_round inst
       (.Led(Led),
        .clk(clk),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "led_round" *) 
module design_1_led_round_0_0_led_round
   (Led,
    clk,
    rst);
  output [7:0]Led;
  input clk;
  input rst;

  wire [7:0]Led;
  wire clk;
  wire clk_500ms;
  wire clk_500ms_i_1_n_0;
  wire [31:1]data0;
  wire [31:0]delay_cnt;
  wire delay_cnt0_carry__0_n_0;
  wire delay_cnt0_carry__0_n_1;
  wire delay_cnt0_carry__0_n_2;
  wire delay_cnt0_carry__0_n_3;
  wire delay_cnt0_carry__1_n_0;
  wire delay_cnt0_carry__1_n_1;
  wire delay_cnt0_carry__1_n_2;
  wire delay_cnt0_carry__1_n_3;
  wire delay_cnt0_carry__2_n_0;
  wire delay_cnt0_carry__2_n_1;
  wire delay_cnt0_carry__2_n_2;
  wire delay_cnt0_carry__2_n_3;
  wire delay_cnt0_carry__3_n_0;
  wire delay_cnt0_carry__3_n_1;
  wire delay_cnt0_carry__3_n_2;
  wire delay_cnt0_carry__3_n_3;
  wire delay_cnt0_carry__4_n_0;
  wire delay_cnt0_carry__4_n_1;
  wire delay_cnt0_carry__4_n_2;
  wire delay_cnt0_carry__4_n_3;
  wire delay_cnt0_carry__5_n_0;
  wire delay_cnt0_carry__5_n_1;
  wire delay_cnt0_carry__5_n_2;
  wire delay_cnt0_carry__5_n_3;
  wire delay_cnt0_carry__6_n_2;
  wire delay_cnt0_carry__6_n_3;
  wire delay_cnt0_carry_n_0;
  wire delay_cnt0_carry_n_1;
  wire delay_cnt0_carry_n_2;
  wire delay_cnt0_carry_n_3;
  wire \delay_cnt[31]_i_2_n_0 ;
  wire \delay_cnt[31]_i_3_n_0 ;
  wire \delay_cnt[31]_i_4_n_0 ;
  wire \delay_cnt[31]_i_5_n_0 ;
  wire \delay_cnt[31]_i_6_n_0 ;
  wire \delay_cnt[31]_i_7_n_0 ;
  wire \delay_cnt[31]_i_8_n_0 ;
  wire \delay_cnt[31]_i_9_n_0 ;
  wire [31:0]delay_cnt_0;
  wire rst;
  wire [3:2]NLW_delay_cnt0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_delay_cnt0_carry__6_O_UNCONNECTED;

  FDPE \Led_r_reg[0] 
       (.C(clk_500ms),
        .CE(1'b1),
        .D(Led[1]),
        .PRE(rst),
        .Q(Led[0]));
  FDCE \Led_r_reg[1] 
       (.C(clk_500ms),
        .CE(1'b1),
        .CLR(rst),
        .D(Led[2]),
        .Q(Led[1]));
  FDCE \Led_r_reg[2] 
       (.C(clk_500ms),
        .CE(1'b1),
        .CLR(rst),
        .D(Led[3]),
        .Q(Led[2]));
  FDCE \Led_r_reg[3] 
       (.C(clk_500ms),
        .CE(1'b1),
        .CLR(rst),
        .D(Led[4]),
        .Q(Led[3]));
  FDCE \Led_r_reg[4] 
       (.C(clk_500ms),
        .CE(1'b1),
        .CLR(rst),
        .D(Led[5]),
        .Q(Led[4]));
  FDCE \Led_r_reg[5] 
       (.C(clk_500ms),
        .CE(1'b1),
        .CLR(rst),
        .D(Led[6]),
        .Q(Led[5]));
  FDCE \Led_r_reg[6] 
       (.C(clk_500ms),
        .CE(1'b1),
        .CLR(rst),
        .D(Led[7]),
        .Q(Led[6]));
  FDCE \Led_r_reg[7] 
       (.C(clk_500ms),
        .CE(1'b1),
        .CLR(rst),
        .D(Led[0]),
        .Q(Led[7]));
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    clk_500ms_i_1
       (.I0(\delay_cnt[31]_i_2_n_0 ),
        .I1(\delay_cnt[31]_i_3_n_0 ),
        .I2(\delay_cnt[31]_i_4_n_0 ),
        .I3(\delay_cnt[31]_i_5_n_0 ),
        .I4(clk_500ms),
        .O(clk_500ms_i_1_n_0));
  FDCE clk_500ms_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(clk_500ms_i_1_n_0),
        .Q(clk_500ms));
  CARRY4 delay_cnt0_carry
       (.CI(1'b0),
        .CO({delay_cnt0_carry_n_0,delay_cnt0_carry_n_1,delay_cnt0_carry_n_2,delay_cnt0_carry_n_3}),
        .CYINIT(delay_cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(delay_cnt[4:1]));
  CARRY4 delay_cnt0_carry__0
       (.CI(delay_cnt0_carry_n_0),
        .CO({delay_cnt0_carry__0_n_0,delay_cnt0_carry__0_n_1,delay_cnt0_carry__0_n_2,delay_cnt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(delay_cnt[8:5]));
  CARRY4 delay_cnt0_carry__1
       (.CI(delay_cnt0_carry__0_n_0),
        .CO({delay_cnt0_carry__1_n_0,delay_cnt0_carry__1_n_1,delay_cnt0_carry__1_n_2,delay_cnt0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(delay_cnt[12:9]));
  CARRY4 delay_cnt0_carry__2
       (.CI(delay_cnt0_carry__1_n_0),
        .CO({delay_cnt0_carry__2_n_0,delay_cnt0_carry__2_n_1,delay_cnt0_carry__2_n_2,delay_cnt0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(delay_cnt[16:13]));
  CARRY4 delay_cnt0_carry__3
       (.CI(delay_cnt0_carry__2_n_0),
        .CO({delay_cnt0_carry__3_n_0,delay_cnt0_carry__3_n_1,delay_cnt0_carry__3_n_2,delay_cnt0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(delay_cnt[20:17]));
  CARRY4 delay_cnt0_carry__4
       (.CI(delay_cnt0_carry__3_n_0),
        .CO({delay_cnt0_carry__4_n_0,delay_cnt0_carry__4_n_1,delay_cnt0_carry__4_n_2,delay_cnt0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(delay_cnt[24:21]));
  CARRY4 delay_cnt0_carry__5
       (.CI(delay_cnt0_carry__4_n_0),
        .CO({delay_cnt0_carry__5_n_0,delay_cnt0_carry__5_n_1,delay_cnt0_carry__5_n_2,delay_cnt0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S(delay_cnt[28:25]));
  CARRY4 delay_cnt0_carry__6
       (.CI(delay_cnt0_carry__5_n_0),
        .CO({NLW_delay_cnt0_carry__6_CO_UNCONNECTED[3:2],delay_cnt0_carry__6_n_2,delay_cnt0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_delay_cnt0_carry__6_O_UNCONNECTED[3],data0[31:29]}),
        .S({1'b0,delay_cnt[31:29]}));
  LUT1 #(
    .INIT(2'h1)) 
    \delay_cnt[0]_i_1 
       (.I0(delay_cnt[0]),
        .O(delay_cnt_0[0]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[10]_i_1 
       (.I0(\delay_cnt[31]_i_2_n_0 ),
        .I1(\delay_cnt[31]_i_3_n_0 ),
        .I2(\delay_cnt[31]_i_4_n_0 ),
        .I3(\delay_cnt[31]_i_5_n_0 ),
        .I4(data0[10]),
        .O(delay_cnt_0[10]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[11]_i_1 
       (.I0(\delay_cnt[31]_i_2_n_0 ),
        .I1(\delay_cnt[31]_i_3_n_0 ),
        .I2(\delay_cnt[31]_i_4_n_0 ),
        .I3(\delay_cnt[31]_i_5_n_0 ),
        .I4(data0[11]),
        .O(delay_cnt_0[11]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[12]_i_1 
       (.I0(\delay_cnt[31]_i_2_n_0 ),
        .I1(\delay_cnt[31]_i_3_n_0 ),
        .I2(\delay_cnt[31]_i_4_n_0 ),
        .I3(\delay_cnt[31]_i_5_n_0 ),
        .I4(data0[12]),
        .O(delay_cnt_0[12]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[13]_i_1 
       (.I0(\delay_cnt[31]_i_2_n_0 ),
        .I1(\delay_cnt[31]_i_3_n_0 ),
        .I2(\delay_cnt[31]_i_4_n_0 ),
        .I3(\delay_cnt[31]_i_5_n_0 ),
        .I4(data0[13]),
        .O(delay_cnt_0[13]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[14]_i_1 
       (.I0(\delay_cnt[31]_i_2_n_0 ),
        .I1(\delay_cnt[31]_i_3_n_0 ),
        .I2(\delay_cnt[31]_i_4_n_0 ),
        .I3(\delay_cnt[31]_i_5_n_0 ),
        .I4(data0[14]),
        .O(delay_cnt_0[14]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[15]_i_1 
       (.I0(\delay_cnt[31]_i_2_n_0 ),
        .I1(\delay_cnt[31]_i_3_n_0 ),
        .I2(\delay_cnt[31]_i_4_n_0 ),
        .I3(\delay_cnt[31]_i_5_n_0 ),
        .I4(data0[15]),
        .O(delay_cnt_0[15]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[16]_i_1 
       (.I0(\delay_cnt[31]_i_2_n_0 ),
        .I1(\delay_cnt[31]_i_3_n_0 ),
        .I2(\delay_cnt[31]_i_4_n_0 ),
        .I3(\delay_cnt[31]_i_5_n_0 ),
        .I4(data0[16]),
        .O(delay_cnt_0[16]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[17]_i_1 
       (.I0(\delay_cnt[31]_i_2_n_0 ),
        .I1(\delay_cnt[31]_i_3_n_0 ),
        .I2(\delay_cnt[31]_i_4_n_0 ),
        .I3(\delay_cnt[31]_i_5_n_0 ),
        .I4(data0[17]),
        .O(delay_cnt_0[17]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[18]_i_1 
       (.I0(\delay_cnt[31]_i_2_n_0 ),
        .I1(\delay_cnt[31]_i_3_n_0 ),
        .I2(\delay_cnt[31]_i_4_n_0 ),
        .I3(\delay_cnt[31]_i_5_n_0 ),
        .I4(data0[18]),
        .O(delay_cnt_0[18]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[19]_i_1 
       (.I0(\delay_cnt[31]_i_2_n_0 ),
        .I1(\delay_cnt[31]_i_3_n_0 ),
        .I2(\delay_cnt[31]_i_4_n_0 ),
        .I3(\delay_cnt[31]_i_5_n_0 ),
        .I4(data0[19]),
        .O(delay_cnt_0[19]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[1]_i_1 
       (.I0(\delay_cnt[31]_i_2_n_0 ),
        .I1(\delay_cnt[31]_i_3_n_0 ),
        .I2(\delay_cnt[31]_i_4_n_0 ),
        .I3(\delay_cnt[31]_i_5_n_0 ),
        .I4(data0[1]),
        .O(delay_cnt_0[1]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[20]_i_1 
       (.I0(\delay_cnt[31]_i_2_n_0 ),
        .I1(\delay_cnt[31]_i_3_n_0 ),
        .I2(\delay_cnt[31]_i_4_n_0 ),
        .I3(\delay_cnt[31]_i_5_n_0 ),
        .I4(data0[20]),
        .O(delay_cnt_0[20]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[21]_i_1 
       (.I0(\delay_cnt[31]_i_2_n_0 ),
        .I1(\delay_cnt[31]_i_3_n_0 ),
        .I2(\delay_cnt[31]_i_4_n_0 ),
        .I3(\delay_cnt[31]_i_5_n_0 ),
        .I4(data0[21]),
        .O(delay_cnt_0[21]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[22]_i_1 
       (.I0(\delay_cnt[31]_i_2_n_0 ),
        .I1(\delay_cnt[31]_i_3_n_0 ),
        .I2(\delay_cnt[31]_i_4_n_0 ),
        .I3(\delay_cnt[31]_i_5_n_0 ),
        .I4(data0[22]),
        .O(delay_cnt_0[22]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[23]_i_1 
       (.I0(\delay_cnt[31]_i_2_n_0 ),
        .I1(\delay_cnt[31]_i_3_n_0 ),
        .I2(\delay_cnt[31]_i_4_n_0 ),
        .I3(\delay_cnt[31]_i_5_n_0 ),
        .I4(data0[23]),
        .O(delay_cnt_0[23]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[24]_i_1 
       (.I0(\delay_cnt[31]_i_2_n_0 ),
        .I1(\delay_cnt[31]_i_3_n_0 ),
        .I2(\delay_cnt[31]_i_4_n_0 ),
        .I3(\delay_cnt[31]_i_5_n_0 ),
        .I4(data0[24]),
        .O(delay_cnt_0[24]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[25]_i_1 
       (.I0(\delay_cnt[31]_i_2_n_0 ),
        .I1(\delay_cnt[31]_i_3_n_0 ),
        .I2(\delay_cnt[31]_i_4_n_0 ),
        .I3(\delay_cnt[31]_i_5_n_0 ),
        .I4(data0[25]),
        .O(delay_cnt_0[25]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[26]_i_1 
       (.I0(\delay_cnt[31]_i_2_n_0 ),
        .I1(\delay_cnt[31]_i_3_n_0 ),
        .I2(\delay_cnt[31]_i_4_n_0 ),
        .I3(\delay_cnt[31]_i_5_n_0 ),
        .I4(data0[26]),
        .O(delay_cnt_0[26]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[27]_i_1 
       (.I0(\delay_cnt[31]_i_2_n_0 ),
        .I1(\delay_cnt[31]_i_3_n_0 ),
        .I2(\delay_cnt[31]_i_4_n_0 ),
        .I3(\delay_cnt[31]_i_5_n_0 ),
        .I4(data0[27]),
        .O(delay_cnt_0[27]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[28]_i_1 
       (.I0(\delay_cnt[31]_i_2_n_0 ),
        .I1(\delay_cnt[31]_i_3_n_0 ),
        .I2(\delay_cnt[31]_i_4_n_0 ),
        .I3(\delay_cnt[31]_i_5_n_0 ),
        .I4(data0[28]),
        .O(delay_cnt_0[28]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[29]_i_1 
       (.I0(\delay_cnt[31]_i_2_n_0 ),
        .I1(\delay_cnt[31]_i_3_n_0 ),
        .I2(\delay_cnt[31]_i_4_n_0 ),
        .I3(\delay_cnt[31]_i_5_n_0 ),
        .I4(data0[29]),
        .O(delay_cnt_0[29]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[2]_i_1 
       (.I0(\delay_cnt[31]_i_2_n_0 ),
        .I1(\delay_cnt[31]_i_3_n_0 ),
        .I2(\delay_cnt[31]_i_4_n_0 ),
        .I3(\delay_cnt[31]_i_5_n_0 ),
        .I4(data0[2]),
        .O(delay_cnt_0[2]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[30]_i_1 
       (.I0(\delay_cnt[31]_i_2_n_0 ),
        .I1(\delay_cnt[31]_i_3_n_0 ),
        .I2(\delay_cnt[31]_i_4_n_0 ),
        .I3(\delay_cnt[31]_i_5_n_0 ),
        .I4(data0[30]),
        .O(delay_cnt_0[30]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[31]_i_1 
       (.I0(\delay_cnt[31]_i_2_n_0 ),
        .I1(\delay_cnt[31]_i_3_n_0 ),
        .I2(\delay_cnt[31]_i_4_n_0 ),
        .I3(\delay_cnt[31]_i_5_n_0 ),
        .I4(data0[31]),
        .O(delay_cnt_0[31]));
  LUT5 #(
    .INIT(32'hFFFFF7FF)) 
    \delay_cnt[31]_i_2 
       (.I0(delay_cnt[18]),
        .I1(delay_cnt[19]),
        .I2(delay_cnt[17]),
        .I3(delay_cnt[16]),
        .I4(\delay_cnt[31]_i_6_n_0 ),
        .O(\delay_cnt[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \delay_cnt[31]_i_3 
       (.I0(delay_cnt[26]),
        .I1(delay_cnt[27]),
        .I2(delay_cnt[25]),
        .I3(delay_cnt[24]),
        .I4(\delay_cnt[31]_i_7_n_0 ),
        .O(\delay_cnt[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \delay_cnt[31]_i_4 
       (.I0(delay_cnt[2]),
        .I1(delay_cnt[3]),
        .I2(delay_cnt[0]),
        .I3(delay_cnt[1]),
        .I4(\delay_cnt[31]_i_8_n_0 ),
        .O(\delay_cnt[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \delay_cnt[31]_i_5 
       (.I0(delay_cnt[10]),
        .I1(delay_cnt[11]),
        .I2(delay_cnt[8]),
        .I3(delay_cnt[9]),
        .I4(\delay_cnt[31]_i_9_n_0 ),
        .O(\delay_cnt[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \delay_cnt[31]_i_6 
       (.I0(delay_cnt[21]),
        .I1(delay_cnt[20]),
        .I2(delay_cnt[22]),
        .I3(delay_cnt[23]),
        .O(\delay_cnt[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \delay_cnt[31]_i_7 
       (.I0(delay_cnt[29]),
        .I1(delay_cnt[28]),
        .I2(delay_cnt[31]),
        .I3(delay_cnt[30]),
        .O(\delay_cnt[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \delay_cnt[31]_i_8 
       (.I0(delay_cnt[5]),
        .I1(delay_cnt[4]),
        .I2(delay_cnt[7]),
        .I3(delay_cnt[6]),
        .O(\delay_cnt[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \delay_cnt[31]_i_9 
       (.I0(delay_cnt[13]),
        .I1(delay_cnt[12]),
        .I2(delay_cnt[14]),
        .I3(delay_cnt[15]),
        .O(\delay_cnt[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[3]_i_1 
       (.I0(\delay_cnt[31]_i_2_n_0 ),
        .I1(\delay_cnt[31]_i_3_n_0 ),
        .I2(\delay_cnt[31]_i_4_n_0 ),
        .I3(\delay_cnt[31]_i_5_n_0 ),
        .I4(data0[3]),
        .O(delay_cnt_0[3]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[4]_i_1 
       (.I0(\delay_cnt[31]_i_2_n_0 ),
        .I1(\delay_cnt[31]_i_3_n_0 ),
        .I2(\delay_cnt[31]_i_4_n_0 ),
        .I3(\delay_cnt[31]_i_5_n_0 ),
        .I4(data0[4]),
        .O(delay_cnt_0[4]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[5]_i_1 
       (.I0(\delay_cnt[31]_i_2_n_0 ),
        .I1(\delay_cnt[31]_i_3_n_0 ),
        .I2(\delay_cnt[31]_i_4_n_0 ),
        .I3(\delay_cnt[31]_i_5_n_0 ),
        .I4(data0[5]),
        .O(delay_cnt_0[5]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[6]_i_1 
       (.I0(\delay_cnt[31]_i_2_n_0 ),
        .I1(\delay_cnt[31]_i_3_n_0 ),
        .I2(\delay_cnt[31]_i_4_n_0 ),
        .I3(\delay_cnt[31]_i_5_n_0 ),
        .I4(data0[6]),
        .O(delay_cnt_0[6]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[7]_i_1 
       (.I0(\delay_cnt[31]_i_2_n_0 ),
        .I1(\delay_cnt[31]_i_3_n_0 ),
        .I2(\delay_cnt[31]_i_4_n_0 ),
        .I3(\delay_cnt[31]_i_5_n_0 ),
        .I4(data0[7]),
        .O(delay_cnt_0[7]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[8]_i_1 
       (.I0(\delay_cnt[31]_i_2_n_0 ),
        .I1(\delay_cnt[31]_i_3_n_0 ),
        .I2(\delay_cnt[31]_i_4_n_0 ),
        .I3(\delay_cnt[31]_i_5_n_0 ),
        .I4(data0[8]),
        .O(delay_cnt_0[8]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[9]_i_1 
       (.I0(\delay_cnt[31]_i_2_n_0 ),
        .I1(\delay_cnt[31]_i_3_n_0 ),
        .I2(\delay_cnt[31]_i_4_n_0 ),
        .I3(\delay_cnt[31]_i_5_n_0 ),
        .I4(data0[9]),
        .O(delay_cnt_0[9]));
  FDCE \delay_cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(delay_cnt_0[0]),
        .Q(delay_cnt[0]));
  FDCE \delay_cnt_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(delay_cnt_0[10]),
        .Q(delay_cnt[10]));
  FDCE \delay_cnt_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(delay_cnt_0[11]),
        .Q(delay_cnt[11]));
  FDCE \delay_cnt_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(delay_cnt_0[12]),
        .Q(delay_cnt[12]));
  FDCE \delay_cnt_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(delay_cnt_0[13]),
        .Q(delay_cnt[13]));
  FDCE \delay_cnt_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(delay_cnt_0[14]),
        .Q(delay_cnt[14]));
  FDCE \delay_cnt_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(delay_cnt_0[15]),
        .Q(delay_cnt[15]));
  FDCE \delay_cnt_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(delay_cnt_0[16]),
        .Q(delay_cnt[16]));
  FDCE \delay_cnt_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(delay_cnt_0[17]),
        .Q(delay_cnt[17]));
  FDCE \delay_cnt_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(delay_cnt_0[18]),
        .Q(delay_cnt[18]));
  FDCE \delay_cnt_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(delay_cnt_0[19]),
        .Q(delay_cnt[19]));
  FDCE \delay_cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(delay_cnt_0[1]),
        .Q(delay_cnt[1]));
  FDCE \delay_cnt_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(delay_cnt_0[20]),
        .Q(delay_cnt[20]));
  FDCE \delay_cnt_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(delay_cnt_0[21]),
        .Q(delay_cnt[21]));
  FDCE \delay_cnt_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(delay_cnt_0[22]),
        .Q(delay_cnt[22]));
  FDCE \delay_cnt_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(delay_cnt_0[23]),
        .Q(delay_cnt[23]));
  FDCE \delay_cnt_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(delay_cnt_0[24]),
        .Q(delay_cnt[24]));
  FDCE \delay_cnt_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(delay_cnt_0[25]),
        .Q(delay_cnt[25]));
  FDCE \delay_cnt_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(delay_cnt_0[26]),
        .Q(delay_cnt[26]));
  FDCE \delay_cnt_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(delay_cnt_0[27]),
        .Q(delay_cnt[27]));
  FDCE \delay_cnt_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(delay_cnt_0[28]),
        .Q(delay_cnt[28]));
  FDCE \delay_cnt_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(delay_cnt_0[29]),
        .Q(delay_cnt[29]));
  FDCE \delay_cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(delay_cnt_0[2]),
        .Q(delay_cnt[2]));
  FDCE \delay_cnt_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(delay_cnt_0[30]),
        .Q(delay_cnt[30]));
  FDCE \delay_cnt_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(delay_cnt_0[31]),
        .Q(delay_cnt[31]));
  FDCE \delay_cnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(delay_cnt_0[3]),
        .Q(delay_cnt[3]));
  FDCE \delay_cnt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(delay_cnt_0[4]),
        .Q(delay_cnt[4]));
  FDCE \delay_cnt_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(delay_cnt_0[5]),
        .Q(delay_cnt[5]));
  FDCE \delay_cnt_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(delay_cnt_0[6]),
        .Q(delay_cnt[6]));
  FDCE \delay_cnt_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(delay_cnt_0[7]),
        .Q(delay_cnt[7]));
  FDCE \delay_cnt_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(delay_cnt_0[8]),
        .Q(delay_cnt[8]));
  FDCE \delay_cnt_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(delay_cnt_0[9]),
        .Q(delay_cnt[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
