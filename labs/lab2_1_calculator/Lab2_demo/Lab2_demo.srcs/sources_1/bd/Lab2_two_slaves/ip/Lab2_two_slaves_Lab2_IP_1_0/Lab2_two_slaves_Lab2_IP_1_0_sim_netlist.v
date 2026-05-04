// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon May  4 02:07:23 2026
// Host        : kaiden running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top Lab2_two_slaves_Lab2_IP_1_0 -prefix
//               Lab2_two_slaves_Lab2_IP_1_0_ Lab2_system_Lab2_IP_0_0_sim_netlist.v
// Design      : Lab2_system_Lab2_IP_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Lab2_two_slaves_Lab2_IP_1_0_Calculator
   (D,
    cal_result,
    SR,
    S,
    \slv_reg1_reg[7] ,
    \slv_reg1_reg[11] ,
    \slv_reg1_reg[15] ,
    Q,
    \axi_rdata_reg[31] ,
    cal_result01_in,
    \axi_rdata_reg[31]_0 ,
    sel0,
    \axi_rdata_reg[0] ,
    \axi_rdata_reg[1] ,
    \axi_rdata_reg[2] ,
    \axi_rdata_reg[3] ,
    \axi_rdata_reg[4] ,
    \axi_rdata_reg[5] ,
    \axi_rdata_reg[6] ,
    \axi_rdata_reg[7] ,
    \axi_rdata_reg[8] ,
    \axi_rdata_reg[9] ,
    \axi_rdata_reg[10] ,
    \axi_rdata_reg[11] ,
    \axi_rdata_reg[12] ,
    \axi_rdata_reg[13] ,
    \axi_rdata_reg[14] ,
    \axi_rdata_reg[15] ,
    \axi_rdata_reg[16] ,
    \axi_rdata_reg[17] ,
    \axi_rdata_reg[18] ,
    \axi_rdata_reg[19] ,
    \axi_rdata_reg[20] ,
    \axi_rdata_reg[21] ,
    \axi_rdata_reg[22] ,
    \axi_rdata_reg[23] ,
    \axi_rdata_reg[24] ,
    \axi_rdata_reg[25] ,
    \axi_rdata_reg[26] ,
    \axi_rdata_reg[27] ,
    \axi_rdata_reg[28] ,
    \axi_rdata_reg[29] ,
    \axi_rdata_reg[30] ,
    \axi_rdata_reg[31]_1 ,
    s00_axi_aresetn,
    s00_axi_aclk);
  output [31:0]D;
  output [31:0]cal_result;
  output [0:0]SR;
  output [3:0]S;
  output [3:0]\slv_reg1_reg[7] ;
  output [3:0]\slv_reg1_reg[11] ;
  output [3:0]\slv_reg1_reg[15] ;
  input [31:0]Q;
  input [31:0]\axi_rdata_reg[31] ;
  input [16:0]cal_result01_in;
  input [31:0]\axi_rdata_reg[31]_0 ;
  input [2:0]sel0;
  input \axi_rdata_reg[0] ;
  input \axi_rdata_reg[1] ;
  input \axi_rdata_reg[2] ;
  input \axi_rdata_reg[3] ;
  input \axi_rdata_reg[4] ;
  input \axi_rdata_reg[5] ;
  input \axi_rdata_reg[6] ;
  input \axi_rdata_reg[7] ;
  input \axi_rdata_reg[8] ;
  input \axi_rdata_reg[9] ;
  input \axi_rdata_reg[10] ;
  input \axi_rdata_reg[11] ;
  input \axi_rdata_reg[12] ;
  input \axi_rdata_reg[13] ;
  input \axi_rdata_reg[14] ;
  input \axi_rdata_reg[15] ;
  input \axi_rdata_reg[16] ;
  input \axi_rdata_reg[17] ;
  input \axi_rdata_reg[18] ;
  input \axi_rdata_reg[19] ;
  input \axi_rdata_reg[20] ;
  input \axi_rdata_reg[21] ;
  input \axi_rdata_reg[22] ;
  input \axi_rdata_reg[23] ;
  input \axi_rdata_reg[24] ;
  input \axi_rdata_reg[25] ;
  input \axi_rdata_reg[26] ;
  input \axi_rdata_reg[27] ;
  input \axi_rdata_reg[28] ;
  input \axi_rdata_reg[29] ;
  input \axi_rdata_reg[30] ;
  input \axi_rdata_reg[31]_1 ;
  input s00_axi_aresetn;
  input s00_axi_aclk;

  wire [31:0]D;
  wire [31:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire \axi_rdata[10]_i_2_n_0 ;
  wire \axi_rdata[11]_i_2_n_0 ;
  wire \axi_rdata[12]_i_2_n_0 ;
  wire \axi_rdata[13]_i_2_n_0 ;
  wire \axi_rdata[14]_i_2_n_0 ;
  wire \axi_rdata[15]_i_2_n_0 ;
  wire \axi_rdata[16]_i_2_n_0 ;
  wire \axi_rdata[17]_i_2_n_0 ;
  wire \axi_rdata[18]_i_2_n_0 ;
  wire \axi_rdata[19]_i_2_n_0 ;
  wire \axi_rdata[1]_i_2_n_0 ;
  wire \axi_rdata[20]_i_2_n_0 ;
  wire \axi_rdata[21]_i_2_n_0 ;
  wire \axi_rdata[22]_i_2_n_0 ;
  wire \axi_rdata[23]_i_2_n_0 ;
  wire \axi_rdata[24]_i_2_n_0 ;
  wire \axi_rdata[25]_i_2_n_0 ;
  wire \axi_rdata[26]_i_2_n_0 ;
  wire \axi_rdata[27]_i_2_n_0 ;
  wire \axi_rdata[28]_i_2_n_0 ;
  wire \axi_rdata[29]_i_2_n_0 ;
  wire \axi_rdata[2]_i_2_n_0 ;
  wire \axi_rdata[30]_i_2_n_0 ;
  wire \axi_rdata[31]_i_2_n_0 ;
  wire \axi_rdata[3]_i_2_n_0 ;
  wire \axi_rdata[4]_i_2_n_0 ;
  wire \axi_rdata[5]_i_2_n_0 ;
  wire \axi_rdata[6]_i_2_n_0 ;
  wire \axi_rdata[7]_i_2_n_0 ;
  wire \axi_rdata[8]_i_2_n_0 ;
  wire \axi_rdata[9]_i_2_n_0 ;
  wire \axi_rdata_reg[0] ;
  wire \axi_rdata_reg[10] ;
  wire \axi_rdata_reg[11] ;
  wire \axi_rdata_reg[12] ;
  wire \axi_rdata_reg[13] ;
  wire \axi_rdata_reg[14] ;
  wire \axi_rdata_reg[15] ;
  wire \axi_rdata_reg[16] ;
  wire \axi_rdata_reg[17] ;
  wire \axi_rdata_reg[18] ;
  wire \axi_rdata_reg[19] ;
  wire \axi_rdata_reg[1] ;
  wire \axi_rdata_reg[20] ;
  wire \axi_rdata_reg[21] ;
  wire \axi_rdata_reg[22] ;
  wire \axi_rdata_reg[23] ;
  wire \axi_rdata_reg[24] ;
  wire \axi_rdata_reg[25] ;
  wire \axi_rdata_reg[26] ;
  wire \axi_rdata_reg[27] ;
  wire \axi_rdata_reg[28] ;
  wire \axi_rdata_reg[29] ;
  wire \axi_rdata_reg[2] ;
  wire \axi_rdata_reg[30] ;
  wire [31:0]\axi_rdata_reg[31] ;
  wire [31:0]\axi_rdata_reg[31]_0 ;
  wire \axi_rdata_reg[31]_1 ;
  wire \axi_rdata_reg[3] ;
  wire \axi_rdata_reg[4] ;
  wire \axi_rdata_reg[5] ;
  wire \axi_rdata_reg[6] ;
  wire \axi_rdata_reg[7] ;
  wire \axi_rdata_reg[8] ;
  wire \axi_rdata_reg[9] ;
  wire [31:0]cal_result;
  wire [15:0]cal_result00_in;
  wire [16:0]cal_result01_in;
  wire cal_result0_carry__0_i_1_n_0;
  wire cal_result0_carry__0_i_2_n_0;
  wire cal_result0_carry__0_i_3_n_0;
  wire cal_result0_carry__0_i_4_n_0;
  wire cal_result0_carry__0_n_0;
  wire cal_result0_carry__0_n_1;
  wire cal_result0_carry__0_n_2;
  wire cal_result0_carry__0_n_3;
  wire cal_result0_carry__1_i_1_n_0;
  wire cal_result0_carry__1_i_2_n_0;
  wire cal_result0_carry__1_i_3_n_0;
  wire cal_result0_carry__1_i_4_n_0;
  wire cal_result0_carry__1_n_0;
  wire cal_result0_carry__1_n_1;
  wire cal_result0_carry__1_n_2;
  wire cal_result0_carry__1_n_3;
  wire cal_result0_carry__2_i_1_n_0;
  wire cal_result0_carry__2_i_2_n_0;
  wire cal_result0_carry__2_i_3_n_0;
  wire cal_result0_carry__2_i_4_n_0;
  wire cal_result0_carry__2_n_0;
  wire cal_result0_carry__2_n_1;
  wire cal_result0_carry__2_n_2;
  wire cal_result0_carry__2_n_3;
  wire cal_result0_carry_i_1_n_0;
  wire cal_result0_carry_i_2_n_0;
  wire cal_result0_carry_i_3_n_0;
  wire cal_result0_carry_i_4_n_0;
  wire cal_result0_carry_n_0;
  wire cal_result0_carry_n_1;
  wire cal_result0_carry_n_2;
  wire cal_result0_carry_n_3;
  wire cal_result0_n_100;
  wire cal_result0_n_101;
  wire cal_result0_n_102;
  wire cal_result0_n_103;
  wire cal_result0_n_104;
  wire cal_result0_n_105;
  wire cal_result0_n_74;
  wire cal_result0_n_75;
  wire cal_result0_n_76;
  wire cal_result0_n_77;
  wire cal_result0_n_78;
  wire cal_result0_n_79;
  wire cal_result0_n_80;
  wire cal_result0_n_81;
  wire cal_result0_n_82;
  wire cal_result0_n_83;
  wire cal_result0_n_84;
  wire cal_result0_n_85;
  wire cal_result0_n_86;
  wire cal_result0_n_87;
  wire cal_result0_n_88;
  wire cal_result0_n_89;
  wire cal_result0_n_90;
  wire cal_result0_n_91;
  wire cal_result0_n_92;
  wire cal_result0_n_93;
  wire cal_result0_n_94;
  wire cal_result0_n_95;
  wire cal_result0_n_96;
  wire cal_result0_n_97;
  wire cal_result0_n_98;
  wire cal_result0_n_99;
  wire \cal_result[0]_i_1_n_0 ;
  wire \cal_result[10]_i_1_n_0 ;
  wire \cal_result[11]_i_1_n_0 ;
  wire \cal_result[12]_i_1_n_0 ;
  wire \cal_result[13]_i_1_n_0 ;
  wire \cal_result[14]_i_1_n_0 ;
  wire \cal_result[15]_i_1_n_0 ;
  wire \cal_result[16]_i_1_n_0 ;
  wire \cal_result[17]_i_1_n_0 ;
  wire \cal_result[18]_i_1_n_0 ;
  wire \cal_result[19]_i_1_n_0 ;
  wire \cal_result[1]_i_1_n_0 ;
  wire \cal_result[20]_i_1_n_0 ;
  wire \cal_result[21]_i_1_n_0 ;
  wire \cal_result[22]_i_1_n_0 ;
  wire \cal_result[23]_i_1_n_0 ;
  wire \cal_result[24]_i_1_n_0 ;
  wire \cal_result[25]_i_1_n_0 ;
  wire \cal_result[26]_i_1_n_0 ;
  wire \cal_result[27]_i_1_n_0 ;
  wire \cal_result[28]_i_1_n_0 ;
  wire \cal_result[29]_i_1_n_0 ;
  wire \cal_result[2]_i_1_n_0 ;
  wire \cal_result[30]_i_1_n_0 ;
  wire \cal_result[31]_i_1_n_0 ;
  wire \cal_result[3]_i_1_n_0 ;
  wire \cal_result[4]_i_1_n_0 ;
  wire \cal_result[5]_i_1_n_0 ;
  wire \cal_result[6]_i_1_n_0 ;
  wire \cal_result[7]_i_1_n_0 ;
  wire \cal_result[8]_i_1_n_0 ;
  wire \cal_result[9]_i_1_n_0 ;
  wire \cal_result_reg[31]_i_2_n_3 ;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire [2:0]sel0;
  wire [3:0]\slv_reg1_reg[11] ;
  wire [3:0]\slv_reg1_reg[15] ;
  wire [3:0]\slv_reg1_reg[7] ;
  wire NLW_cal_result0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_cal_result0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_cal_result0_OVERFLOW_UNCONNECTED;
  wire NLW_cal_result0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_cal_result0_PATTERNDETECT_UNCONNECTED;
  wire NLW_cal_result0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_cal_result0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_cal_result0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_cal_result0_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_cal_result0_P_UNCONNECTED;
  wire [47:0]NLW_cal_result0_PCOUT_UNCONNECTED;
  wire [3:1]\NLW_cal_result_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_cal_result_reg[31]_i_2_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(SR));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_2 
       (.I0(cal_result[0]),
        .I1(Q[0]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31] [0]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_0 [0]),
        .O(\axi_rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_2 
       (.I0(cal_result[10]),
        .I1(Q[10]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31] [10]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_0 [10]),
        .O(\axi_rdata[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_2 
       (.I0(cal_result[11]),
        .I1(Q[11]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31] [11]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_0 [11]),
        .O(\axi_rdata[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_2 
       (.I0(cal_result[12]),
        .I1(Q[12]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31] [12]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_0 [12]),
        .O(\axi_rdata[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_2 
       (.I0(cal_result[13]),
        .I1(Q[13]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31] [13]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_0 [13]),
        .O(\axi_rdata[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_2 
       (.I0(cal_result[14]),
        .I1(Q[14]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31] [14]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_0 [14]),
        .O(\axi_rdata[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_2 
       (.I0(cal_result[15]),
        .I1(Q[15]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31] [15]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_0 [15]),
        .O(\axi_rdata[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_2 
       (.I0(cal_result[16]),
        .I1(Q[16]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31] [16]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_0 [16]),
        .O(\axi_rdata[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_2 
       (.I0(cal_result[17]),
        .I1(Q[17]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31] [17]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_0 [17]),
        .O(\axi_rdata[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_2 
       (.I0(cal_result[18]),
        .I1(Q[18]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31] [18]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_0 [18]),
        .O(\axi_rdata[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_2 
       (.I0(cal_result[19]),
        .I1(Q[19]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31] [19]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_0 [19]),
        .O(\axi_rdata[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_2 
       (.I0(cal_result[1]),
        .I1(Q[1]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31] [1]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_0 [1]),
        .O(\axi_rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_2 
       (.I0(cal_result[20]),
        .I1(Q[20]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31] [20]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_0 [20]),
        .O(\axi_rdata[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_2 
       (.I0(cal_result[21]),
        .I1(Q[21]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31] [21]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_0 [21]),
        .O(\axi_rdata[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_2 
       (.I0(cal_result[22]),
        .I1(Q[22]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31] [22]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_0 [22]),
        .O(\axi_rdata[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_2 
       (.I0(cal_result[23]),
        .I1(Q[23]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31] [23]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_0 [23]),
        .O(\axi_rdata[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_2 
       (.I0(cal_result[24]),
        .I1(Q[24]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31] [24]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_0 [24]),
        .O(\axi_rdata[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_2 
       (.I0(cal_result[25]),
        .I1(Q[25]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31] [25]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_0 [25]),
        .O(\axi_rdata[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_2 
       (.I0(cal_result[26]),
        .I1(Q[26]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31] [26]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_0 [26]),
        .O(\axi_rdata[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_2 
       (.I0(cal_result[27]),
        .I1(Q[27]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31] [27]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_0 [27]),
        .O(\axi_rdata[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_2 
       (.I0(cal_result[28]),
        .I1(Q[28]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31] [28]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_0 [28]),
        .O(\axi_rdata[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_2 
       (.I0(cal_result[29]),
        .I1(Q[29]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31] [29]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_0 [29]),
        .O(\axi_rdata[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_2 
       (.I0(cal_result[2]),
        .I1(Q[2]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31] [2]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_0 [2]),
        .O(\axi_rdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_2 
       (.I0(cal_result[30]),
        .I1(Q[30]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31] [30]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_0 [30]),
        .O(\axi_rdata[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_2 
       (.I0(cal_result[31]),
        .I1(Q[31]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31] [31]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_0 [31]),
        .O(\axi_rdata[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_2 
       (.I0(cal_result[3]),
        .I1(Q[3]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31] [3]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_0 [3]),
        .O(\axi_rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_2 
       (.I0(cal_result[4]),
        .I1(Q[4]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31] [4]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_0 [4]),
        .O(\axi_rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_2 
       (.I0(cal_result[5]),
        .I1(Q[5]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31] [5]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_0 [5]),
        .O(\axi_rdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_2 
       (.I0(cal_result[6]),
        .I1(Q[6]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31] [6]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_0 [6]),
        .O(\axi_rdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_2 
       (.I0(cal_result[7]),
        .I1(Q[7]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31] [7]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_0 [7]),
        .O(\axi_rdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_2 
       (.I0(cal_result[8]),
        .I1(Q[8]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31] [8]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_0 [8]),
        .O(\axi_rdata[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_2 
       (.I0(cal_result[9]),
        .I1(Q[9]),
        .I2(sel0[1]),
        .I3(\axi_rdata_reg[31] [9]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[31]_0 [9]),
        .O(\axi_rdata[9]_i_2_n_0 ));
  MUXF7 \axi_rdata_reg[0]_i_1 
       (.I0(\axi_rdata[0]_i_2_n_0 ),
        .I1(\axi_rdata_reg[0] ),
        .O(D[0]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[10]_i_1 
       (.I0(\axi_rdata[10]_i_2_n_0 ),
        .I1(\axi_rdata_reg[10] ),
        .O(D[10]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[11]_i_1 
       (.I0(\axi_rdata[11]_i_2_n_0 ),
        .I1(\axi_rdata_reg[11] ),
        .O(D[11]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[12]_i_1 
       (.I0(\axi_rdata[12]_i_2_n_0 ),
        .I1(\axi_rdata_reg[12] ),
        .O(D[12]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[13]_i_1 
       (.I0(\axi_rdata[13]_i_2_n_0 ),
        .I1(\axi_rdata_reg[13] ),
        .O(D[13]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[14]_i_1 
       (.I0(\axi_rdata[14]_i_2_n_0 ),
        .I1(\axi_rdata_reg[14] ),
        .O(D[14]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[15]_i_1 
       (.I0(\axi_rdata[15]_i_2_n_0 ),
        .I1(\axi_rdata_reg[15] ),
        .O(D[15]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[16]_i_1 
       (.I0(\axi_rdata[16]_i_2_n_0 ),
        .I1(\axi_rdata_reg[16] ),
        .O(D[16]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[17]_i_1 
       (.I0(\axi_rdata[17]_i_2_n_0 ),
        .I1(\axi_rdata_reg[17] ),
        .O(D[17]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[18]_i_1 
       (.I0(\axi_rdata[18]_i_2_n_0 ),
        .I1(\axi_rdata_reg[18] ),
        .O(D[18]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[19]_i_1 
       (.I0(\axi_rdata[19]_i_2_n_0 ),
        .I1(\axi_rdata_reg[19] ),
        .O(D[19]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[1]_i_1 
       (.I0(\axi_rdata[1]_i_2_n_0 ),
        .I1(\axi_rdata_reg[1] ),
        .O(D[1]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[20]_i_1 
       (.I0(\axi_rdata[20]_i_2_n_0 ),
        .I1(\axi_rdata_reg[20] ),
        .O(D[20]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[21]_i_1 
       (.I0(\axi_rdata[21]_i_2_n_0 ),
        .I1(\axi_rdata_reg[21] ),
        .O(D[21]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[22]_i_1 
       (.I0(\axi_rdata[22]_i_2_n_0 ),
        .I1(\axi_rdata_reg[22] ),
        .O(D[22]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[23]_i_1 
       (.I0(\axi_rdata[23]_i_2_n_0 ),
        .I1(\axi_rdata_reg[23] ),
        .O(D[23]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[24]_i_1 
       (.I0(\axi_rdata[24]_i_2_n_0 ),
        .I1(\axi_rdata_reg[24] ),
        .O(D[24]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[25]_i_1 
       (.I0(\axi_rdata[25]_i_2_n_0 ),
        .I1(\axi_rdata_reg[25] ),
        .O(D[25]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[26]_i_1 
       (.I0(\axi_rdata[26]_i_2_n_0 ),
        .I1(\axi_rdata_reg[26] ),
        .O(D[26]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[27]_i_1 
       (.I0(\axi_rdata[27]_i_2_n_0 ),
        .I1(\axi_rdata_reg[27] ),
        .O(D[27]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[28]_i_1 
       (.I0(\axi_rdata[28]_i_2_n_0 ),
        .I1(\axi_rdata_reg[28] ),
        .O(D[28]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[29]_i_1 
       (.I0(\axi_rdata[29]_i_2_n_0 ),
        .I1(\axi_rdata_reg[29] ),
        .O(D[29]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[2]_i_1 
       (.I0(\axi_rdata[2]_i_2_n_0 ),
        .I1(\axi_rdata_reg[2] ),
        .O(D[2]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[30]_i_1 
       (.I0(\axi_rdata[30]_i_2_n_0 ),
        .I1(\axi_rdata_reg[30] ),
        .O(D[30]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[31]_i_1 
       (.I0(\axi_rdata[31]_i_2_n_0 ),
        .I1(\axi_rdata_reg[31]_1 ),
        .O(D[31]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[3]_i_1 
       (.I0(\axi_rdata[3]_i_2_n_0 ),
        .I1(\axi_rdata_reg[3] ),
        .O(D[3]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[4]_i_1 
       (.I0(\axi_rdata[4]_i_2_n_0 ),
        .I1(\axi_rdata_reg[4] ),
        .O(D[4]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[5]_i_1 
       (.I0(\axi_rdata[5]_i_2_n_0 ),
        .I1(\axi_rdata_reg[5] ),
        .O(D[5]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[6]_i_1 
       (.I0(\axi_rdata[6]_i_2_n_0 ),
        .I1(\axi_rdata_reg[6] ),
        .O(D[6]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[7]_i_1 
       (.I0(\axi_rdata[7]_i_2_n_0 ),
        .I1(\axi_rdata_reg[7] ),
        .O(D[7]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[8]_i_1 
       (.I0(\axi_rdata[8]_i_2_n_0 ),
        .I1(\axi_rdata_reg[8] ),
        .O(D[8]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[9]_i_1 
       (.I0(\axi_rdata[9]_i_2_n_0 ),
        .I1(\axi_rdata_reg[9] ),
        .O(D[9]),
        .S(sel0[2]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    cal_result0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\axi_rdata_reg[31] [15:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_cal_result0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,Q[15:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_cal_result0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_cal_result0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_cal_result0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_cal_result0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_cal_result0_OVERFLOW_UNCONNECTED),
        .P({NLW_cal_result0_P_UNCONNECTED[47:32],cal_result0_n_74,cal_result0_n_75,cal_result0_n_76,cal_result0_n_77,cal_result0_n_78,cal_result0_n_79,cal_result0_n_80,cal_result0_n_81,cal_result0_n_82,cal_result0_n_83,cal_result0_n_84,cal_result0_n_85,cal_result0_n_86,cal_result0_n_87,cal_result0_n_88,cal_result0_n_89,cal_result0_n_90,cal_result0_n_91,cal_result0_n_92,cal_result0_n_93,cal_result0_n_94,cal_result0_n_95,cal_result0_n_96,cal_result0_n_97,cal_result0_n_98,cal_result0_n_99,cal_result0_n_100,cal_result0_n_101,cal_result0_n_102,cal_result0_n_103,cal_result0_n_104,cal_result0_n_105}),
        .PATTERNBDETECT(NLW_cal_result0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_cal_result0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_cal_result0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_cal_result0_UNDERFLOW_UNCONNECTED));
  CARRY4 cal_result0_carry
       (.CI(1'b0),
        .CO({cal_result0_carry_n_0,cal_result0_carry_n_1,cal_result0_carry_n_2,cal_result0_carry_n_3}),
        .CYINIT(1'b1),
        .DI(\axi_rdata_reg[31] [3:0]),
        .O(cal_result00_in[3:0]),
        .S({cal_result0_carry_i_1_n_0,cal_result0_carry_i_2_n_0,cal_result0_carry_i_3_n_0,cal_result0_carry_i_4_n_0}));
  CARRY4 cal_result0_carry__0
       (.CI(cal_result0_carry_n_0),
        .CO({cal_result0_carry__0_n_0,cal_result0_carry__0_n_1,cal_result0_carry__0_n_2,cal_result0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\axi_rdata_reg[31] [7:4]),
        .O(cal_result00_in[7:4]),
        .S({cal_result0_carry__0_i_1_n_0,cal_result0_carry__0_i_2_n_0,cal_result0_carry__0_i_3_n_0,cal_result0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    cal_result0_carry__0_i_1
       (.I0(Q[7]),
        .I1(\axi_rdata_reg[31] [7]),
        .O(cal_result0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cal_result0_carry__0_i_2
       (.I0(Q[6]),
        .I1(\axi_rdata_reg[31] [6]),
        .O(cal_result0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cal_result0_carry__0_i_3
       (.I0(Q[5]),
        .I1(\axi_rdata_reg[31] [5]),
        .O(cal_result0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cal_result0_carry__0_i_4
       (.I0(Q[4]),
        .I1(\axi_rdata_reg[31] [4]),
        .O(cal_result0_carry__0_i_4_n_0));
  CARRY4 cal_result0_carry__1
       (.CI(cal_result0_carry__0_n_0),
        .CO({cal_result0_carry__1_n_0,cal_result0_carry__1_n_1,cal_result0_carry__1_n_2,cal_result0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(\axi_rdata_reg[31] [11:8]),
        .O(cal_result00_in[11:8]),
        .S({cal_result0_carry__1_i_1_n_0,cal_result0_carry__1_i_2_n_0,cal_result0_carry__1_i_3_n_0,cal_result0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    cal_result0_carry__1_i_1
       (.I0(Q[11]),
        .I1(\axi_rdata_reg[31] [11]),
        .O(cal_result0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cal_result0_carry__1_i_2
       (.I0(Q[10]),
        .I1(\axi_rdata_reg[31] [10]),
        .O(cal_result0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cal_result0_carry__1_i_3
       (.I0(Q[9]),
        .I1(\axi_rdata_reg[31] [9]),
        .O(cal_result0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cal_result0_carry__1_i_4
       (.I0(Q[8]),
        .I1(\axi_rdata_reg[31] [8]),
        .O(cal_result0_carry__1_i_4_n_0));
  CARRY4 cal_result0_carry__2
       (.CI(cal_result0_carry__1_n_0),
        .CO({cal_result0_carry__2_n_0,cal_result0_carry__2_n_1,cal_result0_carry__2_n_2,cal_result0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(\axi_rdata_reg[31] [15:12]),
        .O(cal_result00_in[15:12]),
        .S({cal_result0_carry__2_i_1_n_0,cal_result0_carry__2_i_2_n_0,cal_result0_carry__2_i_3_n_0,cal_result0_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    cal_result0_carry__2_i_1
       (.I0(Q[15]),
        .I1(\axi_rdata_reg[31] [15]),
        .O(cal_result0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cal_result0_carry__2_i_2
       (.I0(Q[14]),
        .I1(\axi_rdata_reg[31] [14]),
        .O(cal_result0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cal_result0_carry__2_i_3
       (.I0(Q[13]),
        .I1(\axi_rdata_reg[31] [13]),
        .O(cal_result0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cal_result0_carry__2_i_4
       (.I0(Q[12]),
        .I1(\axi_rdata_reg[31] [12]),
        .O(cal_result0_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cal_result0_carry_i_1
       (.I0(Q[3]),
        .I1(\axi_rdata_reg[31] [3]),
        .O(cal_result0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cal_result0_carry_i_2
       (.I0(Q[2]),
        .I1(\axi_rdata_reg[31] [2]),
        .O(cal_result0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cal_result0_carry_i_3
       (.I0(Q[1]),
        .I1(\axi_rdata_reg[31] [1]),
        .O(cal_result0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cal_result0_carry_i_4
       (.I0(Q[0]),
        .I1(\axi_rdata_reg[31] [0]),
        .O(cal_result0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \cal_result[0]_i_1 
       (.I0(cal_result01_in[0]),
        .I1(\axi_rdata_reg[31]_0 [1]),
        .I2(cal_result0_n_105),
        .I3(\axi_rdata_reg[31]_0 [0]),
        .I4(cal_result00_in[0]),
        .I5(\axi_rdata_reg[31]_0 [2]),
        .O(\cal_result[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \cal_result[10]_i_1 
       (.I0(cal_result01_in[10]),
        .I1(\axi_rdata_reg[31]_0 [1]),
        .I2(cal_result0_n_95),
        .I3(\axi_rdata_reg[31]_0 [0]),
        .I4(cal_result00_in[10]),
        .I5(\axi_rdata_reg[31]_0 [2]),
        .O(\cal_result[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \cal_result[11]_i_1 
       (.I0(cal_result01_in[11]),
        .I1(\axi_rdata_reg[31]_0 [1]),
        .I2(cal_result0_n_94),
        .I3(\axi_rdata_reg[31]_0 [0]),
        .I4(cal_result00_in[11]),
        .I5(\axi_rdata_reg[31]_0 [2]),
        .O(\cal_result[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cal_result[11]_i_3 
       (.I0(\axi_rdata_reg[31] [11]),
        .I1(Q[11]),
        .O(\slv_reg1_reg[11] [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \cal_result[11]_i_4 
       (.I0(\axi_rdata_reg[31] [10]),
        .I1(Q[10]),
        .O(\slv_reg1_reg[11] [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \cal_result[11]_i_5 
       (.I0(\axi_rdata_reg[31] [9]),
        .I1(Q[9]),
        .O(\slv_reg1_reg[11] [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \cal_result[11]_i_6 
       (.I0(\axi_rdata_reg[31] [8]),
        .I1(Q[8]),
        .O(\slv_reg1_reg[11] [0]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \cal_result[12]_i_1 
       (.I0(cal_result01_in[12]),
        .I1(\axi_rdata_reg[31]_0 [1]),
        .I2(cal_result0_n_93),
        .I3(\axi_rdata_reg[31]_0 [0]),
        .I4(cal_result00_in[12]),
        .I5(\axi_rdata_reg[31]_0 [2]),
        .O(\cal_result[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \cal_result[13]_i_1 
       (.I0(cal_result01_in[13]),
        .I1(\axi_rdata_reg[31]_0 [1]),
        .I2(cal_result0_n_92),
        .I3(\axi_rdata_reg[31]_0 [0]),
        .I4(cal_result00_in[13]),
        .I5(\axi_rdata_reg[31]_0 [2]),
        .O(\cal_result[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \cal_result[14]_i_1 
       (.I0(cal_result01_in[14]),
        .I1(\axi_rdata_reg[31]_0 [1]),
        .I2(cal_result0_n_91),
        .I3(\axi_rdata_reg[31]_0 [0]),
        .I4(cal_result00_in[14]),
        .I5(\axi_rdata_reg[31]_0 [2]),
        .O(\cal_result[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \cal_result[15]_i_1 
       (.I0(cal_result01_in[15]),
        .I1(\axi_rdata_reg[31]_0 [1]),
        .I2(cal_result0_n_90),
        .I3(\axi_rdata_reg[31]_0 [0]),
        .I4(cal_result00_in[15]),
        .I5(\axi_rdata_reg[31]_0 [2]),
        .O(\cal_result[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cal_result[15]_i_3 
       (.I0(\axi_rdata_reg[31] [15]),
        .I1(Q[15]),
        .O(\slv_reg1_reg[15] [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \cal_result[15]_i_4 
       (.I0(\axi_rdata_reg[31] [14]),
        .I1(Q[14]),
        .O(\slv_reg1_reg[15] [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \cal_result[15]_i_5 
       (.I0(\axi_rdata_reg[31] [13]),
        .I1(Q[13]),
        .O(\slv_reg1_reg[15] [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \cal_result[15]_i_6 
       (.I0(\axi_rdata_reg[31] [12]),
        .I1(Q[12]),
        .O(\slv_reg1_reg[15] [0]));
  LUT6 #(
    .INIT(64'h0000000000E233E2)) 
    \cal_result[16]_i_1 
       (.I0(cal_result01_in[16]),
        .I1(\axi_rdata_reg[31]_0 [1]),
        .I2(cal_result0_n_89),
        .I3(\axi_rdata_reg[31]_0 [0]),
        .I4(\cal_result_reg[31]_i_2_n_3 ),
        .I5(\axi_rdata_reg[31]_0 [2]),
        .O(\cal_result[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000838)) 
    \cal_result[17]_i_1 
       (.I0(cal_result0_n_88),
        .I1(\axi_rdata_reg[31]_0 [1]),
        .I2(\axi_rdata_reg[31]_0 [0]),
        .I3(\cal_result_reg[31]_i_2_n_3 ),
        .I4(\axi_rdata_reg[31]_0 [2]),
        .O(\cal_result[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000838)) 
    \cal_result[18]_i_1 
       (.I0(cal_result0_n_87),
        .I1(\axi_rdata_reg[31]_0 [1]),
        .I2(\axi_rdata_reg[31]_0 [0]),
        .I3(\cal_result_reg[31]_i_2_n_3 ),
        .I4(\axi_rdata_reg[31]_0 [2]),
        .O(\cal_result[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000838)) 
    \cal_result[19]_i_1 
       (.I0(cal_result0_n_86),
        .I1(\axi_rdata_reg[31]_0 [1]),
        .I2(\axi_rdata_reg[31]_0 [0]),
        .I3(\cal_result_reg[31]_i_2_n_3 ),
        .I4(\axi_rdata_reg[31]_0 [2]),
        .O(\cal_result[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \cal_result[1]_i_1 
       (.I0(cal_result01_in[1]),
        .I1(\axi_rdata_reg[31]_0 [1]),
        .I2(cal_result0_n_104),
        .I3(\axi_rdata_reg[31]_0 [0]),
        .I4(cal_result00_in[1]),
        .I5(\axi_rdata_reg[31]_0 [2]),
        .O(\cal_result[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000838)) 
    \cal_result[20]_i_1 
       (.I0(cal_result0_n_85),
        .I1(\axi_rdata_reg[31]_0 [1]),
        .I2(\axi_rdata_reg[31]_0 [0]),
        .I3(\cal_result_reg[31]_i_2_n_3 ),
        .I4(\axi_rdata_reg[31]_0 [2]),
        .O(\cal_result[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000838)) 
    \cal_result[21]_i_1 
       (.I0(cal_result0_n_84),
        .I1(\axi_rdata_reg[31]_0 [1]),
        .I2(\axi_rdata_reg[31]_0 [0]),
        .I3(\cal_result_reg[31]_i_2_n_3 ),
        .I4(\axi_rdata_reg[31]_0 [2]),
        .O(\cal_result[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000838)) 
    \cal_result[22]_i_1 
       (.I0(cal_result0_n_83),
        .I1(\axi_rdata_reg[31]_0 [1]),
        .I2(\axi_rdata_reg[31]_0 [0]),
        .I3(\cal_result_reg[31]_i_2_n_3 ),
        .I4(\axi_rdata_reg[31]_0 [2]),
        .O(\cal_result[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000838)) 
    \cal_result[23]_i_1 
       (.I0(cal_result0_n_82),
        .I1(\axi_rdata_reg[31]_0 [1]),
        .I2(\axi_rdata_reg[31]_0 [0]),
        .I3(\cal_result_reg[31]_i_2_n_3 ),
        .I4(\axi_rdata_reg[31]_0 [2]),
        .O(\cal_result[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000838)) 
    \cal_result[24]_i_1 
       (.I0(cal_result0_n_81),
        .I1(\axi_rdata_reg[31]_0 [1]),
        .I2(\axi_rdata_reg[31]_0 [0]),
        .I3(\cal_result_reg[31]_i_2_n_3 ),
        .I4(\axi_rdata_reg[31]_0 [2]),
        .O(\cal_result[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000838)) 
    \cal_result[25]_i_1 
       (.I0(cal_result0_n_80),
        .I1(\axi_rdata_reg[31]_0 [1]),
        .I2(\axi_rdata_reg[31]_0 [0]),
        .I3(\cal_result_reg[31]_i_2_n_3 ),
        .I4(\axi_rdata_reg[31]_0 [2]),
        .O(\cal_result[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000838)) 
    \cal_result[26]_i_1 
       (.I0(cal_result0_n_79),
        .I1(\axi_rdata_reg[31]_0 [1]),
        .I2(\axi_rdata_reg[31]_0 [0]),
        .I3(\cal_result_reg[31]_i_2_n_3 ),
        .I4(\axi_rdata_reg[31]_0 [2]),
        .O(\cal_result[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000838)) 
    \cal_result[27]_i_1 
       (.I0(cal_result0_n_78),
        .I1(\axi_rdata_reg[31]_0 [1]),
        .I2(\axi_rdata_reg[31]_0 [0]),
        .I3(\cal_result_reg[31]_i_2_n_3 ),
        .I4(\axi_rdata_reg[31]_0 [2]),
        .O(\cal_result[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000838)) 
    \cal_result[28]_i_1 
       (.I0(cal_result0_n_77),
        .I1(\axi_rdata_reg[31]_0 [1]),
        .I2(\axi_rdata_reg[31]_0 [0]),
        .I3(\cal_result_reg[31]_i_2_n_3 ),
        .I4(\axi_rdata_reg[31]_0 [2]),
        .O(\cal_result[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000838)) 
    \cal_result[29]_i_1 
       (.I0(cal_result0_n_76),
        .I1(\axi_rdata_reg[31]_0 [1]),
        .I2(\axi_rdata_reg[31]_0 [0]),
        .I3(\cal_result_reg[31]_i_2_n_3 ),
        .I4(\axi_rdata_reg[31]_0 [2]),
        .O(\cal_result[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \cal_result[2]_i_1 
       (.I0(cal_result01_in[2]),
        .I1(\axi_rdata_reg[31]_0 [1]),
        .I2(cal_result0_n_103),
        .I3(\axi_rdata_reg[31]_0 [0]),
        .I4(cal_result00_in[2]),
        .I5(\axi_rdata_reg[31]_0 [2]),
        .O(\cal_result[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000838)) 
    \cal_result[30]_i_1 
       (.I0(cal_result0_n_75),
        .I1(\axi_rdata_reg[31]_0 [1]),
        .I2(\axi_rdata_reg[31]_0 [0]),
        .I3(\cal_result_reg[31]_i_2_n_3 ),
        .I4(\axi_rdata_reg[31]_0 [2]),
        .O(\cal_result[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000838)) 
    \cal_result[31]_i_1 
       (.I0(cal_result0_n_74),
        .I1(\axi_rdata_reg[31]_0 [1]),
        .I2(\axi_rdata_reg[31]_0 [0]),
        .I3(\cal_result_reg[31]_i_2_n_3 ),
        .I4(\axi_rdata_reg[31]_0 [2]),
        .O(\cal_result[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \cal_result[3]_i_1 
       (.I0(cal_result01_in[3]),
        .I1(\axi_rdata_reg[31]_0 [1]),
        .I2(cal_result0_n_102),
        .I3(\axi_rdata_reg[31]_0 [0]),
        .I4(cal_result00_in[3]),
        .I5(\axi_rdata_reg[31]_0 [2]),
        .O(\cal_result[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cal_result[3]_i_3 
       (.I0(\axi_rdata_reg[31] [3]),
        .I1(Q[3]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \cal_result[3]_i_4 
       (.I0(\axi_rdata_reg[31] [2]),
        .I1(Q[2]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \cal_result[3]_i_5 
       (.I0(\axi_rdata_reg[31] [1]),
        .I1(Q[1]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \cal_result[3]_i_6 
       (.I0(\axi_rdata_reg[31] [0]),
        .I1(Q[0]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \cal_result[4]_i_1 
       (.I0(cal_result01_in[4]),
        .I1(\axi_rdata_reg[31]_0 [1]),
        .I2(cal_result0_n_101),
        .I3(\axi_rdata_reg[31]_0 [0]),
        .I4(cal_result00_in[4]),
        .I5(\axi_rdata_reg[31]_0 [2]),
        .O(\cal_result[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \cal_result[5]_i_1 
       (.I0(cal_result01_in[5]),
        .I1(\axi_rdata_reg[31]_0 [1]),
        .I2(cal_result0_n_100),
        .I3(\axi_rdata_reg[31]_0 [0]),
        .I4(cal_result00_in[5]),
        .I5(\axi_rdata_reg[31]_0 [2]),
        .O(\cal_result[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \cal_result[6]_i_1 
       (.I0(cal_result01_in[6]),
        .I1(\axi_rdata_reg[31]_0 [1]),
        .I2(cal_result0_n_99),
        .I3(\axi_rdata_reg[31]_0 [0]),
        .I4(cal_result00_in[6]),
        .I5(\axi_rdata_reg[31]_0 [2]),
        .O(\cal_result[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \cal_result[7]_i_1 
       (.I0(cal_result01_in[7]),
        .I1(\axi_rdata_reg[31]_0 [1]),
        .I2(cal_result0_n_98),
        .I3(\axi_rdata_reg[31]_0 [0]),
        .I4(cal_result00_in[7]),
        .I5(\axi_rdata_reg[31]_0 [2]),
        .O(\cal_result[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cal_result[7]_i_3 
       (.I0(\axi_rdata_reg[31] [7]),
        .I1(Q[7]),
        .O(\slv_reg1_reg[7] [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \cal_result[7]_i_4 
       (.I0(\axi_rdata_reg[31] [6]),
        .I1(Q[6]),
        .O(\slv_reg1_reg[7] [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \cal_result[7]_i_5 
       (.I0(\axi_rdata_reg[31] [5]),
        .I1(Q[5]),
        .O(\slv_reg1_reg[7] [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \cal_result[7]_i_6 
       (.I0(\axi_rdata_reg[31] [4]),
        .I1(Q[4]),
        .O(\slv_reg1_reg[7] [0]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \cal_result[8]_i_1 
       (.I0(cal_result01_in[8]),
        .I1(\axi_rdata_reg[31]_0 [1]),
        .I2(cal_result0_n_97),
        .I3(\axi_rdata_reg[31]_0 [0]),
        .I4(cal_result00_in[8]),
        .I5(\axi_rdata_reg[31]_0 [2]),
        .O(\cal_result[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \cal_result[9]_i_1 
       (.I0(cal_result01_in[9]),
        .I1(\axi_rdata_reg[31]_0 [1]),
        .I2(cal_result0_n_96),
        .I3(\axi_rdata_reg[31]_0 [0]),
        .I4(cal_result00_in[9]),
        .I5(\axi_rdata_reg[31]_0 [2]),
        .O(\cal_result[9]_i_1_n_0 ));
  FDRE \cal_result_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cal_result[0]_i_1_n_0 ),
        .Q(cal_result[0]),
        .R(SR));
  FDRE \cal_result_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cal_result[10]_i_1_n_0 ),
        .Q(cal_result[10]),
        .R(SR));
  FDRE \cal_result_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cal_result[11]_i_1_n_0 ),
        .Q(cal_result[11]),
        .R(SR));
  FDRE \cal_result_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cal_result[12]_i_1_n_0 ),
        .Q(cal_result[12]),
        .R(SR));
  FDRE \cal_result_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cal_result[13]_i_1_n_0 ),
        .Q(cal_result[13]),
        .R(SR));
  FDRE \cal_result_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cal_result[14]_i_1_n_0 ),
        .Q(cal_result[14]),
        .R(SR));
  FDRE \cal_result_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cal_result[15]_i_1_n_0 ),
        .Q(cal_result[15]),
        .R(SR));
  FDRE \cal_result_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cal_result[16]_i_1_n_0 ),
        .Q(cal_result[16]),
        .R(SR));
  FDRE \cal_result_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cal_result[17]_i_1_n_0 ),
        .Q(cal_result[17]),
        .R(SR));
  FDRE \cal_result_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cal_result[18]_i_1_n_0 ),
        .Q(cal_result[18]),
        .R(SR));
  FDRE \cal_result_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cal_result[19]_i_1_n_0 ),
        .Q(cal_result[19]),
        .R(SR));
  FDRE \cal_result_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cal_result[1]_i_1_n_0 ),
        .Q(cal_result[1]),
        .R(SR));
  FDRE \cal_result_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cal_result[20]_i_1_n_0 ),
        .Q(cal_result[20]),
        .R(SR));
  FDRE \cal_result_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cal_result[21]_i_1_n_0 ),
        .Q(cal_result[21]),
        .R(SR));
  FDRE \cal_result_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cal_result[22]_i_1_n_0 ),
        .Q(cal_result[22]),
        .R(SR));
  FDRE \cal_result_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cal_result[23]_i_1_n_0 ),
        .Q(cal_result[23]),
        .R(SR));
  FDRE \cal_result_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cal_result[24]_i_1_n_0 ),
        .Q(cal_result[24]),
        .R(SR));
  FDRE \cal_result_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cal_result[25]_i_1_n_0 ),
        .Q(cal_result[25]),
        .R(SR));
  FDRE \cal_result_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cal_result[26]_i_1_n_0 ),
        .Q(cal_result[26]),
        .R(SR));
  FDRE \cal_result_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cal_result[27]_i_1_n_0 ),
        .Q(cal_result[27]),
        .R(SR));
  FDRE \cal_result_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cal_result[28]_i_1_n_0 ),
        .Q(cal_result[28]),
        .R(SR));
  FDRE \cal_result_reg[29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cal_result[29]_i_1_n_0 ),
        .Q(cal_result[29]),
        .R(SR));
  FDRE \cal_result_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cal_result[2]_i_1_n_0 ),
        .Q(cal_result[2]),
        .R(SR));
  FDRE \cal_result_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cal_result[30]_i_1_n_0 ),
        .Q(cal_result[30]),
        .R(SR));
  FDRE \cal_result_reg[31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cal_result[31]_i_1_n_0 ),
        .Q(cal_result[31]),
        .R(SR));
  CARRY4 \cal_result_reg[31]_i_2 
       (.CI(cal_result0_carry__2_n_0),
        .CO({\NLW_cal_result_reg[31]_i_2_CO_UNCONNECTED [3:1],\cal_result_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_cal_result_reg[31]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDRE \cal_result_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cal_result[3]_i_1_n_0 ),
        .Q(cal_result[3]),
        .R(SR));
  FDRE \cal_result_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cal_result[4]_i_1_n_0 ),
        .Q(cal_result[4]),
        .R(SR));
  FDRE \cal_result_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cal_result[5]_i_1_n_0 ),
        .Q(cal_result[5]),
        .R(SR));
  FDRE \cal_result_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cal_result[6]_i_1_n_0 ),
        .Q(cal_result[6]),
        .R(SR));
  FDRE \cal_result_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cal_result[7]_i_1_n_0 ),
        .Q(cal_result[7]),
        .R(SR));
  FDRE \cal_result_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cal_result[8]_i_1_n_0 ),
        .Q(cal_result[8]),
        .R(SR));
  FDRE \cal_result_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cal_result[9]_i_1_n_0 ),
        .Q(cal_result[9]),
        .R(SR));
endmodule

module Lab2_two_slaves_Lab2_IP_1_0_Lab2_IP_v1_0
   (Q,
    \slv_reg1_reg[15] ,
    S_AXI_WREADY,
    s_axi_awready,
    S_AXI_ARREADY,
    \slv_reg0_reg[2] ,
    cal_result,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output [15:0]Q;
  output [15:0]\slv_reg1_reg[15] ;
  output S_AXI_WREADY;
  output s_axi_awready;
  output S_AXI_ARREADY;
  output [2:0]\slv_reg0_reg[2] ;
  output [31:0]cal_result;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_aclk;
  input [2:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input [2:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire [15:0]Q;
  wire S_AXI_ARREADY;
  wire S_AXI_WREADY;
  wire [31:0]cal_result;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire s_axi_awready;
  wire [2:0]\slv_reg0_reg[2] ;
  wire [15:0]\slv_reg1_reg[15] ;

  Lab2_two_slaves_Lab2_IP_1_0_Lab2_IP_v1_0_S00_AXI Lab2_IP_v1_0_S00_AXI_inst
       (.S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(s_axi_awready),
        .S_AXI_WREADY(S_AXI_WREADY),
        .cal_result(cal_result),
        .data_in1(\slv_reg1_reg[15] ),
        .data_in2(Q),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .sel(\slv_reg0_reg[2] ));
endmodule

module Lab2_two_slaves_Lab2_IP_1_0_Lab2_IP_v1_0_S00_AXI
   (data_in2,
    data_in1,
    S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    sel,
    cal_result,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output [15:0]data_in2;
  output [15:0]data_in1;
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [2:0]sel;
  output [31:0]cal_result;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_aclk;
  input [2:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input [2:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire \axi_araddr[4]_i_1_n_0 ;
  wire axi_arready0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire \axi_awaddr[4]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[0]_i_3_n_0 ;
  wire \axi_rdata[10]_i_3_n_0 ;
  wire \axi_rdata[11]_i_3_n_0 ;
  wire \axi_rdata[12]_i_3_n_0 ;
  wire \axi_rdata[13]_i_3_n_0 ;
  wire \axi_rdata[14]_i_3_n_0 ;
  wire \axi_rdata[15]_i_3_n_0 ;
  wire \axi_rdata[16]_i_3_n_0 ;
  wire \axi_rdata[17]_i_3_n_0 ;
  wire \axi_rdata[18]_i_3_n_0 ;
  wire \axi_rdata[19]_i_3_n_0 ;
  wire \axi_rdata[1]_i_3_n_0 ;
  wire \axi_rdata[20]_i_3_n_0 ;
  wire \axi_rdata[21]_i_3_n_0 ;
  wire \axi_rdata[22]_i_3_n_0 ;
  wire \axi_rdata[23]_i_3_n_0 ;
  wire \axi_rdata[24]_i_3_n_0 ;
  wire \axi_rdata[25]_i_3_n_0 ;
  wire \axi_rdata[26]_i_3_n_0 ;
  wire \axi_rdata[27]_i_3_n_0 ;
  wire \axi_rdata[28]_i_3_n_0 ;
  wire \axi_rdata[29]_i_3_n_0 ;
  wire \axi_rdata[2]_i_3_n_0 ;
  wire \axi_rdata[30]_i_3_n_0 ;
  wire \axi_rdata[31]_i_3_n_0 ;
  wire \axi_rdata[3]_i_3_n_0 ;
  wire \axi_rdata[4]_i_3_n_0 ;
  wire \axi_rdata[5]_i_3_n_0 ;
  wire \axi_rdata[6]_i_3_n_0 ;
  wire \axi_rdata[7]_i_3_n_0 ;
  wire \axi_rdata[8]_i_3_n_0 ;
  wire \axi_rdata[9]_i_3_n_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire [31:0]cal_result;
  wire [16:0]cal_result01_in;
  wire \cal_result_reg[11]_i_2_n_0 ;
  wire \cal_result_reg[11]_i_2_n_1 ;
  wire \cal_result_reg[11]_i_2_n_2 ;
  wire \cal_result_reg[11]_i_2_n_3 ;
  wire \cal_result_reg[15]_i_2_n_0 ;
  wire \cal_result_reg[15]_i_2_n_1 ;
  wire \cal_result_reg[15]_i_2_n_2 ;
  wire \cal_result_reg[15]_i_2_n_3 ;
  wire \cal_result_reg[3]_i_2_n_0 ;
  wire \cal_result_reg[3]_i_2_n_1 ;
  wire \cal_result_reg[3]_i_2_n_2 ;
  wire \cal_result_reg[3]_i_2_n_3 ;
  wire \cal_result_reg[7]_i_2_n_0 ;
  wire \cal_result_reg[7]_i_2_n_1 ;
  wire \cal_result_reg[7]_i_2_n_2 ;
  wire \cal_result_reg[7]_i_2_n_3 ;
  wire [15:0]data_in1;
  wire [15:0]data_in2;
  wire [2:0]p_0_in;
  wire [31:2]p_1_in;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [2:0]sel;
  wire [2:0]sel0;
  wire [31:3]slv_reg0;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire \slv_reg1_reg_n_0_[16] ;
  wire \slv_reg1_reg_n_0_[17] ;
  wire \slv_reg1_reg_n_0_[18] ;
  wire \slv_reg1_reg_n_0_[19] ;
  wire \slv_reg1_reg_n_0_[20] ;
  wire \slv_reg1_reg_n_0_[21] ;
  wire \slv_reg1_reg_n_0_[22] ;
  wire \slv_reg1_reg_n_0_[23] ;
  wire \slv_reg1_reg_n_0_[24] ;
  wire \slv_reg1_reg_n_0_[25] ;
  wire \slv_reg1_reg_n_0_[26] ;
  wire \slv_reg1_reg_n_0_[27] ;
  wire \slv_reg1_reg_n_0_[28] ;
  wire \slv_reg1_reg_n_0_[29] ;
  wire \slv_reg1_reg_n_0_[30] ;
  wire \slv_reg1_reg_n_0_[31] ;
  wire [31:16]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:0]slv_reg4;
  wire \slv_reg4[15]_i_1_n_0 ;
  wire \slv_reg4[23]_i_1_n_0 ;
  wire \slv_reg4[31]_i_1_n_0 ;
  wire \slv_reg4[7]_i_1_n_0 ;
  wire [31:0]slv_reg5;
  wire \slv_reg5[15]_i_1_n_0 ;
  wire \slv_reg5[23]_i_1_n_0 ;
  wire \slv_reg5[31]_i_1_n_0 ;
  wire \slv_reg5[7]_i_1_n_0 ;
  wire [31:0]slv_reg6;
  wire \slv_reg6[15]_i_1_n_0 ;
  wire \slv_reg6[23]_i_1_n_0 ;
  wire \slv_reg6[31]_i_1_n_0 ;
  wire \slv_reg6[7]_i_1_n_0 ;
  wire [31:0]slv_reg7;
  wire \slv_reg7[15]_i_1_n_0 ;
  wire \slv_reg7[23]_i_1_n_0 ;
  wire \slv_reg7[31]_i_1_n_0 ;
  wire \slv_reg7[7]_i_1_n_0 ;
  wire slv_reg_rden__0;
  wire slv_reg_wren__0;
  wire u_calculator_n_64;
  wire u_calculator_n_65;
  wire u_calculator_n_66;
  wire u_calculator_n_67;
  wire u_calculator_n_68;
  wire u_calculator_n_69;
  wire u_calculator_n_70;
  wire u_calculator_n_71;
  wire u_calculator_n_72;
  wire u_calculator_n_73;
  wire u_calculator_n_74;
  wire u_calculator_n_75;
  wire u_calculator_n_76;
  wire u_calculator_n_77;
  wire u_calculator_n_78;
  wire u_calculator_n_79;
  wire u_calculator_n_80;
  wire [3:1]\NLW_cal_result_reg[16]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_cal_result_reg[16]_i_2_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hF7FFC4CCC4CCC4CC)) 
    aw_en_i_1
       (.I0(s00_axi_awvalid),
        .I1(aw_en_reg_n_0),
        .I2(S_AXI_AWREADY),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(u_calculator_n_64));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(sel0[0]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(sel0[1]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[4]_i_1 
       (.I0(s00_axi_araddr[2]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(sel0[2]),
        .O(\axi_araddr[4]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(sel0[0]),
        .R(u_calculator_n_64));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(sel0[1]),
        .R(u_calculator_n_64));
  FDRE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[4]_i_1_n_0 ),
        .Q(sel0[2]),
        .R(u_calculator_n_64));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(u_calculator_n_64));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_awvalid),
        .I5(p_0_in[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_awvalid),
        .I5(p_0_in[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[4]_i_1 
       (.I0(s00_axi_awaddr[2]),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_awvalid),
        .I5(p_0_in[2]),
        .O(\axi_awaddr[4]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(u_calculator_n_64));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(u_calculator_n_64));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[4]_i_1_n_0 ),
        .Q(p_0_in[2]),
        .R(u_calculator_n_64));
  LUT4 #(
    .INIT(16'h2000)) 
    axi_awready_i_2
       (.I0(s00_axi_wvalid),
        .I1(S_AXI_AWREADY),
        .I2(aw_en_reg_n_0),
        .I3(s00_axi_awvalid),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(u_calculator_n_64));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_WREADY),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(u_calculator_n_64));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_3 
       (.I0(slv_reg7[0]),
        .I1(slv_reg6[0]),
        .I2(sel0[1]),
        .I3(slv_reg5[0]),
        .I4(sel0[0]),
        .I5(slv_reg4[0]),
        .O(\axi_rdata[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_3 
       (.I0(slv_reg7[10]),
        .I1(slv_reg6[10]),
        .I2(sel0[1]),
        .I3(slv_reg5[10]),
        .I4(sel0[0]),
        .I5(slv_reg4[10]),
        .O(\axi_rdata[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_3 
       (.I0(slv_reg7[11]),
        .I1(slv_reg6[11]),
        .I2(sel0[1]),
        .I3(slv_reg5[11]),
        .I4(sel0[0]),
        .I5(slv_reg4[11]),
        .O(\axi_rdata[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_3 
       (.I0(slv_reg7[12]),
        .I1(slv_reg6[12]),
        .I2(sel0[1]),
        .I3(slv_reg5[12]),
        .I4(sel0[0]),
        .I5(slv_reg4[12]),
        .O(\axi_rdata[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_3 
       (.I0(slv_reg7[13]),
        .I1(slv_reg6[13]),
        .I2(sel0[1]),
        .I3(slv_reg5[13]),
        .I4(sel0[0]),
        .I5(slv_reg4[13]),
        .O(\axi_rdata[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_3 
       (.I0(slv_reg7[14]),
        .I1(slv_reg6[14]),
        .I2(sel0[1]),
        .I3(slv_reg5[14]),
        .I4(sel0[0]),
        .I5(slv_reg4[14]),
        .O(\axi_rdata[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_3 
       (.I0(slv_reg7[15]),
        .I1(slv_reg6[15]),
        .I2(sel0[1]),
        .I3(slv_reg5[15]),
        .I4(sel0[0]),
        .I5(slv_reg4[15]),
        .O(\axi_rdata[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_3 
       (.I0(slv_reg7[16]),
        .I1(slv_reg6[16]),
        .I2(sel0[1]),
        .I3(slv_reg5[16]),
        .I4(sel0[0]),
        .I5(slv_reg4[16]),
        .O(\axi_rdata[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_3 
       (.I0(slv_reg7[17]),
        .I1(slv_reg6[17]),
        .I2(sel0[1]),
        .I3(slv_reg5[17]),
        .I4(sel0[0]),
        .I5(slv_reg4[17]),
        .O(\axi_rdata[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_3 
       (.I0(slv_reg7[18]),
        .I1(slv_reg6[18]),
        .I2(sel0[1]),
        .I3(slv_reg5[18]),
        .I4(sel0[0]),
        .I5(slv_reg4[18]),
        .O(\axi_rdata[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_3 
       (.I0(slv_reg7[19]),
        .I1(slv_reg6[19]),
        .I2(sel0[1]),
        .I3(slv_reg5[19]),
        .I4(sel0[0]),
        .I5(slv_reg4[19]),
        .O(\axi_rdata[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_3 
       (.I0(slv_reg7[1]),
        .I1(slv_reg6[1]),
        .I2(sel0[1]),
        .I3(slv_reg5[1]),
        .I4(sel0[0]),
        .I5(slv_reg4[1]),
        .O(\axi_rdata[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_3 
       (.I0(slv_reg7[20]),
        .I1(slv_reg6[20]),
        .I2(sel0[1]),
        .I3(slv_reg5[20]),
        .I4(sel0[0]),
        .I5(slv_reg4[20]),
        .O(\axi_rdata[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_3 
       (.I0(slv_reg7[21]),
        .I1(slv_reg6[21]),
        .I2(sel0[1]),
        .I3(slv_reg5[21]),
        .I4(sel0[0]),
        .I5(slv_reg4[21]),
        .O(\axi_rdata[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_3 
       (.I0(slv_reg7[22]),
        .I1(slv_reg6[22]),
        .I2(sel0[1]),
        .I3(slv_reg5[22]),
        .I4(sel0[0]),
        .I5(slv_reg4[22]),
        .O(\axi_rdata[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_3 
       (.I0(slv_reg7[23]),
        .I1(slv_reg6[23]),
        .I2(sel0[1]),
        .I3(slv_reg5[23]),
        .I4(sel0[0]),
        .I5(slv_reg4[23]),
        .O(\axi_rdata[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_3 
       (.I0(slv_reg7[24]),
        .I1(slv_reg6[24]),
        .I2(sel0[1]),
        .I3(slv_reg5[24]),
        .I4(sel0[0]),
        .I5(slv_reg4[24]),
        .O(\axi_rdata[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_3 
       (.I0(slv_reg7[25]),
        .I1(slv_reg6[25]),
        .I2(sel0[1]),
        .I3(slv_reg5[25]),
        .I4(sel0[0]),
        .I5(slv_reg4[25]),
        .O(\axi_rdata[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_3 
       (.I0(slv_reg7[26]),
        .I1(slv_reg6[26]),
        .I2(sel0[1]),
        .I3(slv_reg5[26]),
        .I4(sel0[0]),
        .I5(slv_reg4[26]),
        .O(\axi_rdata[26]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_3 
       (.I0(slv_reg7[27]),
        .I1(slv_reg6[27]),
        .I2(sel0[1]),
        .I3(slv_reg5[27]),
        .I4(sel0[0]),
        .I5(slv_reg4[27]),
        .O(\axi_rdata[27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_3 
       (.I0(slv_reg7[28]),
        .I1(slv_reg6[28]),
        .I2(sel0[1]),
        .I3(slv_reg5[28]),
        .I4(sel0[0]),
        .I5(slv_reg4[28]),
        .O(\axi_rdata[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_3 
       (.I0(slv_reg7[29]),
        .I1(slv_reg6[29]),
        .I2(sel0[1]),
        .I3(slv_reg5[29]),
        .I4(sel0[0]),
        .I5(slv_reg4[29]),
        .O(\axi_rdata[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_3 
       (.I0(slv_reg7[2]),
        .I1(slv_reg6[2]),
        .I2(sel0[1]),
        .I3(slv_reg5[2]),
        .I4(sel0[0]),
        .I5(slv_reg4[2]),
        .O(\axi_rdata[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_3 
       (.I0(slv_reg7[30]),
        .I1(slv_reg6[30]),
        .I2(sel0[1]),
        .I3(slv_reg5[30]),
        .I4(sel0[0]),
        .I5(slv_reg4[30]),
        .O(\axi_rdata[30]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_3 
       (.I0(slv_reg7[31]),
        .I1(slv_reg6[31]),
        .I2(sel0[1]),
        .I3(slv_reg5[31]),
        .I4(sel0[0]),
        .I5(slv_reg4[31]),
        .O(\axi_rdata[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_3 
       (.I0(slv_reg7[3]),
        .I1(slv_reg6[3]),
        .I2(sel0[1]),
        .I3(slv_reg5[3]),
        .I4(sel0[0]),
        .I5(slv_reg4[3]),
        .O(\axi_rdata[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_3 
       (.I0(slv_reg7[4]),
        .I1(slv_reg6[4]),
        .I2(sel0[1]),
        .I3(slv_reg5[4]),
        .I4(sel0[0]),
        .I5(slv_reg4[4]),
        .O(\axi_rdata[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_3 
       (.I0(slv_reg7[5]),
        .I1(slv_reg6[5]),
        .I2(sel0[1]),
        .I3(slv_reg5[5]),
        .I4(sel0[0]),
        .I5(slv_reg4[5]),
        .O(\axi_rdata[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_3 
       (.I0(slv_reg7[6]),
        .I1(slv_reg6[6]),
        .I2(sel0[1]),
        .I3(slv_reg5[6]),
        .I4(sel0[0]),
        .I5(slv_reg4[6]),
        .O(\axi_rdata[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_3 
       (.I0(slv_reg7[7]),
        .I1(slv_reg6[7]),
        .I2(sel0[1]),
        .I3(slv_reg5[7]),
        .I4(sel0[0]),
        .I5(slv_reg4[7]),
        .O(\axi_rdata[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_3 
       (.I0(slv_reg7[8]),
        .I1(slv_reg6[8]),
        .I2(sel0[1]),
        .I3(slv_reg5[8]),
        .I4(sel0[0]),
        .I5(slv_reg4[8]),
        .O(\axi_rdata[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_3 
       (.I0(slv_reg7[9]),
        .I1(slv_reg6[9]),
        .I2(sel0[1]),
        .I3(slv_reg5[9]),
        .I4(sel0[0]),
        .I5(slv_reg4[9]),
        .O(\axi_rdata[9]_i_3_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(u_calculator_n_64));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(u_calculator_n_64));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(u_calculator_n_64));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(u_calculator_n_64));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(u_calculator_n_64));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(u_calculator_n_64));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(u_calculator_n_64));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(u_calculator_n_64));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(u_calculator_n_64));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(u_calculator_n_64));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(u_calculator_n_64));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(u_calculator_n_64));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(u_calculator_n_64));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(u_calculator_n_64));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(u_calculator_n_64));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(u_calculator_n_64));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(u_calculator_n_64));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(u_calculator_n_64));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(u_calculator_n_64));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(u_calculator_n_64));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(u_calculator_n_64));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(u_calculator_n_64));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(u_calculator_n_64));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(u_calculator_n_64));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(u_calculator_n_64));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(u_calculator_n_64));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(u_calculator_n_64));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(u_calculator_n_64));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(u_calculator_n_64));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(u_calculator_n_64));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(u_calculator_n_64));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(u_calculator_n_64));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(u_calculator_n_64));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_WREADY),
        .I3(aw_en_reg_n_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(u_calculator_n_64));
  CARRY4 \cal_result_reg[11]_i_2 
       (.CI(\cal_result_reg[7]_i_2_n_0 ),
        .CO({\cal_result_reg[11]_i_2_n_0 ,\cal_result_reg[11]_i_2_n_1 ,\cal_result_reg[11]_i_2_n_2 ,\cal_result_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(data_in1[11:8]),
        .O(cal_result01_in[11:8]),
        .S({u_calculator_n_73,u_calculator_n_74,u_calculator_n_75,u_calculator_n_76}));
  CARRY4 \cal_result_reg[15]_i_2 
       (.CI(\cal_result_reg[11]_i_2_n_0 ),
        .CO({\cal_result_reg[15]_i_2_n_0 ,\cal_result_reg[15]_i_2_n_1 ,\cal_result_reg[15]_i_2_n_2 ,\cal_result_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(data_in1[15:12]),
        .O(cal_result01_in[15:12]),
        .S({u_calculator_n_77,u_calculator_n_78,u_calculator_n_79,u_calculator_n_80}));
  CARRY4 \cal_result_reg[16]_i_2 
       (.CI(\cal_result_reg[15]_i_2_n_0 ),
        .CO({\NLW_cal_result_reg[16]_i_2_CO_UNCONNECTED [3:1],cal_result01_in[16]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_cal_result_reg[16]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 \cal_result_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\cal_result_reg[3]_i_2_n_0 ,\cal_result_reg[3]_i_2_n_1 ,\cal_result_reg[3]_i_2_n_2 ,\cal_result_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(data_in1[3:0]),
        .O(cal_result01_in[3:0]),
        .S({u_calculator_n_65,u_calculator_n_66,u_calculator_n_67,u_calculator_n_68}));
  CARRY4 \cal_result_reg[7]_i_2 
       (.CI(\cal_result_reg[3]_i_2_n_0 ),
        .CO({\cal_result_reg[7]_i_2_n_0 ,\cal_result_reg[7]_i_2_n_1 ,\cal_result_reg[7]_i_2_n_2 ,\cal_result_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(data_in1[7:4]),
        .O(cal_result01_in[7:4]),
        .S({u_calculator_n_69,u_calculator_n_70,u_calculator_n_71,u_calculator_n_72}));
  LUT5 #(
    .INIT(32'h00020000)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[1]),
        .O(p_1_in[15]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[2]),
        .O(p_1_in[23]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \slv_reg0[2]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[0]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg0[2]_i_2 
       (.I0(S_AXI_WREADY),
        .I1(S_AXI_AWREADY),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__0));
  LUT5 #(
    .INIT(32'h00020000)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[3]),
        .O(p_1_in[31]));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[2]),
        .D(s00_axi_wdata[0]),
        .Q(sel[0]),
        .R(u_calculator_n_64));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg0[10]),
        .R(u_calculator_n_64));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg0[11]),
        .R(u_calculator_n_64));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg0[12]),
        .R(u_calculator_n_64));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg0[13]),
        .R(u_calculator_n_64));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg0[14]),
        .R(u_calculator_n_64));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg0[15]),
        .R(u_calculator_n_64));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg0[16]),
        .R(u_calculator_n_64));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg0[17]),
        .R(u_calculator_n_64));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg0[18]),
        .R(u_calculator_n_64));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg0[19]),
        .R(u_calculator_n_64));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[2]),
        .D(s00_axi_wdata[1]),
        .Q(sel[1]),
        .R(u_calculator_n_64));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg0[20]),
        .R(u_calculator_n_64));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg0[21]),
        .R(u_calculator_n_64));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg0[22]),
        .R(u_calculator_n_64));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg0[23]),
        .R(u_calculator_n_64));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg0[24]),
        .R(u_calculator_n_64));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg0[25]),
        .R(u_calculator_n_64));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg0[26]),
        .R(u_calculator_n_64));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg0[27]),
        .R(u_calculator_n_64));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg0[28]),
        .R(u_calculator_n_64));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg0[29]),
        .R(u_calculator_n_64));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[2]),
        .D(s00_axi_wdata[2]),
        .Q(sel[2]),
        .R(u_calculator_n_64));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg0[30]),
        .R(u_calculator_n_64));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg0[31]),
        .R(u_calculator_n_64));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[2]),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg0[3]),
        .R(u_calculator_n_64));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[2]),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg0[4]),
        .R(u_calculator_n_64));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[2]),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg0[5]),
        .R(u_calculator_n_64));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[2]),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg0[6]),
        .R(u_calculator_n_64));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[2]),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg0[7]),
        .R(u_calculator_n_64));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg0[8]),
        .R(u_calculator_n_64));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg0[9]),
        .R(u_calculator_n_64));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg1[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(s00_axi_wstrb[1]),
        .I4(p_0_in[0]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg1[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(s00_axi_wstrb[2]),
        .I4(p_0_in[0]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg1[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(s00_axi_wstrb[3]),
        .I4(p_0_in[0]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg1[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(s00_axi_wstrb[0]),
        .I4(p_0_in[0]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(data_in1[0]),
        .R(u_calculator_n_64));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(data_in1[10]),
        .R(u_calculator_n_64));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(data_in1[11]),
        .R(u_calculator_n_64));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(data_in1[12]),
        .R(u_calculator_n_64));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(data_in1[13]),
        .R(u_calculator_n_64));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(data_in1[14]),
        .R(u_calculator_n_64));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(data_in1[15]),
        .R(u_calculator_n_64));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg1_reg_n_0_[16] ),
        .R(u_calculator_n_64));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg1_reg_n_0_[17] ),
        .R(u_calculator_n_64));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg1_reg_n_0_[18] ),
        .R(u_calculator_n_64));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg1_reg_n_0_[19] ),
        .R(u_calculator_n_64));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(data_in1[1]),
        .R(u_calculator_n_64));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg1_reg_n_0_[20] ),
        .R(u_calculator_n_64));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg1_reg_n_0_[21] ),
        .R(u_calculator_n_64));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg1_reg_n_0_[22] ),
        .R(u_calculator_n_64));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg1_reg_n_0_[23] ),
        .R(u_calculator_n_64));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg1_reg_n_0_[24] ),
        .R(u_calculator_n_64));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg1_reg_n_0_[25] ),
        .R(u_calculator_n_64));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg1_reg_n_0_[26] ),
        .R(u_calculator_n_64));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg1_reg_n_0_[27] ),
        .R(u_calculator_n_64));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg1_reg_n_0_[28] ),
        .R(u_calculator_n_64));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg1_reg_n_0_[29] ),
        .R(u_calculator_n_64));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(data_in1[2]),
        .R(u_calculator_n_64));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg1_reg_n_0_[30] ),
        .R(u_calculator_n_64));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg1_reg_n_0_[31] ),
        .R(u_calculator_n_64));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(data_in1[3]),
        .R(u_calculator_n_64));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(data_in1[4]),
        .R(u_calculator_n_64));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(data_in1[5]),
        .R(u_calculator_n_64));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(data_in1[6]),
        .R(u_calculator_n_64));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(data_in1[7]),
        .R(u_calculator_n_64));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(data_in1[8]),
        .R(u_calculator_n_64));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(data_in1[9]),
        .R(u_calculator_n_64));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[1]),
        .I4(p_0_in[1]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[2]),
        .I4(p_0_in[1]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[3]),
        .I4(p_0_in[1]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[0]),
        .I4(p_0_in[1]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(data_in2[0]),
        .R(u_calculator_n_64));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(data_in2[10]),
        .R(u_calculator_n_64));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(data_in2[11]),
        .R(u_calculator_n_64));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(data_in2[12]),
        .R(u_calculator_n_64));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(data_in2[13]),
        .R(u_calculator_n_64));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(data_in2[14]),
        .R(u_calculator_n_64));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(data_in2[15]),
        .R(u_calculator_n_64));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(u_calculator_n_64));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(u_calculator_n_64));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(u_calculator_n_64));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(u_calculator_n_64));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(data_in2[1]),
        .R(u_calculator_n_64));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(u_calculator_n_64));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(u_calculator_n_64));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(u_calculator_n_64));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(u_calculator_n_64));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(u_calculator_n_64));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(u_calculator_n_64));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(u_calculator_n_64));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(u_calculator_n_64));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(u_calculator_n_64));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(u_calculator_n_64));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(data_in2[2]),
        .R(u_calculator_n_64));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(u_calculator_n_64));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(u_calculator_n_64));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(data_in2[3]),
        .R(u_calculator_n_64));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(data_in2[4]),
        .R(u_calculator_n_64));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(data_in2[5]),
        .R(u_calculator_n_64));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(data_in2[6]),
        .R(u_calculator_n_64));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(data_in2[7]),
        .R(u_calculator_n_64));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(data_in2[8]),
        .R(u_calculator_n_64));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(data_in2[9]),
        .R(u_calculator_n_64));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg4[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[1]),
        .O(\slv_reg4[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg4[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[2]),
        .O(\slv_reg4[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg4[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[3]),
        .O(\slv_reg4[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg4[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[0]),
        .O(\slv_reg4[7]_i_1_n_0 ));
  FDRE \slv_reg4_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg4[0]),
        .R(u_calculator_n_64));
  FDRE \slv_reg4_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg4[10]),
        .R(u_calculator_n_64));
  FDRE \slv_reg4_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg4[11]),
        .R(u_calculator_n_64));
  FDRE \slv_reg4_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg4[12]),
        .R(u_calculator_n_64));
  FDRE \slv_reg4_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg4[13]),
        .R(u_calculator_n_64));
  FDRE \slv_reg4_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg4[14]),
        .R(u_calculator_n_64));
  FDRE \slv_reg4_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg4[15]),
        .R(u_calculator_n_64));
  FDRE \slv_reg4_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg4[16]),
        .R(u_calculator_n_64));
  FDRE \slv_reg4_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg4[17]),
        .R(u_calculator_n_64));
  FDRE \slv_reg4_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg4[18]),
        .R(u_calculator_n_64));
  FDRE \slv_reg4_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg4[19]),
        .R(u_calculator_n_64));
  FDRE \slv_reg4_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg4[1]),
        .R(u_calculator_n_64));
  FDRE \slv_reg4_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg4[20]),
        .R(u_calculator_n_64));
  FDRE \slv_reg4_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg4[21]),
        .R(u_calculator_n_64));
  FDRE \slv_reg4_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg4[22]),
        .R(u_calculator_n_64));
  FDRE \slv_reg4_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg4[23]),
        .R(u_calculator_n_64));
  FDRE \slv_reg4_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg4[24]),
        .R(u_calculator_n_64));
  FDRE \slv_reg4_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg4[25]),
        .R(u_calculator_n_64));
  FDRE \slv_reg4_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg4[26]),
        .R(u_calculator_n_64));
  FDRE \slv_reg4_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg4[27]),
        .R(u_calculator_n_64));
  FDRE \slv_reg4_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg4[28]),
        .R(u_calculator_n_64));
  FDRE \slv_reg4_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg4[29]),
        .R(u_calculator_n_64));
  FDRE \slv_reg4_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg4[2]),
        .R(u_calculator_n_64));
  FDRE \slv_reg4_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg4[30]),
        .R(u_calculator_n_64));
  FDRE \slv_reg4_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg4[31]),
        .R(u_calculator_n_64));
  FDRE \slv_reg4_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg4[3]),
        .R(u_calculator_n_64));
  FDRE \slv_reg4_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg4[4]),
        .R(u_calculator_n_64));
  FDRE \slv_reg4_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg4[5]),
        .R(u_calculator_n_64));
  FDRE \slv_reg4_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg4[6]),
        .R(u_calculator_n_64));
  FDRE \slv_reg4_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg4[7]),
        .R(u_calculator_n_64));
  FDRE \slv_reg4_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg4[8]),
        .R(u_calculator_n_64));
  FDRE \slv_reg4_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg4[9]),
        .R(u_calculator_n_64));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg5[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .O(\slv_reg5[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg5[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .O(\slv_reg5[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg5[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .O(\slv_reg5[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg5[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .O(\slv_reg5[7]_i_1_n_0 ));
  FDRE \slv_reg5_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg5[0]),
        .R(u_calculator_n_64));
  FDRE \slv_reg5_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg5[10]),
        .R(u_calculator_n_64));
  FDRE \slv_reg5_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg5[11]),
        .R(u_calculator_n_64));
  FDRE \slv_reg5_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg5[12]),
        .R(u_calculator_n_64));
  FDRE \slv_reg5_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg5[13]),
        .R(u_calculator_n_64));
  FDRE \slv_reg5_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg5[14]),
        .R(u_calculator_n_64));
  FDRE \slv_reg5_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg5[15]),
        .R(u_calculator_n_64));
  FDRE \slv_reg5_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg5[16]),
        .R(u_calculator_n_64));
  FDRE \slv_reg5_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg5[17]),
        .R(u_calculator_n_64));
  FDRE \slv_reg5_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg5[18]),
        .R(u_calculator_n_64));
  FDRE \slv_reg5_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg5[19]),
        .R(u_calculator_n_64));
  FDRE \slv_reg5_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg5[1]),
        .R(u_calculator_n_64));
  FDRE \slv_reg5_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg5[20]),
        .R(u_calculator_n_64));
  FDRE \slv_reg5_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg5[21]),
        .R(u_calculator_n_64));
  FDRE \slv_reg5_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg5[22]),
        .R(u_calculator_n_64));
  FDRE \slv_reg5_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg5[23]),
        .R(u_calculator_n_64));
  FDRE \slv_reg5_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg5[24]),
        .R(u_calculator_n_64));
  FDRE \slv_reg5_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg5[25]),
        .R(u_calculator_n_64));
  FDRE \slv_reg5_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg5[26]),
        .R(u_calculator_n_64));
  FDRE \slv_reg5_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg5[27]),
        .R(u_calculator_n_64));
  FDRE \slv_reg5_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg5[28]),
        .R(u_calculator_n_64));
  FDRE \slv_reg5_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg5[29]),
        .R(u_calculator_n_64));
  FDRE \slv_reg5_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg5[2]),
        .R(u_calculator_n_64));
  FDRE \slv_reg5_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg5[30]),
        .R(u_calculator_n_64));
  FDRE \slv_reg5_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg5[31]),
        .R(u_calculator_n_64));
  FDRE \slv_reg5_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg5[3]),
        .R(u_calculator_n_64));
  FDRE \slv_reg5_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg5[4]),
        .R(u_calculator_n_64));
  FDRE \slv_reg5_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg5[5]),
        .R(u_calculator_n_64));
  FDRE \slv_reg5_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg5[6]),
        .R(u_calculator_n_64));
  FDRE \slv_reg5_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg5[7]),
        .R(u_calculator_n_64));
  FDRE \slv_reg5_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg5[8]),
        .R(u_calculator_n_64));
  FDRE \slv_reg5_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg5[9]),
        .R(u_calculator_n_64));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg6[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(s00_axi_wstrb[1]),
        .I4(p_0_in[2]),
        .O(\slv_reg6[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg6[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(s00_axi_wstrb[2]),
        .I4(p_0_in[2]),
        .O(\slv_reg6[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg6[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(s00_axi_wstrb[3]),
        .I4(p_0_in[2]),
        .O(\slv_reg6[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg6[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(s00_axi_wstrb[0]),
        .I4(p_0_in[2]),
        .O(\slv_reg6[7]_i_1_n_0 ));
  FDRE \slv_reg6_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg6[0]),
        .R(u_calculator_n_64));
  FDRE \slv_reg6_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg6[10]),
        .R(u_calculator_n_64));
  FDRE \slv_reg6_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg6[11]),
        .R(u_calculator_n_64));
  FDRE \slv_reg6_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg6[12]),
        .R(u_calculator_n_64));
  FDRE \slv_reg6_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg6[13]),
        .R(u_calculator_n_64));
  FDRE \slv_reg6_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg6[14]),
        .R(u_calculator_n_64));
  FDRE \slv_reg6_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg6[15]),
        .R(u_calculator_n_64));
  FDRE \slv_reg6_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg6[16]),
        .R(u_calculator_n_64));
  FDRE \slv_reg6_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg6[17]),
        .R(u_calculator_n_64));
  FDRE \slv_reg6_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg6[18]),
        .R(u_calculator_n_64));
  FDRE \slv_reg6_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg6[19]),
        .R(u_calculator_n_64));
  FDRE \slv_reg6_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg6[1]),
        .R(u_calculator_n_64));
  FDRE \slv_reg6_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg6[20]),
        .R(u_calculator_n_64));
  FDRE \slv_reg6_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg6[21]),
        .R(u_calculator_n_64));
  FDRE \slv_reg6_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg6[22]),
        .R(u_calculator_n_64));
  FDRE \slv_reg6_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg6[23]),
        .R(u_calculator_n_64));
  FDRE \slv_reg6_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg6[24]),
        .R(u_calculator_n_64));
  FDRE \slv_reg6_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg6[25]),
        .R(u_calculator_n_64));
  FDRE \slv_reg6_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg6[26]),
        .R(u_calculator_n_64));
  FDRE \slv_reg6_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg6[27]),
        .R(u_calculator_n_64));
  FDRE \slv_reg6_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg6[28]),
        .R(u_calculator_n_64));
  FDRE \slv_reg6_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg6[29]),
        .R(u_calculator_n_64));
  FDRE \slv_reg6_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg6[2]),
        .R(u_calculator_n_64));
  FDRE \slv_reg6_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg6[30]),
        .R(u_calculator_n_64));
  FDRE \slv_reg6_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg6[31]),
        .R(u_calculator_n_64));
  FDRE \slv_reg6_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg6[3]),
        .R(u_calculator_n_64));
  FDRE \slv_reg6_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg6[4]),
        .R(u_calculator_n_64));
  FDRE \slv_reg6_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg6[5]),
        .R(u_calculator_n_64));
  FDRE \slv_reg6_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg6[6]),
        .R(u_calculator_n_64));
  FDRE \slv_reg6_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg6[7]),
        .R(u_calculator_n_64));
  FDRE \slv_reg6_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg6[8]),
        .R(u_calculator_n_64));
  FDRE \slv_reg6_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg6[9]),
        .R(u_calculator_n_64));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg7[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[1]),
        .O(\slv_reg7[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg7[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[2]),
        .O(\slv_reg7[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg7[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[3]),
        .O(\slv_reg7[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg7[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[0]),
        .O(\slv_reg7[7]_i_1_n_0 ));
  FDRE \slv_reg7_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg7[0]),
        .R(u_calculator_n_64));
  FDRE \slv_reg7_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg7[10]),
        .R(u_calculator_n_64));
  FDRE \slv_reg7_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg7[11]),
        .R(u_calculator_n_64));
  FDRE \slv_reg7_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg7[12]),
        .R(u_calculator_n_64));
  FDRE \slv_reg7_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg7[13]),
        .R(u_calculator_n_64));
  FDRE \slv_reg7_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg7[14]),
        .R(u_calculator_n_64));
  FDRE \slv_reg7_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg7[15]),
        .R(u_calculator_n_64));
  FDRE \slv_reg7_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg7[16]),
        .R(u_calculator_n_64));
  FDRE \slv_reg7_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg7[17]),
        .R(u_calculator_n_64));
  FDRE \slv_reg7_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg7[18]),
        .R(u_calculator_n_64));
  FDRE \slv_reg7_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg7[19]),
        .R(u_calculator_n_64));
  FDRE \slv_reg7_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg7[1]),
        .R(u_calculator_n_64));
  FDRE \slv_reg7_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg7[20]),
        .R(u_calculator_n_64));
  FDRE \slv_reg7_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg7[21]),
        .R(u_calculator_n_64));
  FDRE \slv_reg7_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg7[22]),
        .R(u_calculator_n_64));
  FDRE \slv_reg7_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg7[23]),
        .R(u_calculator_n_64));
  FDRE \slv_reg7_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg7[24]),
        .R(u_calculator_n_64));
  FDRE \slv_reg7_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg7[25]),
        .R(u_calculator_n_64));
  FDRE \slv_reg7_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg7[26]),
        .R(u_calculator_n_64));
  FDRE \slv_reg7_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg7[27]),
        .R(u_calculator_n_64));
  FDRE \slv_reg7_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg7[28]),
        .R(u_calculator_n_64));
  FDRE \slv_reg7_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg7[29]),
        .R(u_calculator_n_64));
  FDRE \slv_reg7_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg7[2]),
        .R(u_calculator_n_64));
  FDRE \slv_reg7_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg7[30]),
        .R(u_calculator_n_64));
  FDRE \slv_reg7_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg7[31]),
        .R(u_calculator_n_64));
  FDRE \slv_reg7_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg7[3]),
        .R(u_calculator_n_64));
  FDRE \slv_reg7_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg7[4]),
        .R(u_calculator_n_64));
  FDRE \slv_reg7_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg7[5]),
        .R(u_calculator_n_64));
  FDRE \slv_reg7_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg7[6]),
        .R(u_calculator_n_64));
  FDRE \slv_reg7_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg7[7]),
        .R(u_calculator_n_64));
  FDRE \slv_reg7_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg7[8]),
        .R(u_calculator_n_64));
  FDRE \slv_reg7_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg7[9]),
        .R(u_calculator_n_64));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_rvalid),
        .I2(S_AXI_ARREADY),
        .O(slv_reg_rden__0));
  Lab2_two_slaves_Lab2_IP_1_0_Calculator u_calculator
       (.D(reg_data_out),
        .Q({slv_reg2,data_in2}),
        .S({u_calculator_n_65,u_calculator_n_66,u_calculator_n_67,u_calculator_n_68}),
        .SR(u_calculator_n_64),
        .\axi_rdata_reg[0] (\axi_rdata[0]_i_3_n_0 ),
        .\axi_rdata_reg[10] (\axi_rdata[10]_i_3_n_0 ),
        .\axi_rdata_reg[11] (\axi_rdata[11]_i_3_n_0 ),
        .\axi_rdata_reg[12] (\axi_rdata[12]_i_3_n_0 ),
        .\axi_rdata_reg[13] (\axi_rdata[13]_i_3_n_0 ),
        .\axi_rdata_reg[14] (\axi_rdata[14]_i_3_n_0 ),
        .\axi_rdata_reg[15] (\axi_rdata[15]_i_3_n_0 ),
        .\axi_rdata_reg[16] (\axi_rdata[16]_i_3_n_0 ),
        .\axi_rdata_reg[17] (\axi_rdata[17]_i_3_n_0 ),
        .\axi_rdata_reg[18] (\axi_rdata[18]_i_3_n_0 ),
        .\axi_rdata_reg[19] (\axi_rdata[19]_i_3_n_0 ),
        .\axi_rdata_reg[1] (\axi_rdata[1]_i_3_n_0 ),
        .\axi_rdata_reg[20] (\axi_rdata[20]_i_3_n_0 ),
        .\axi_rdata_reg[21] (\axi_rdata[21]_i_3_n_0 ),
        .\axi_rdata_reg[22] (\axi_rdata[22]_i_3_n_0 ),
        .\axi_rdata_reg[23] (\axi_rdata[23]_i_3_n_0 ),
        .\axi_rdata_reg[24] (\axi_rdata[24]_i_3_n_0 ),
        .\axi_rdata_reg[25] (\axi_rdata[25]_i_3_n_0 ),
        .\axi_rdata_reg[26] (\axi_rdata[26]_i_3_n_0 ),
        .\axi_rdata_reg[27] (\axi_rdata[27]_i_3_n_0 ),
        .\axi_rdata_reg[28] (\axi_rdata[28]_i_3_n_0 ),
        .\axi_rdata_reg[29] (\axi_rdata[29]_i_3_n_0 ),
        .\axi_rdata_reg[2] (\axi_rdata[2]_i_3_n_0 ),
        .\axi_rdata_reg[30] (\axi_rdata[30]_i_3_n_0 ),
        .\axi_rdata_reg[31] ({\slv_reg1_reg_n_0_[31] ,\slv_reg1_reg_n_0_[30] ,\slv_reg1_reg_n_0_[29] ,\slv_reg1_reg_n_0_[28] ,\slv_reg1_reg_n_0_[27] ,\slv_reg1_reg_n_0_[26] ,\slv_reg1_reg_n_0_[25] ,\slv_reg1_reg_n_0_[24] ,\slv_reg1_reg_n_0_[23] ,\slv_reg1_reg_n_0_[22] ,\slv_reg1_reg_n_0_[21] ,\slv_reg1_reg_n_0_[20] ,\slv_reg1_reg_n_0_[19] ,\slv_reg1_reg_n_0_[18] ,\slv_reg1_reg_n_0_[17] ,\slv_reg1_reg_n_0_[16] ,data_in1}),
        .\axi_rdata_reg[31]_0 ({slv_reg0,sel}),
        .\axi_rdata_reg[31]_1 (\axi_rdata[31]_i_3_n_0 ),
        .\axi_rdata_reg[3] (\axi_rdata[3]_i_3_n_0 ),
        .\axi_rdata_reg[4] (\axi_rdata[4]_i_3_n_0 ),
        .\axi_rdata_reg[5] (\axi_rdata[5]_i_3_n_0 ),
        .\axi_rdata_reg[6] (\axi_rdata[6]_i_3_n_0 ),
        .\axi_rdata_reg[7] (\axi_rdata[7]_i_3_n_0 ),
        .\axi_rdata_reg[8] (\axi_rdata[8]_i_3_n_0 ),
        .\axi_rdata_reg[9] (\axi_rdata[9]_i_3_n_0 ),
        .cal_result(cal_result),
        .cal_result01_in(cal_result01_in),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .sel0(sel0),
        .\slv_reg1_reg[11] ({u_calculator_n_73,u_calculator_n_74,u_calculator_n_75,u_calculator_n_76}),
        .\slv_reg1_reg[15] ({u_calculator_n_77,u_calculator_n_78,u_calculator_n_79,u_calculator_n_80}),
        .\slv_reg1_reg[7] ({u_calculator_n_69,u_calculator_n_70,u_calculator_n_71,u_calculator_n_72}));
endmodule

(* CHECK_LICENSE_TYPE = "Lab2_system_Lab2_IP_0_0,Lab2_IP_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "Lab2_IP_v1_0,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module Lab2_two_slaves_Lab2_IP_1_0
   (s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s_axi_awready,
    sel,
    data_in1,
    data_in2,
    cal_result,
    s00_axi_aclk,
    s00_axi_aresetn);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [4:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [4:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 8, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN Lab2_system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s00_axi_rready;
  output s_axi_awready;
  output [2:0]sel;
  output [15:0]data_in1;
  output [15:0]data_in2;
  output [31:0]cal_result;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN Lab2_system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire [31:0]cal_result;
  wire [15:0]data_in1;
  wire [15:0]data_in2;
  wire s00_axi_aclk;
  wire [4:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [4:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [2:0]sel;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  assign s_axi_awready = s00_axi_awready;
  GND GND
       (.G(\<const0> ));
  Lab2_two_slaves_Lab2_IP_1_0_Lab2_IP_v1_0 inst
       (.Q(data_in2),
        .S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_WREADY(s00_axi_wready),
        .cal_result(cal_result),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[4:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[4:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .s_axi_awready(s00_axi_awready),
        .\slv_reg0_reg[2] (sel),
        .\slv_reg1_reg[15] (data_in1));
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
