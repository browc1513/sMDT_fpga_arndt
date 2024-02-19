// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Fri Jan 19 00:41:02 2024
// Host        : DESKTOP-I1FLNJP running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/research/Vivado/sMDT/sMDT.sim/sim_1/synth/timing/xsim/tb_top_time_synth.v
// Design      : Top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module Counter
   (sseg_OBUF,
    Q,
    \edge_out_reg[1]_0 ,
    CLK,
    AR,
    sel,
    D);
  output [6:0]sseg_OBUF;
  output [31:0]Q;
  output [1:0]\edge_out_reg[1]_0 ;
  input CLK;
  input [0:0]AR;
  input [1:0]sel;
  input [0:0]D;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]D;
  wire [31:0]Q;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[0]_i_3_n_0 ;
  wire \counter[0]_i_4_n_0 ;
  wire \counter[0]_i_5_n_0 ;
  wire \counter[0]_i_6_n_0 ;
  wire \counter[0]_i_7_n_0 ;
  wire \counter[12]_i_2_n_0 ;
  wire \counter[12]_i_3_n_0 ;
  wire \counter[12]_i_4_n_0 ;
  wire \counter[12]_i_5_n_0 ;
  wire \counter[16]_i_2_n_0 ;
  wire \counter[16]_i_3_n_0 ;
  wire \counter[16]_i_4_n_0 ;
  wire \counter[16]_i_5_n_0 ;
  wire \counter[20]_i_2_n_0 ;
  wire \counter[20]_i_3_n_0 ;
  wire \counter[20]_i_4_n_0 ;
  wire \counter[20]_i_5_n_0 ;
  wire \counter[24]_i_2_n_0 ;
  wire \counter[24]_i_3_n_0 ;
  wire \counter[24]_i_4_n_0 ;
  wire \counter[24]_i_5_n_0 ;
  wire \counter[28]_i_2_n_0 ;
  wire \counter[28]_i_3_n_0 ;
  wire \counter[28]_i_4_n_0 ;
  wire \counter[28]_i_5_n_0 ;
  wire \counter[4]_i_2_n_0 ;
  wire \counter[4]_i_3_n_0 ;
  wire \counter[4]_i_4_n_0 ;
  wire \counter[4]_i_5_n_0 ;
  wire \counter[8]_i_2_n_0 ;
  wire \counter[8]_i_3_n_0 ;
  wire \counter[8]_i_4_n_0 ;
  wire \counter[8]_i_5_n_0 ;
  wire \counter_out[31]_i_1_n_0 ;
  wire [31:0]counter_reg;
  wire \counter_reg[0]_i_2__0_n_0 ;
  wire \counter_reg[0]_i_2_n_0 ;
  wire \counter_reg[0]_i_2_n_1 ;
  wire \counter_reg[0]_i_2_n_2 ;
  wire \counter_reg[0]_i_2_n_3 ;
  wire \counter_reg[0]_i_2_n_4 ;
  wire \counter_reg[0]_i_2_n_5 ;
  wire \counter_reg[0]_i_2_n_6 ;
  wire \counter_reg[0]_i_2_n_7 ;
  wire \counter_reg[12]_i_1_n_0 ;
  wire \counter_reg[12]_i_1_n_1 ;
  wire \counter_reg[12]_i_1_n_2 ;
  wire \counter_reg[12]_i_1_n_3 ;
  wire \counter_reg[12]_i_1_n_4 ;
  wire \counter_reg[12]_i_1_n_5 ;
  wire \counter_reg[12]_i_1_n_6 ;
  wire \counter_reg[12]_i_1_n_7 ;
  wire \counter_reg[16]_i_1_n_0 ;
  wire \counter_reg[16]_i_1_n_1 ;
  wire \counter_reg[16]_i_1_n_2 ;
  wire \counter_reg[16]_i_1_n_3 ;
  wire \counter_reg[16]_i_1_n_4 ;
  wire \counter_reg[16]_i_1_n_5 ;
  wire \counter_reg[16]_i_1_n_6 ;
  wire \counter_reg[16]_i_1_n_7 ;
  wire \counter_reg[20]_i_1_n_0 ;
  wire \counter_reg[20]_i_1_n_1 ;
  wire \counter_reg[20]_i_1_n_2 ;
  wire \counter_reg[20]_i_1_n_3 ;
  wire \counter_reg[20]_i_1_n_4 ;
  wire \counter_reg[20]_i_1_n_5 ;
  wire \counter_reg[20]_i_1_n_6 ;
  wire \counter_reg[20]_i_1_n_7 ;
  wire \counter_reg[24]_i_1_n_0 ;
  wire \counter_reg[24]_i_1_n_1 ;
  wire \counter_reg[24]_i_1_n_2 ;
  wire \counter_reg[24]_i_1_n_3 ;
  wire \counter_reg[24]_i_1_n_4 ;
  wire \counter_reg[24]_i_1_n_5 ;
  wire \counter_reg[24]_i_1_n_6 ;
  wire \counter_reg[24]_i_1_n_7 ;
  wire \counter_reg[28]_i_1_n_1 ;
  wire \counter_reg[28]_i_1_n_2 ;
  wire \counter_reg[28]_i_1_n_3 ;
  wire \counter_reg[28]_i_1_n_4 ;
  wire \counter_reg[28]_i_1_n_5 ;
  wire \counter_reg[28]_i_1_n_6 ;
  wire \counter_reg[28]_i_1_n_7 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_1 ;
  wire \counter_reg[4]_i_1_n_2 ;
  wire \counter_reg[4]_i_1_n_3 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_1 ;
  wire \counter_reg[8]_i_1_n_2 ;
  wire \counter_reg[8]_i_1_n_3 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire [31:0]counter_reg_reg;
  wire \counter_reg_reg[0]_i_1_n_0 ;
  wire \counter_reg_reg[0]_i_1_n_1 ;
  wire \counter_reg_reg[0]_i_1_n_2 ;
  wire \counter_reg_reg[0]_i_1_n_3 ;
  wire \counter_reg_reg[0]_i_1_n_4 ;
  wire \counter_reg_reg[0]_i_1_n_5 ;
  wire \counter_reg_reg[0]_i_1_n_6 ;
  wire \counter_reg_reg[0]_i_1_n_7 ;
  wire \counter_reg_reg[12]_i_1_n_0 ;
  wire \counter_reg_reg[12]_i_1_n_1 ;
  wire \counter_reg_reg[12]_i_1_n_2 ;
  wire \counter_reg_reg[12]_i_1_n_3 ;
  wire \counter_reg_reg[12]_i_1_n_4 ;
  wire \counter_reg_reg[12]_i_1_n_5 ;
  wire \counter_reg_reg[12]_i_1_n_6 ;
  wire \counter_reg_reg[12]_i_1_n_7 ;
  wire \counter_reg_reg[16]_i_1_n_0 ;
  wire \counter_reg_reg[16]_i_1_n_1 ;
  wire \counter_reg_reg[16]_i_1_n_2 ;
  wire \counter_reg_reg[16]_i_1_n_3 ;
  wire \counter_reg_reg[16]_i_1_n_4 ;
  wire \counter_reg_reg[16]_i_1_n_5 ;
  wire \counter_reg_reg[16]_i_1_n_6 ;
  wire \counter_reg_reg[16]_i_1_n_7 ;
  wire \counter_reg_reg[20]_i_1_n_0 ;
  wire \counter_reg_reg[20]_i_1_n_1 ;
  wire \counter_reg_reg[20]_i_1_n_2 ;
  wire \counter_reg_reg[20]_i_1_n_3 ;
  wire \counter_reg_reg[20]_i_1_n_4 ;
  wire \counter_reg_reg[20]_i_1_n_5 ;
  wire \counter_reg_reg[20]_i_1_n_6 ;
  wire \counter_reg_reg[20]_i_1_n_7 ;
  wire \counter_reg_reg[24]_i_1_n_0 ;
  wire \counter_reg_reg[24]_i_1_n_1 ;
  wire \counter_reg_reg[24]_i_1_n_2 ;
  wire \counter_reg_reg[24]_i_1_n_3 ;
  wire \counter_reg_reg[24]_i_1_n_4 ;
  wire \counter_reg_reg[24]_i_1_n_5 ;
  wire \counter_reg_reg[24]_i_1_n_6 ;
  wire \counter_reg_reg[24]_i_1_n_7 ;
  wire \counter_reg_reg[28]_i_1_n_1 ;
  wire \counter_reg_reg[28]_i_1_n_2 ;
  wire \counter_reg_reg[28]_i_1_n_3 ;
  wire \counter_reg_reg[28]_i_1_n_4 ;
  wire \counter_reg_reg[28]_i_1_n_5 ;
  wire \counter_reg_reg[28]_i_1_n_6 ;
  wire \counter_reg_reg[28]_i_1_n_7 ;
  wire \counter_reg_reg[4]_i_1_n_0 ;
  wire \counter_reg_reg[4]_i_1_n_1 ;
  wire \counter_reg_reg[4]_i_1_n_2 ;
  wire \counter_reg_reg[4]_i_1_n_3 ;
  wire \counter_reg_reg[4]_i_1_n_4 ;
  wire \counter_reg_reg[4]_i_1_n_5 ;
  wire \counter_reg_reg[4]_i_1_n_6 ;
  wire \counter_reg_reg[4]_i_1_n_7 ;
  wire \counter_reg_reg[8]_i_1_n_0 ;
  wire \counter_reg_reg[8]_i_1_n_1 ;
  wire \counter_reg_reg[8]_i_1_n_2 ;
  wire \counter_reg_reg[8]_i_1_n_3 ;
  wire \counter_reg_reg[8]_i_1_n_4 ;
  wire \counter_reg_reg[8]_i_1_n_5 ;
  wire \counter_reg_reg[8]_i_1_n_6 ;
  wire \counter_reg_reg[8]_i_1_n_7 ;
  wire [1:0]edge_detect;
  wire \edge_out[1]_i_1_n_0 ;
  wire [1:0]\edge_out_reg[1]_0 ;
  wire \in0_reg[0]_i_1_n_0 ;
  wire \in0_reg[1]_i_1_n_0 ;
  wire \in0_reg[2]_i_1_n_0 ;
  wire \in0_reg[3]_i_1_n_0 ;
  wire \in0_reg[3]_i_2_n_0 ;
  wire \in0_reg[3]_i_3_n_0 ;
  wire \in0_reg[3]_i_4_n_0 ;
  wire \in0_reg[3]_i_5_n_0 ;
  wire \in0_reg[3]_i_6_n_0 ;
  wire \in0_reg[3]_i_7_n_0 ;
  wire \in0_reg[3]_i_8_n_0 ;
  wire \in0_reg_reg_n_0_[0] ;
  wire \in0_reg_reg_n_0_[1] ;
  wire \in0_reg_reg_n_0_[2] ;
  wire \in0_reg_reg_n_0_[3] ;
  wire \in1_reg[0]_i_1_n_0 ;
  wire \in1_reg[1]_i_1_n_0 ;
  wire \in1_reg[2]_i_1_n_0 ;
  wire \in1_reg[3]_i_1_n_0 ;
  wire \in1_reg[3]_i_2_n_0 ;
  wire \in1_reg_reg_n_0_[0] ;
  wire \in1_reg_reg_n_0_[1] ;
  wire \in1_reg_reg_n_0_[2] ;
  wire \in1_reg_reg_n_0_[3] ;
  wire [3:0]in2_reg;
  wire \in2_reg[0]_i_1_n_0 ;
  wire \in2_reg[1]_i_1_n_0 ;
  wire \in2_reg[2]_i_1_n_0 ;
  wire \in2_reg[3]_i_1_n_0 ;
  wire \in2_reg[3]_i_2_n_0 ;
  wire \in2_reg[3]_i_3_n_0 ;
  wire [3:0]in3_reg;
  wire \in3_reg[0]_i_1_n_0 ;
  wire \in3_reg[1]_i_1_n_0 ;
  wire \in3_reg[2]_i_1_n_0 ;
  wire \in3_reg[3]_i_1_n_0 ;
  wire \in3_reg[3]_i_2_n_0 ;
  wire \in3_reg[3]_i_3_n_0 ;
  wire [1:0]sel;
  wire [6:0]sseg_OBUF;
  wire \sseg_OBUF[0]_inst_i_2_n_0 ;
  wire \sseg_OBUF[0]_inst_i_3_n_0 ;
  wire \sseg_OBUF[0]_inst_i_4_n_0 ;
  wire \sseg_OBUF[0]_inst_i_5_n_0 ;
  wire \sseg_OBUF[1]_inst_i_2_n_0 ;
  wire \sseg_OBUF[1]_inst_i_3_n_0 ;
  wire \sseg_OBUF[1]_inst_i_4_n_0 ;
  wire \sseg_OBUF[1]_inst_i_5_n_0 ;
  wire \sseg_OBUF[2]_inst_i_2_n_0 ;
  wire \sseg_OBUF[2]_inst_i_3_n_0 ;
  wire \sseg_OBUF[2]_inst_i_4_n_0 ;
  wire \sseg_OBUF[2]_inst_i_5_n_0 ;
  wire \sseg_OBUF[3]_inst_i_2_n_0 ;
  wire \sseg_OBUF[3]_inst_i_3_n_0 ;
  wire \sseg_OBUF[3]_inst_i_4_n_0 ;
  wire \sseg_OBUF[3]_inst_i_5_n_0 ;
  wire \sseg_OBUF[4]_inst_i_2_n_0 ;
  wire \sseg_OBUF[4]_inst_i_3_n_0 ;
  wire \sseg_OBUF[4]_inst_i_4_n_0 ;
  wire \sseg_OBUF[4]_inst_i_5_n_0 ;
  wire \sseg_OBUF[5]_inst_i_2_n_0 ;
  wire \sseg_OBUF[5]_inst_i_3_n_0 ;
  wire \sseg_OBUF[5]_inst_i_4_n_0 ;
  wire \sseg_OBUF[5]_inst_i_5_n_0 ;
  wire \sseg_OBUF[6]_inst_i_2_n_0 ;
  wire \sseg_OBUF[6]_inst_i_3_n_0 ;
  wire \sseg_OBUF[6]_inst_i_4_n_0 ;
  wire \sseg_OBUF[6]_inst_i_5_n_0 ;
  wire [3:3]\NLW_counter_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_reg_reg[28]_i_1_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'hBA)) 
    \counter[0]_i_1 
       (.I0(\in0_reg[3]_i_1_n_0 ),
        .I1(edge_detect[1]),
        .I2(edge_detect[0]),
        .O(\counter[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_3 
       (.I0(counter_reg[0]),
        .I1(\in0_reg[3]_i_1_n_0 ),
        .O(\counter[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_4 
       (.I0(counter_reg[3]),
        .I1(\in0_reg[3]_i_1_n_0 ),
        .O(\counter[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_5 
       (.I0(counter_reg[2]),
        .I1(\in0_reg[3]_i_1_n_0 ),
        .O(\counter[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_6 
       (.I0(counter_reg[1]),
        .I1(\in0_reg[3]_i_1_n_0 ),
        .O(\counter[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \counter[0]_i_7 
       (.I0(counter_reg[0]),
        .I1(\in0_reg[3]_i_1_n_0 ),
        .O(\counter[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[12]_i_2 
       (.I0(counter_reg[15]),
        .I1(\in0_reg[3]_i_1_n_0 ),
        .O(\counter[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[12]_i_3 
       (.I0(counter_reg[14]),
        .I1(\in0_reg[3]_i_1_n_0 ),
        .O(\counter[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[12]_i_4 
       (.I0(counter_reg[13]),
        .I1(\in0_reg[3]_i_1_n_0 ),
        .O(\counter[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[12]_i_5 
       (.I0(counter_reg[12]),
        .I1(\in0_reg[3]_i_1_n_0 ),
        .O(\counter[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[16]_i_2 
       (.I0(counter_reg[19]),
        .I1(\in0_reg[3]_i_1_n_0 ),
        .O(\counter[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[16]_i_3 
       (.I0(counter_reg[18]),
        .I1(\in0_reg[3]_i_1_n_0 ),
        .O(\counter[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[16]_i_4 
       (.I0(counter_reg[17]),
        .I1(\in0_reg[3]_i_1_n_0 ),
        .O(\counter[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[16]_i_5 
       (.I0(counter_reg[16]),
        .I1(\in0_reg[3]_i_1_n_0 ),
        .O(\counter[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[20]_i_2 
       (.I0(counter_reg[23]),
        .I1(\in0_reg[3]_i_1_n_0 ),
        .O(\counter[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[20]_i_3 
       (.I0(counter_reg[22]),
        .I1(\in0_reg[3]_i_1_n_0 ),
        .O(\counter[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[20]_i_4 
       (.I0(counter_reg[21]),
        .I1(\in0_reg[3]_i_1_n_0 ),
        .O(\counter[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[20]_i_5 
       (.I0(counter_reg[20]),
        .I1(\in0_reg[3]_i_1_n_0 ),
        .O(\counter[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[24]_i_2 
       (.I0(counter_reg[27]),
        .I1(\in0_reg[3]_i_1_n_0 ),
        .O(\counter[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[24]_i_3 
       (.I0(counter_reg[26]),
        .I1(\in0_reg[3]_i_1_n_0 ),
        .O(\counter[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[24]_i_4 
       (.I0(counter_reg[25]),
        .I1(\in0_reg[3]_i_1_n_0 ),
        .O(\counter[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[24]_i_5 
       (.I0(counter_reg[24]),
        .I1(\in0_reg[3]_i_1_n_0 ),
        .O(\counter[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[28]_i_2 
       (.I0(counter_reg[31]),
        .I1(\in0_reg[3]_i_1_n_0 ),
        .O(\counter[28]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[28]_i_3 
       (.I0(counter_reg[30]),
        .I1(\in0_reg[3]_i_1_n_0 ),
        .O(\counter[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[28]_i_4 
       (.I0(counter_reg[29]),
        .I1(\in0_reg[3]_i_1_n_0 ),
        .O(\counter[28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[28]_i_5 
       (.I0(counter_reg[28]),
        .I1(\in0_reg[3]_i_1_n_0 ),
        .O(\counter[28]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[4]_i_2 
       (.I0(counter_reg[7]),
        .I1(\in0_reg[3]_i_1_n_0 ),
        .O(\counter[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[4]_i_3 
       (.I0(counter_reg[6]),
        .I1(\in0_reg[3]_i_1_n_0 ),
        .O(\counter[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[4]_i_4 
       (.I0(counter_reg[5]),
        .I1(\in0_reg[3]_i_1_n_0 ),
        .O(\counter[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[4]_i_5 
       (.I0(counter_reg[4]),
        .I1(\in0_reg[3]_i_1_n_0 ),
        .O(\counter[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[8]_i_2 
       (.I0(counter_reg[11]),
        .I1(\in0_reg[3]_i_1_n_0 ),
        .O(\counter[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[8]_i_3 
       (.I0(counter_reg[10]),
        .I1(\in0_reg[3]_i_1_n_0 ),
        .O(\counter[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[8]_i_4 
       (.I0(counter_reg[9]),
        .I1(\in0_reg[3]_i_1_n_0 ),
        .O(\counter[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[8]_i_5 
       (.I0(counter_reg[8]),
        .I1(\in0_reg[3]_i_1_n_0 ),
        .O(\counter[8]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \counter_out[31]_i_1 
       (.I0(edge_detect[1]),
        .I1(edge_detect[0]),
        .I2(AR),
        .O(\counter_out[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[0] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(counter_reg_reg[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[10] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(counter_reg_reg[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[11] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(counter_reg_reg[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[12] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(counter_reg_reg[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[13] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(counter_reg_reg[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[14] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(counter_reg_reg[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[15] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(counter_reg_reg[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[16] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(counter_reg_reg[16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[17] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(counter_reg_reg[17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[18] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(counter_reg_reg[18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[19] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(counter_reg_reg[19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[1] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(counter_reg_reg[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[20] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(counter_reg_reg[20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[21] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(counter_reg_reg[21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[22] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(counter_reg_reg[22]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[23] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(counter_reg_reg[23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[24] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(counter_reg_reg[24]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[25] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(counter_reg_reg[25]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[26] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(counter_reg_reg[26]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[27] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(counter_reg_reg[27]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[28] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(counter_reg_reg[28]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[29] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(counter_reg_reg[29]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[2] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(counter_reg_reg[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[30] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(counter_reg_reg[30]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \counter_out_reg[31] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(counter_reg_reg[31]),
        .Q(Q[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[3] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(counter_reg_reg[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[4] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(counter_reg_reg[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[5] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(counter_reg_reg[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[6] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(counter_reg_reg[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[7] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(counter_reg_reg[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[8] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(counter_reg_reg[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[9] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(counter_reg_reg[9]),
        .Q(Q[9]),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(\counter[0]_i_1_n_0 ),
        .CLR(AR),
        .D(\counter_reg[0]_i_2_n_7 ),
        .Q(counter_reg[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_2_n_0 ,\counter_reg[0]_i_2_n_1 ,\counter_reg[0]_i_2_n_2 ,\counter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\counter[0]_i_3_n_0 }),
        .O({\counter_reg[0]_i_2_n_4 ,\counter_reg[0]_i_2_n_5 ,\counter_reg[0]_i_2_n_6 ,\counter_reg[0]_i_2_n_7 }),
        .S({\counter[0]_i_4_n_0 ,\counter[0]_i_5_n_0 ,\counter[0]_i_6_n_0 ,\counter[0]_i_7_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \counter_reg[0]_i_2__0 
       (.I0(counter_reg_reg[0]),
        .O(\counter_reg[0]_i_2__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(CLK),
        .CE(\counter[0]_i_1_n_0 ),
        .CLR(AR),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(counter_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(CLK),
        .CE(\counter[0]_i_1_n_0 ),
        .CLR(AR),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(counter_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(CLK),
        .CE(\counter[0]_i_1_n_0 ),
        .CLR(AR),
        .D(\counter_reg[12]_i_1_n_7 ),
        .Q(counter_reg[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO({\counter_reg[12]_i_1_n_0 ,\counter_reg[12]_i_1_n_1 ,\counter_reg[12]_i_1_n_2 ,\counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1_n_4 ,\counter_reg[12]_i_1_n_5 ,\counter_reg[12]_i_1_n_6 ,\counter_reg[12]_i_1_n_7 }),
        .S({\counter[12]_i_2_n_0 ,\counter[12]_i_3_n_0 ,\counter[12]_i_4_n_0 ,\counter[12]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(CLK),
        .CE(\counter[0]_i_1_n_0 ),
        .CLR(AR),
        .D(\counter_reg[12]_i_1_n_6 ),
        .Q(counter_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(CLK),
        .CE(\counter[0]_i_1_n_0 ),
        .CLR(AR),
        .D(\counter_reg[12]_i_1_n_5 ),
        .Q(counter_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(CLK),
        .CE(\counter[0]_i_1_n_0 ),
        .CLR(AR),
        .D(\counter_reg[12]_i_1_n_4 ),
        .Q(counter_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(CLK),
        .CE(\counter[0]_i_1_n_0 ),
        .CLR(AR),
        .D(\counter_reg[16]_i_1_n_7 ),
        .Q(counter_reg[16]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[16]_i_1 
       (.CI(\counter_reg[12]_i_1_n_0 ),
        .CO({\counter_reg[16]_i_1_n_0 ,\counter_reg[16]_i_1_n_1 ,\counter_reg[16]_i_1_n_2 ,\counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1_n_4 ,\counter_reg[16]_i_1_n_5 ,\counter_reg[16]_i_1_n_6 ,\counter_reg[16]_i_1_n_7 }),
        .S({\counter[16]_i_2_n_0 ,\counter[16]_i_3_n_0 ,\counter[16]_i_4_n_0 ,\counter[16]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(CLK),
        .CE(\counter[0]_i_1_n_0 ),
        .CLR(AR),
        .D(\counter_reg[16]_i_1_n_6 ),
        .Q(counter_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(CLK),
        .CE(\counter[0]_i_1_n_0 ),
        .CLR(AR),
        .D(\counter_reg[16]_i_1_n_5 ),
        .Q(counter_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(CLK),
        .CE(\counter[0]_i_1_n_0 ),
        .CLR(AR),
        .D(\counter_reg[16]_i_1_n_4 ),
        .Q(counter_reg[19]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(\counter[0]_i_1_n_0 ),
        .CLR(AR),
        .D(\counter_reg[0]_i_2_n_6 ),
        .Q(counter_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(CLK),
        .CE(\counter[0]_i_1_n_0 ),
        .CLR(AR),
        .D(\counter_reg[20]_i_1_n_7 ),
        .Q(counter_reg[20]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[20]_i_1 
       (.CI(\counter_reg[16]_i_1_n_0 ),
        .CO({\counter_reg[20]_i_1_n_0 ,\counter_reg[20]_i_1_n_1 ,\counter_reg[20]_i_1_n_2 ,\counter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[20]_i_1_n_4 ,\counter_reg[20]_i_1_n_5 ,\counter_reg[20]_i_1_n_6 ,\counter_reg[20]_i_1_n_7 }),
        .S({\counter[20]_i_2_n_0 ,\counter[20]_i_3_n_0 ,\counter[20]_i_4_n_0 ,\counter[20]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(CLK),
        .CE(\counter[0]_i_1_n_0 ),
        .CLR(AR),
        .D(\counter_reg[20]_i_1_n_6 ),
        .Q(counter_reg[21]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(CLK),
        .CE(\counter[0]_i_1_n_0 ),
        .CLR(AR),
        .D(\counter_reg[20]_i_1_n_5 ),
        .Q(counter_reg[22]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(CLK),
        .CE(\counter[0]_i_1_n_0 ),
        .CLR(AR),
        .D(\counter_reg[20]_i_1_n_4 ),
        .Q(counter_reg[23]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(CLK),
        .CE(\counter[0]_i_1_n_0 ),
        .CLR(AR),
        .D(\counter_reg[24]_i_1_n_7 ),
        .Q(counter_reg[24]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[24]_i_1 
       (.CI(\counter_reg[20]_i_1_n_0 ),
        .CO({\counter_reg[24]_i_1_n_0 ,\counter_reg[24]_i_1_n_1 ,\counter_reg[24]_i_1_n_2 ,\counter_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[24]_i_1_n_4 ,\counter_reg[24]_i_1_n_5 ,\counter_reg[24]_i_1_n_6 ,\counter_reg[24]_i_1_n_7 }),
        .S({\counter[24]_i_2_n_0 ,\counter[24]_i_3_n_0 ,\counter[24]_i_4_n_0 ,\counter[24]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[25] 
       (.C(CLK),
        .CE(\counter[0]_i_1_n_0 ),
        .CLR(AR),
        .D(\counter_reg[24]_i_1_n_6 ),
        .Q(counter_reg[25]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[26] 
       (.C(CLK),
        .CE(\counter[0]_i_1_n_0 ),
        .CLR(AR),
        .D(\counter_reg[24]_i_1_n_5 ),
        .Q(counter_reg[26]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[27] 
       (.C(CLK),
        .CE(\counter[0]_i_1_n_0 ),
        .CLR(AR),
        .D(\counter_reg[24]_i_1_n_4 ),
        .Q(counter_reg[27]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[28] 
       (.C(CLK),
        .CE(\counter[0]_i_1_n_0 ),
        .CLR(AR),
        .D(\counter_reg[28]_i_1_n_7 ),
        .Q(counter_reg[28]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[28]_i_1 
       (.CI(\counter_reg[24]_i_1_n_0 ),
        .CO({\NLW_counter_reg[28]_i_1_CO_UNCONNECTED [3],\counter_reg[28]_i_1_n_1 ,\counter_reg[28]_i_1_n_2 ,\counter_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[28]_i_1_n_4 ,\counter_reg[28]_i_1_n_5 ,\counter_reg[28]_i_1_n_6 ,\counter_reg[28]_i_1_n_7 }),
        .S({\counter[28]_i_2_n_0 ,\counter[28]_i_3_n_0 ,\counter[28]_i_4_n_0 ,\counter[28]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[29] 
       (.C(CLK),
        .CE(\counter[0]_i_1_n_0 ),
        .CLR(AR),
        .D(\counter_reg[28]_i_1_n_6 ),
        .Q(counter_reg[29]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(\counter[0]_i_1_n_0 ),
        .CLR(AR),
        .D(\counter_reg[0]_i_2_n_5 ),
        .Q(counter_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[30] 
       (.C(CLK),
        .CE(\counter[0]_i_1_n_0 ),
        .CLR(AR),
        .D(\counter_reg[28]_i_1_n_5 ),
        .Q(counter_reg[30]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[31] 
       (.C(CLK),
        .CE(\counter[0]_i_1_n_0 ),
        .CLR(AR),
        .D(\counter_reg[28]_i_1_n_4 ),
        .Q(counter_reg[31]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(\counter[0]_i_1_n_0 ),
        .CLR(AR),
        .D(\counter_reg[0]_i_2_n_4 ),
        .Q(counter_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK),
        .CE(\counter[0]_i_1_n_0 ),
        .CLR(AR),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(counter_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\counter_reg[0]_i_2_n_0 ),
        .CO({\counter_reg[4]_i_1_n_0 ,\counter_reg[4]_i_1_n_1 ,\counter_reg[4]_i_1_n_2 ,\counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S({\counter[4]_i_2_n_0 ,\counter[4]_i_3_n_0 ,\counter[4]_i_4_n_0 ,\counter[4]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(CLK),
        .CE(\counter[0]_i_1_n_0 ),
        .CLR(AR),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(counter_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(CLK),
        .CE(\counter[0]_i_1_n_0 ),
        .CLR(AR),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(counter_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(CLK),
        .CE(\counter[0]_i_1_n_0 ),
        .CLR(AR),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(counter_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(CLK),
        .CE(\counter[0]_i_1_n_0 ),
        .CLR(AR),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(counter_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\counter_reg[8]_i_1_n_1 ,\counter_reg[8]_i_1_n_2 ,\counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S({\counter[8]_i_2_n_0 ,\counter[8]_i_3_n_0 ,\counter[8]_i_4_n_0 ,\counter[8]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(CLK),
        .CE(\counter[0]_i_1_n_0 ),
        .CLR(AR),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(counter_reg[9]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg_reg[0] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(\counter_reg_reg[0]_i_1_n_7 ),
        .Q(counter_reg_reg[0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\counter_reg_reg[0]_i_1_n_0 ,\counter_reg_reg[0]_i_1_n_1 ,\counter_reg_reg[0]_i_1_n_2 ,\counter_reg_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg_reg[0]_i_1_n_4 ,\counter_reg_reg[0]_i_1_n_5 ,\counter_reg_reg[0]_i_1_n_6 ,\counter_reg_reg[0]_i_1_n_7 }),
        .S({counter_reg_reg[3:1],\counter_reg[0]_i_2__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg_reg[10] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(\counter_reg_reg[8]_i_1_n_5 ),
        .Q(counter_reg_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg_reg[11] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(\counter_reg_reg[8]_i_1_n_4 ),
        .Q(counter_reg_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg_reg[12] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(\counter_reg_reg[12]_i_1_n_7 ),
        .Q(counter_reg_reg[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[12]_i_1 
       (.CI(\counter_reg_reg[8]_i_1_n_0 ),
        .CO({\counter_reg_reg[12]_i_1_n_0 ,\counter_reg_reg[12]_i_1_n_1 ,\counter_reg_reg[12]_i_1_n_2 ,\counter_reg_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[12]_i_1_n_4 ,\counter_reg_reg[12]_i_1_n_5 ,\counter_reg_reg[12]_i_1_n_6 ,\counter_reg_reg[12]_i_1_n_7 }),
        .S(counter_reg_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg_reg[13] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(\counter_reg_reg[12]_i_1_n_6 ),
        .Q(counter_reg_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg_reg[14] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(\counter_reg_reg[12]_i_1_n_5 ),
        .Q(counter_reg_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg_reg[15] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(\counter_reg_reg[12]_i_1_n_4 ),
        .Q(counter_reg_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg_reg[16] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(\counter_reg_reg[16]_i_1_n_7 ),
        .Q(counter_reg_reg[16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[16]_i_1 
       (.CI(\counter_reg_reg[12]_i_1_n_0 ),
        .CO({\counter_reg_reg[16]_i_1_n_0 ,\counter_reg_reg[16]_i_1_n_1 ,\counter_reg_reg[16]_i_1_n_2 ,\counter_reg_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[16]_i_1_n_4 ,\counter_reg_reg[16]_i_1_n_5 ,\counter_reg_reg[16]_i_1_n_6 ,\counter_reg_reg[16]_i_1_n_7 }),
        .S(counter_reg_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg_reg[17] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(\counter_reg_reg[16]_i_1_n_6 ),
        .Q(counter_reg_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg_reg[18] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(\counter_reg_reg[16]_i_1_n_5 ),
        .Q(counter_reg_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg_reg[19] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(\counter_reg_reg[16]_i_1_n_4 ),
        .Q(counter_reg_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg_reg[1] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(\counter_reg_reg[0]_i_1_n_6 ),
        .Q(counter_reg_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg_reg[20] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(\counter_reg_reg[20]_i_1_n_7 ),
        .Q(counter_reg_reg[20]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[20]_i_1 
       (.CI(\counter_reg_reg[16]_i_1_n_0 ),
        .CO({\counter_reg_reg[20]_i_1_n_0 ,\counter_reg_reg[20]_i_1_n_1 ,\counter_reg_reg[20]_i_1_n_2 ,\counter_reg_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[20]_i_1_n_4 ,\counter_reg_reg[20]_i_1_n_5 ,\counter_reg_reg[20]_i_1_n_6 ,\counter_reg_reg[20]_i_1_n_7 }),
        .S(counter_reg_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg_reg[21] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(\counter_reg_reg[20]_i_1_n_6 ),
        .Q(counter_reg_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg_reg[22] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(\counter_reg_reg[20]_i_1_n_5 ),
        .Q(counter_reg_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg_reg[23] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(\counter_reg_reg[20]_i_1_n_4 ),
        .Q(counter_reg_reg[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg_reg[24] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(\counter_reg_reg[24]_i_1_n_7 ),
        .Q(counter_reg_reg[24]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[24]_i_1 
       (.CI(\counter_reg_reg[20]_i_1_n_0 ),
        .CO({\counter_reg_reg[24]_i_1_n_0 ,\counter_reg_reg[24]_i_1_n_1 ,\counter_reg_reg[24]_i_1_n_2 ,\counter_reg_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[24]_i_1_n_4 ,\counter_reg_reg[24]_i_1_n_5 ,\counter_reg_reg[24]_i_1_n_6 ,\counter_reg_reg[24]_i_1_n_7 }),
        .S(counter_reg_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg_reg[25] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(\counter_reg_reg[24]_i_1_n_6 ),
        .Q(counter_reg_reg[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg_reg[26] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(\counter_reg_reg[24]_i_1_n_5 ),
        .Q(counter_reg_reg[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg_reg[27] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(\counter_reg_reg[24]_i_1_n_4 ),
        .Q(counter_reg_reg[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg_reg[28] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(\counter_reg_reg[28]_i_1_n_7 ),
        .Q(counter_reg_reg[28]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[28]_i_1 
       (.CI(\counter_reg_reg[24]_i_1_n_0 ),
        .CO({\NLW_counter_reg_reg[28]_i_1_CO_UNCONNECTED [3],\counter_reg_reg[28]_i_1_n_1 ,\counter_reg_reg[28]_i_1_n_2 ,\counter_reg_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[28]_i_1_n_4 ,\counter_reg_reg[28]_i_1_n_5 ,\counter_reg_reg[28]_i_1_n_6 ,\counter_reg_reg[28]_i_1_n_7 }),
        .S(counter_reg_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg_reg[29] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(\counter_reg_reg[28]_i_1_n_6 ),
        .Q(counter_reg_reg[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg_reg[2] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(\counter_reg_reg[0]_i_1_n_5 ),
        .Q(counter_reg_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg_reg[30] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(\counter_reg_reg[28]_i_1_n_5 ),
        .Q(counter_reg_reg[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg_reg[31] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(\counter_reg_reg[28]_i_1_n_4 ),
        .Q(counter_reg_reg[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg_reg[3] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(\counter_reg_reg[0]_i_1_n_4 ),
        .Q(counter_reg_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg_reg[4] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(\counter_reg_reg[4]_i_1_n_7 ),
        .Q(counter_reg_reg[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[4]_i_1 
       (.CI(\counter_reg_reg[0]_i_1_n_0 ),
        .CO({\counter_reg_reg[4]_i_1_n_0 ,\counter_reg_reg[4]_i_1_n_1 ,\counter_reg_reg[4]_i_1_n_2 ,\counter_reg_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[4]_i_1_n_4 ,\counter_reg_reg[4]_i_1_n_5 ,\counter_reg_reg[4]_i_1_n_6 ,\counter_reg_reg[4]_i_1_n_7 }),
        .S(counter_reg_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg_reg[5] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(\counter_reg_reg[4]_i_1_n_6 ),
        .Q(counter_reg_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg_reg[6] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(\counter_reg_reg[4]_i_1_n_5 ),
        .Q(counter_reg_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg_reg[7] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(\counter_reg_reg[4]_i_1_n_4 ),
        .Q(counter_reg_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg_reg[8] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(\counter_reg_reg[8]_i_1_n_7 ),
        .Q(counter_reg_reg[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg_reg[8]_i_1 
       (.CI(\counter_reg_reg[4]_i_1_n_0 ),
        .CO({\counter_reg_reg[8]_i_1_n_0 ,\counter_reg_reg[8]_i_1_n_1 ,\counter_reg_reg[8]_i_1_n_2 ,\counter_reg_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg_reg[8]_i_1_n_4 ,\counter_reg_reg[8]_i_1_n_5 ,\counter_reg_reg[8]_i_1_n_6 ,\counter_reg_reg[8]_i_1_n_7 }),
        .S(counter_reg_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg_reg[9] 
       (.C(CLK),
        .CE(\counter_out[31]_i_1_n_0 ),
        .D(\counter_reg_reg[8]_i_1_n_6 ),
        .Q(counter_reg_reg[9]),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    \edge_detect_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D),
        .Q(edge_detect[0]));
  FDCE #(
    .INIT(1'b0)) 
    \edge_detect_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(edge_detect[0]),
        .Q(edge_detect[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \edge_out[1]_i_1 
       (.I0(AR),
        .O(\edge_out[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \edge_out_reg[0] 
       (.C(CLK),
        .CE(\edge_out[1]_i_1_n_0 ),
        .D(edge_detect[0]),
        .Q(\edge_out_reg[1]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \edge_out_reg[1] 
       (.C(CLK),
        .CE(\edge_out[1]_i_1_n_0 ),
        .D(edge_detect[1]),
        .Q(\edge_out_reg[1]_0 [1]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \in0_reg[0]_i_1 
       (.I0(\in0_reg_reg_n_0_[0] ),
        .O(\in0_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h5A52)) 
    \in0_reg[1]_i_1 
       (.I0(\in0_reg_reg_n_0_[0] ),
        .I1(\in0_reg_reg_n_0_[3] ),
        .I2(\in0_reg_reg_n_0_[1] ),
        .I3(\in0_reg_reg_n_0_[2] ),
        .O(\in0_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \in0_reg[2]_i_1 
       (.I0(\in0_reg_reg_n_0_[0] ),
        .I1(\in0_reg_reg_n_0_[1] ),
        .I2(\in0_reg_reg_n_0_[2] ),
        .O(\in0_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \in0_reg[3]_i_1 
       (.I0(\in0_reg[3]_i_3_n_0 ),
        .I1(\in0_reg[3]_i_4_n_0 ),
        .I2(\in0_reg[3]_i_5_n_0 ),
        .I3(\in0_reg[3]_i_6_n_0 ),
        .I4(\in0_reg[3]_i_7_n_0 ),
        .I5(\in0_reg[3]_i_8_n_0 ),
        .O(\in0_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6CC4)) 
    \in0_reg[3]_i_2 
       (.I0(\in0_reg_reg_n_0_[0] ),
        .I1(\in0_reg_reg_n_0_[3] ),
        .I2(\in0_reg_reg_n_0_[1] ),
        .I3(\in0_reg_reg_n_0_[2] ),
        .O(\in0_reg[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \in0_reg[3]_i_3 
       (.I0(counter_reg[24]),
        .I1(counter_reg[25]),
        .I2(counter_reg[26]),
        .I3(counter_reg[27]),
        .I4(counter_reg[28]),
        .I5(counter_reg[29]),
        .O(\in0_reg[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \in0_reg[3]_i_4 
       (.I0(counter_reg[6]),
        .I1(counter_reg[7]),
        .I2(counter_reg[8]),
        .I3(counter_reg[9]),
        .I4(counter_reg[10]),
        .I5(counter_reg[11]),
        .O(\in0_reg[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \in0_reg[3]_i_5 
       (.I0(counter_reg[18]),
        .I1(counter_reg[19]),
        .I2(counter_reg[20]),
        .I3(counter_reg[21]),
        .I4(counter_reg[22]),
        .I5(counter_reg[23]),
        .O(\in0_reg[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \in0_reg[3]_i_6 
       (.I0(counter_reg[12]),
        .I1(counter_reg[13]),
        .I2(counter_reg[14]),
        .I3(counter_reg[15]),
        .I4(counter_reg[16]),
        .I5(counter_reg[17]),
        .O(\in0_reg[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \in0_reg[3]_i_7 
       (.I0(counter_reg[30]),
        .I1(counter_reg[31]),
        .O(\in0_reg[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFBFFFFFFFF)) 
    \in0_reg[3]_i_8 
       (.I0(counter_reg[0]),
        .I1(counter_reg[1]),
        .I2(counter_reg[2]),
        .I3(counter_reg[4]),
        .I4(counter_reg[5]),
        .I5(counter_reg[3]),
        .O(\in0_reg[3]_i_8_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \in0_reg_reg[0] 
       (.C(CLK),
        .CE(\in0_reg[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\in0_reg[0]_i_1_n_0 ),
        .Q(\in0_reg_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \in0_reg_reg[1] 
       (.C(CLK),
        .CE(\in0_reg[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\in0_reg[1]_i_1_n_0 ),
        .Q(\in0_reg_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \in0_reg_reg[2] 
       (.C(CLK),
        .CE(\in0_reg[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\in0_reg[2]_i_1_n_0 ),
        .Q(\in0_reg_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \in0_reg_reg[3] 
       (.C(CLK),
        .CE(\in0_reg[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\in0_reg[3]_i_2_n_0 ),
        .Q(\in0_reg_reg_n_0_[3] ));
  LUT1 #(
    .INIT(2'h1)) 
    \in1_reg[0]_i_1 
       (.I0(\in1_reg_reg_n_0_[0] ),
        .O(\in1_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h5A52)) 
    \in1_reg[1]_i_1 
       (.I0(\in1_reg_reg_n_0_[0] ),
        .I1(\in1_reg_reg_n_0_[3] ),
        .I2(\in1_reg_reg_n_0_[1] ),
        .I3(\in1_reg_reg_n_0_[2] ),
        .O(\in1_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \in1_reg[2]_i_1 
       (.I0(\in1_reg_reg_n_0_[0] ),
        .I1(\in1_reg_reg_n_0_[1] ),
        .I2(\in1_reg_reg_n_0_[2] ),
        .O(\in1_reg[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \in1_reg[3]_i_1 
       (.I0(\in0_reg[3]_i_1_n_0 ),
        .I1(\in0_reg_reg_n_0_[0] ),
        .I2(\in0_reg_reg_n_0_[3] ),
        .I3(\in0_reg_reg_n_0_[1] ),
        .I4(\in0_reg_reg_n_0_[2] ),
        .O(\in1_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6CC4)) 
    \in1_reg[3]_i_2 
       (.I0(\in1_reg_reg_n_0_[0] ),
        .I1(\in1_reg_reg_n_0_[3] ),
        .I2(\in1_reg_reg_n_0_[1] ),
        .I3(\in1_reg_reg_n_0_[2] ),
        .O(\in1_reg[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \in1_reg_reg[0] 
       (.C(CLK),
        .CE(\in1_reg[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\in1_reg[0]_i_1_n_0 ),
        .Q(\in1_reg_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \in1_reg_reg[1] 
       (.C(CLK),
        .CE(\in1_reg[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\in1_reg[1]_i_1_n_0 ),
        .Q(\in1_reg_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \in1_reg_reg[2] 
       (.C(CLK),
        .CE(\in1_reg[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\in1_reg[2]_i_1_n_0 ),
        .Q(\in1_reg_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \in1_reg_reg[3] 
       (.C(CLK),
        .CE(\in1_reg[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\in1_reg[3]_i_2_n_0 ),
        .Q(\in1_reg_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \in2_reg[0]_i_1 
       (.I0(in2_reg[0]),
        .O(\in2_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h2C3C)) 
    \in2_reg[1]_i_1 
       (.I0(in2_reg[2]),
        .I1(in2_reg[1]),
        .I2(in2_reg[0]),
        .I3(in2_reg[3]),
        .O(\in2_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \in2_reg[2]_i_1 
       (.I0(in2_reg[2]),
        .I1(in2_reg[1]),
        .I2(in2_reg[0]),
        .O(\in2_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \in2_reg[3]_i_1 
       (.I0(\in0_reg[3]_i_1_n_0 ),
        .I1(\in1_reg_reg_n_0_[2] ),
        .I2(\in1_reg_reg_n_0_[1] ),
        .I3(\in1_reg_reg_n_0_[3] ),
        .I4(\in1_reg_reg_n_0_[0] ),
        .I5(\in2_reg[3]_i_3_n_0 ),
        .O(\in2_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6F80)) 
    \in2_reg[3]_i_2 
       (.I0(in2_reg[2]),
        .I1(in2_reg[1]),
        .I2(in2_reg[0]),
        .I3(in2_reg[3]),
        .O(\in2_reg[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \in2_reg[3]_i_3 
       (.I0(\in0_reg_reg_n_0_[2] ),
        .I1(\in0_reg_reg_n_0_[1] ),
        .I2(\in0_reg_reg_n_0_[3] ),
        .I3(\in0_reg_reg_n_0_[0] ),
        .O(\in2_reg[3]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \in2_reg_reg[0] 
       (.C(CLK),
        .CE(\in2_reg[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\in2_reg[0]_i_1_n_0 ),
        .Q(in2_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \in2_reg_reg[1] 
       (.C(CLK),
        .CE(\in2_reg[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\in2_reg[1]_i_1_n_0 ),
        .Q(in2_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \in2_reg_reg[2] 
       (.C(CLK),
        .CE(\in2_reg[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\in2_reg[2]_i_1_n_0 ),
        .Q(in2_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \in2_reg_reg[3] 
       (.C(CLK),
        .CE(\in2_reg[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\in2_reg[3]_i_2_n_0 ),
        .Q(in2_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \in3_reg[0]_i_1 
       (.I0(in3_reg[0]),
        .O(\in3_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h2C3C)) 
    \in3_reg[1]_i_1 
       (.I0(in3_reg[2]),
        .I1(in3_reg[1]),
        .I2(in3_reg[0]),
        .I3(in3_reg[3]),
        .O(\in3_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \in3_reg[2]_i_1 
       (.I0(in3_reg[2]),
        .I1(in3_reg[1]),
        .I2(in3_reg[0]),
        .O(\in3_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    \in3_reg[3]_i_1 
       (.I0(in2_reg[1]),
        .I1(\in2_reg[3]_i_3_n_0 ),
        .I2(in2_reg[2]),
        .I3(\in0_reg[3]_i_1_n_0 ),
        .I4(in2_reg[0]),
        .I5(\in3_reg[3]_i_3_n_0 ),
        .O(\in3_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h6F80)) 
    \in3_reg[3]_i_2 
       (.I0(in3_reg[2]),
        .I1(in3_reg[1]),
        .I2(in3_reg[0]),
        .I3(in3_reg[3]),
        .O(\in3_reg[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFFF7F)) 
    \in3_reg[3]_i_3 
       (.I0(in2_reg[3]),
        .I1(\in1_reg_reg_n_0_[0] ),
        .I2(\in1_reg_reg_n_0_[3] ),
        .I3(\in1_reg_reg_n_0_[1] ),
        .I4(\in1_reg_reg_n_0_[2] ),
        .O(\in3_reg[3]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \in3_reg_reg[0] 
       (.C(CLK),
        .CE(\in3_reg[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\in3_reg[0]_i_1_n_0 ),
        .Q(in3_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \in3_reg_reg[1] 
       (.C(CLK),
        .CE(\in3_reg[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\in3_reg[1]_i_1_n_0 ),
        .Q(in3_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \in3_reg_reg[2] 
       (.C(CLK),
        .CE(\in3_reg[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\in3_reg[2]_i_1_n_0 ),
        .Q(in3_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \in3_reg_reg[3] 
       (.C(CLK),
        .CE(\in3_reg[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\in3_reg[3]_i_2_n_0 ),
        .Q(in3_reg[3]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sseg_OBUF[0]_inst_i_1 
       (.I0(\sseg_OBUF[0]_inst_i_2_n_0 ),
        .I1(\sseg_OBUF[0]_inst_i_3_n_0 ),
        .I2(\sseg_OBUF[0]_inst_i_4_n_0 ),
        .I3(\sseg_OBUF[0]_inst_i_5_n_0 ),
        .O(sseg_OBUF[0]));
  LUT6 #(
    .INIT(64'h0000FA1400000000)) 
    \sseg_OBUF[0]_inst_i_2 
       (.I0(\in1_reg_reg_n_0_[1] ),
        .I1(\in1_reg_reg_n_0_[0] ),
        .I2(\in1_reg_reg_n_0_[2] ),
        .I3(\in1_reg_reg_n_0_[3] ),
        .I4(sel[1]),
        .I5(sel[0]),
        .O(\sseg_OBUF[0]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FA14)) 
    \sseg_OBUF[0]_inst_i_3 
       (.I0(\in0_reg_reg_n_0_[1] ),
        .I1(\in0_reg_reg_n_0_[0] ),
        .I2(\in0_reg_reg_n_0_[2] ),
        .I3(\in0_reg_reg_n_0_[3] ),
        .I4(sel[1]),
        .I5(sel[0]),
        .O(\sseg_OBUF[0]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFA14000000000000)) 
    \sseg_OBUF[0]_inst_i_4 
       (.I0(in3_reg[1]),
        .I1(in3_reg[0]),
        .I2(in3_reg[2]),
        .I3(in3_reg[3]),
        .I4(sel[1]),
        .I5(sel[0]),
        .O(\sseg_OBUF[0]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000FA1400000000)) 
    \sseg_OBUF[0]_inst_i_5 
       (.I0(in2_reg[1]),
        .I1(in2_reg[0]),
        .I2(in2_reg[2]),
        .I3(in2_reg[3]),
        .I4(sel[0]),
        .I5(sel[1]),
        .O(\sseg_OBUF[0]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sseg_OBUF[1]_inst_i_1 
       (.I0(\sseg_OBUF[1]_inst_i_2_n_0 ),
        .I1(\sseg_OBUF[1]_inst_i_3_n_0 ),
        .I2(\sseg_OBUF[1]_inst_i_4_n_0 ),
        .I3(\sseg_OBUF[1]_inst_i_5_n_0 ),
        .O(sseg_OBUF[1]));
  LUT6 #(
    .INIT(64'h0000FC6000000000)) 
    \sseg_OBUF[1]_inst_i_2 
       (.I0(\in1_reg_reg_n_0_[0] ),
        .I1(\in1_reg_reg_n_0_[1] ),
        .I2(\in1_reg_reg_n_0_[2] ),
        .I3(\in1_reg_reg_n_0_[3] ),
        .I4(sel[1]),
        .I5(sel[0]),
        .O(\sseg_OBUF[1]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FC60)) 
    \sseg_OBUF[1]_inst_i_3 
       (.I0(\in0_reg_reg_n_0_[0] ),
        .I1(\in0_reg_reg_n_0_[1] ),
        .I2(\in0_reg_reg_n_0_[2] ),
        .I3(\in0_reg_reg_n_0_[3] ),
        .I4(sel[1]),
        .I5(sel[0]),
        .O(\sseg_OBUF[1]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFC60000000000000)) 
    \sseg_OBUF[1]_inst_i_4 
       (.I0(in3_reg[0]),
        .I1(in3_reg[1]),
        .I2(in3_reg[2]),
        .I3(in3_reg[3]),
        .I4(sel[1]),
        .I5(sel[0]),
        .O(\sseg_OBUF[1]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000FC6000000000)) 
    \sseg_OBUF[1]_inst_i_5 
       (.I0(in2_reg[0]),
        .I1(in2_reg[1]),
        .I2(in2_reg[2]),
        .I3(in2_reg[3]),
        .I4(sel[0]),
        .I5(sel[1]),
        .O(\sseg_OBUF[1]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sseg_OBUF[2]_inst_i_1 
       (.I0(\sseg_OBUF[2]_inst_i_2_n_0 ),
        .I1(\sseg_OBUF[2]_inst_i_3_n_0 ),
        .I2(\sseg_OBUF[2]_inst_i_4_n_0 ),
        .I3(\sseg_OBUF[2]_inst_i_5_n_0 ),
        .O(sseg_OBUF[2]));
  LUT6 #(
    .INIT(64'h0000EE0400000000)) 
    \sseg_OBUF[2]_inst_i_2 
       (.I0(\in1_reg_reg_n_0_[2] ),
        .I1(\in1_reg_reg_n_0_[1] ),
        .I2(\in1_reg_reg_n_0_[0] ),
        .I3(\in1_reg_reg_n_0_[3] ),
        .I4(sel[1]),
        .I5(sel[0]),
        .O(\sseg_OBUF[2]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000EE04)) 
    \sseg_OBUF[2]_inst_i_3 
       (.I0(\in0_reg_reg_n_0_[2] ),
        .I1(\in0_reg_reg_n_0_[1] ),
        .I2(\in0_reg_reg_n_0_[0] ),
        .I3(\in0_reg_reg_n_0_[3] ),
        .I4(sel[1]),
        .I5(sel[0]),
        .O(\sseg_OBUF[2]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEE04000000000000)) 
    \sseg_OBUF[2]_inst_i_4 
       (.I0(in3_reg[2]),
        .I1(in3_reg[1]),
        .I2(in3_reg[0]),
        .I3(in3_reg[3]),
        .I4(sel[1]),
        .I5(sel[0]),
        .O(\sseg_OBUF[2]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000EE0400000000)) 
    \sseg_OBUF[2]_inst_i_5 
       (.I0(in2_reg[2]),
        .I1(in2_reg[1]),
        .I2(in2_reg[0]),
        .I3(in2_reg[3]),
        .I4(sel[0]),
        .I5(sel[1]),
        .O(\sseg_OBUF[2]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sseg_OBUF[3]_inst_i_1 
       (.I0(\sseg_OBUF[3]_inst_i_2_n_0 ),
        .I1(\sseg_OBUF[3]_inst_i_3_n_0 ),
        .I2(\sseg_OBUF[3]_inst_i_4_n_0 ),
        .I3(\sseg_OBUF[3]_inst_i_5_n_0 ),
        .O(sseg_OBUF[3]));
  LUT6 #(
    .INIT(64'h0000FA9400000000)) 
    \sseg_OBUF[3]_inst_i_2 
       (.I0(\in1_reg_reg_n_0_[1] ),
        .I1(\in1_reg_reg_n_0_[0] ),
        .I2(\in1_reg_reg_n_0_[2] ),
        .I3(\in1_reg_reg_n_0_[3] ),
        .I4(sel[1]),
        .I5(sel[0]),
        .O(\sseg_OBUF[3]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FA94)) 
    \sseg_OBUF[3]_inst_i_3 
       (.I0(\in0_reg_reg_n_0_[1] ),
        .I1(\in0_reg_reg_n_0_[0] ),
        .I2(\in0_reg_reg_n_0_[2] ),
        .I3(\in0_reg_reg_n_0_[3] ),
        .I4(sel[1]),
        .I5(sel[0]),
        .O(\sseg_OBUF[3]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFA94000000000000)) 
    \sseg_OBUF[3]_inst_i_4 
       (.I0(in3_reg[1]),
        .I1(in3_reg[0]),
        .I2(in3_reg[2]),
        .I3(in3_reg[3]),
        .I4(sel[1]),
        .I5(sel[0]),
        .O(\sseg_OBUF[3]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000FA9400000000)) 
    \sseg_OBUF[3]_inst_i_5 
       (.I0(in2_reg[1]),
        .I1(in2_reg[0]),
        .I2(in2_reg[2]),
        .I3(in2_reg[3]),
        .I4(sel[0]),
        .I5(sel[1]),
        .O(\sseg_OBUF[3]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sseg_OBUF[4]_inst_i_1 
       (.I0(\sseg_OBUF[4]_inst_i_2_n_0 ),
        .I1(\sseg_OBUF[4]_inst_i_3_n_0 ),
        .I2(\sseg_OBUF[4]_inst_i_4_n_0 ),
        .I3(\sseg_OBUF[4]_inst_i_5_n_0 ),
        .O(sseg_OBUF[4]));
  LUT6 #(
    .INIT(64'h0000FEAE00000000)) 
    \sseg_OBUF[4]_inst_i_2 
       (.I0(\in1_reg_reg_n_0_[0] ),
        .I1(\in1_reg_reg_n_0_[2] ),
        .I2(\in1_reg_reg_n_0_[1] ),
        .I3(\in1_reg_reg_n_0_[3] ),
        .I4(sel[1]),
        .I5(sel[0]),
        .O(\sseg_OBUF[4]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FEAE)) 
    \sseg_OBUF[4]_inst_i_3 
       (.I0(\in0_reg_reg_n_0_[0] ),
        .I1(\in0_reg_reg_n_0_[2] ),
        .I2(\in0_reg_reg_n_0_[1] ),
        .I3(\in0_reg_reg_n_0_[3] ),
        .I4(sel[1]),
        .I5(sel[0]),
        .O(\sseg_OBUF[4]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFEAE000000000000)) 
    \sseg_OBUF[4]_inst_i_4 
       (.I0(in3_reg[0]),
        .I1(in3_reg[2]),
        .I2(in3_reg[1]),
        .I3(in3_reg[3]),
        .I4(sel[1]),
        .I5(sel[0]),
        .O(\sseg_OBUF[4]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000FEAE00000000)) 
    \sseg_OBUF[4]_inst_i_5 
       (.I0(in2_reg[0]),
        .I1(in2_reg[2]),
        .I2(in2_reg[1]),
        .I3(in2_reg[3]),
        .I4(sel[0]),
        .I5(sel[1]),
        .O(\sseg_OBUF[4]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sseg_OBUF[5]_inst_i_1 
       (.I0(\sseg_OBUF[5]_inst_i_2_n_0 ),
        .I1(\sseg_OBUF[5]_inst_i_3_n_0 ),
        .I2(\sseg_OBUF[5]_inst_i_4_n_0 ),
        .I3(\sseg_OBUF[5]_inst_i_5_n_0 ),
        .O(sseg_OBUF[5]));
  LUT6 #(
    .INIT(64'h0000FC8E00000000)) 
    \sseg_OBUF[5]_inst_i_2 
       (.I0(\in1_reg_reg_n_0_[0] ),
        .I1(\in1_reg_reg_n_0_[1] ),
        .I2(\in1_reg_reg_n_0_[2] ),
        .I3(\in1_reg_reg_n_0_[3] ),
        .I4(sel[1]),
        .I5(sel[0]),
        .O(\sseg_OBUF[5]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FC8E)) 
    \sseg_OBUF[5]_inst_i_3 
       (.I0(\in0_reg_reg_n_0_[0] ),
        .I1(\in0_reg_reg_n_0_[1] ),
        .I2(\in0_reg_reg_n_0_[2] ),
        .I3(\in0_reg_reg_n_0_[3] ),
        .I4(sel[1]),
        .I5(sel[0]),
        .O(\sseg_OBUF[5]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFC8E000000000000)) 
    \sseg_OBUF[5]_inst_i_4 
       (.I0(in3_reg[0]),
        .I1(in3_reg[1]),
        .I2(in3_reg[2]),
        .I3(in3_reg[3]),
        .I4(sel[1]),
        .I5(sel[0]),
        .O(\sseg_OBUF[5]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000FC8E00000000)) 
    \sseg_OBUF[5]_inst_i_5 
       (.I0(in2_reg[0]),
        .I1(in2_reg[1]),
        .I2(in2_reg[2]),
        .I3(in2_reg[3]),
        .I4(sel[0]),
        .I5(sel[1]),
        .O(\sseg_OBUF[5]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sseg_OBUF[6]_inst_i_1 
       (.I0(\sseg_OBUF[6]_inst_i_2_n_0 ),
        .I1(\sseg_OBUF[6]_inst_i_3_n_0 ),
        .I2(\sseg_OBUF[6]_inst_i_4_n_0 ),
        .I3(\sseg_OBUF[6]_inst_i_5_n_0 ),
        .O(sseg_OBUF[6]));
  LUT6 #(
    .INIT(64'h0000EE9100000000)) 
    \sseg_OBUF[6]_inst_i_2 
       (.I0(\in1_reg_reg_n_0_[1] ),
        .I1(\in1_reg_reg_n_0_[2] ),
        .I2(\in1_reg_reg_n_0_[0] ),
        .I3(\in1_reg_reg_n_0_[3] ),
        .I4(sel[1]),
        .I5(sel[0]),
        .O(\sseg_OBUF[6]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000EE91)) 
    \sseg_OBUF[6]_inst_i_3 
       (.I0(\in0_reg_reg_n_0_[1] ),
        .I1(\in0_reg_reg_n_0_[2] ),
        .I2(\in0_reg_reg_n_0_[0] ),
        .I3(\in0_reg_reg_n_0_[3] ),
        .I4(sel[1]),
        .I5(sel[0]),
        .O(\sseg_OBUF[6]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEE91000000000000)) 
    \sseg_OBUF[6]_inst_i_4 
       (.I0(in3_reg[1]),
        .I1(in3_reg[2]),
        .I2(in3_reg[0]),
        .I3(in3_reg[3]),
        .I4(sel[1]),
        .I5(sel[0]),
        .O(\sseg_OBUF[6]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000EE9100000000)) 
    \sseg_OBUF[6]_inst_i_5 
       (.I0(in2_reg[1]),
        .I1(in2_reg[2]),
        .I2(in2_reg[0]),
        .I3(in2_reg[3]),
        .I4(sel[0]),
        .I5(sel[1]),
        .O(\sseg_OBUF[6]_inst_i_5_n_0 ));
endmodule

(* DVSR = "4" *) (* DVSR_BIT = "10" *) 
(* NotValidForBitStream *)
module Top
   (clk,
    reset,
    JA,
    an,
    sseg,
    counter_out,
    edge_out);
  input clk;
  input reset;
  input JA;
  output [3:0]an;
  output [6:0]sseg;
  output [31:0]counter_out;
  output [1:0]edge_out;

  wire JA;
  wire JA_IBUF;
  wire [3:0]an;
  wire [3:0]an_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [31:0]counter_out;
  wire [31:0]counter_out_OBUF;
  wire [1:0]edge_out;
  wire [1:0]edge_out_OBUF;
  wire reset;
  wire reset_IBUF;
  wire [1:0]sel;
  wire [6:0]sseg;
  wire [6:0]sseg_OBUF;

initial begin
 $sdf_annotate("tb_top_time_synth.sdf",,,,"tool_control");
end
  IBUF JA_IBUF_inst
       (.I(JA),
        .O(JA_IBUF));
  OBUF \an_OBUF[0]_inst 
       (.I(an_OBUF[0]),
        .O(an[0]));
  OBUF \an_OBUF[1]_inst 
       (.I(an_OBUF[1]),
        .O(an[1]));
  OBUF \an_OBUF[2]_inst 
       (.I(an_OBUF[2]),
        .O(an[2]));
  OBUF \an_OBUF[3]_inst 
       (.I(an_OBUF[3]),
        .O(an[3]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF \counter_out_OBUF[0]_inst 
       (.I(counter_out_OBUF[0]),
        .O(counter_out[0]));
  OBUF \counter_out_OBUF[10]_inst 
       (.I(counter_out_OBUF[10]),
        .O(counter_out[10]));
  OBUF \counter_out_OBUF[11]_inst 
       (.I(counter_out_OBUF[11]),
        .O(counter_out[11]));
  OBUF \counter_out_OBUF[12]_inst 
       (.I(counter_out_OBUF[12]),
        .O(counter_out[12]));
  OBUF \counter_out_OBUF[13]_inst 
       (.I(counter_out_OBUF[13]),
        .O(counter_out[13]));
  OBUF \counter_out_OBUF[14]_inst 
       (.I(counter_out_OBUF[14]),
        .O(counter_out[14]));
  OBUF \counter_out_OBUF[15]_inst 
       (.I(counter_out_OBUF[15]),
        .O(counter_out[15]));
  OBUF \counter_out_OBUF[16]_inst 
       (.I(counter_out_OBUF[16]),
        .O(counter_out[16]));
  OBUF \counter_out_OBUF[17]_inst 
       (.I(counter_out_OBUF[17]),
        .O(counter_out[17]));
  OBUF \counter_out_OBUF[18]_inst 
       (.I(counter_out_OBUF[18]),
        .O(counter_out[18]));
  OBUF \counter_out_OBUF[19]_inst 
       (.I(counter_out_OBUF[19]),
        .O(counter_out[19]));
  OBUF \counter_out_OBUF[1]_inst 
       (.I(counter_out_OBUF[1]),
        .O(counter_out[1]));
  OBUF \counter_out_OBUF[20]_inst 
       (.I(counter_out_OBUF[20]),
        .O(counter_out[20]));
  OBUF \counter_out_OBUF[21]_inst 
       (.I(counter_out_OBUF[21]),
        .O(counter_out[21]));
  OBUF \counter_out_OBUF[22]_inst 
       (.I(counter_out_OBUF[22]),
        .O(counter_out[22]));
  OBUF \counter_out_OBUF[23]_inst 
       (.I(counter_out_OBUF[23]),
        .O(counter_out[23]));
  OBUF \counter_out_OBUF[24]_inst 
       (.I(counter_out_OBUF[24]),
        .O(counter_out[24]));
  OBUF \counter_out_OBUF[25]_inst 
       (.I(counter_out_OBUF[25]),
        .O(counter_out[25]));
  OBUF \counter_out_OBUF[26]_inst 
       (.I(counter_out_OBUF[26]),
        .O(counter_out[26]));
  OBUF \counter_out_OBUF[27]_inst 
       (.I(counter_out_OBUF[27]),
        .O(counter_out[27]));
  OBUF \counter_out_OBUF[28]_inst 
       (.I(counter_out_OBUF[28]),
        .O(counter_out[28]));
  OBUF \counter_out_OBUF[29]_inst 
       (.I(counter_out_OBUF[29]),
        .O(counter_out[29]));
  OBUF \counter_out_OBUF[2]_inst 
       (.I(counter_out_OBUF[2]),
        .O(counter_out[2]));
  OBUF \counter_out_OBUF[30]_inst 
       (.I(counter_out_OBUF[30]),
        .O(counter_out[30]));
  OBUF \counter_out_OBUF[31]_inst 
       (.I(counter_out_OBUF[31]),
        .O(counter_out[31]));
  OBUF \counter_out_OBUF[3]_inst 
       (.I(counter_out_OBUF[3]),
        .O(counter_out[3]));
  OBUF \counter_out_OBUF[4]_inst 
       (.I(counter_out_OBUF[4]),
        .O(counter_out[4]));
  OBUF \counter_out_OBUF[5]_inst 
       (.I(counter_out_OBUF[5]),
        .O(counter_out[5]));
  OBUF \counter_out_OBUF[6]_inst 
       (.I(counter_out_OBUF[6]),
        .O(counter_out[6]));
  OBUF \counter_out_OBUF[7]_inst 
       (.I(counter_out_OBUF[7]),
        .O(counter_out[7]));
  OBUF \counter_out_OBUF[8]_inst 
       (.I(counter_out_OBUF[8]),
        .O(counter_out[8]));
  OBUF \counter_out_OBUF[9]_inst 
       (.I(counter_out_OBUF[9]),
        .O(counter_out[9]));
  displayer displayer_unit
       (.AR(reset_IBUF),
        .CLK(clk_IBUF_BUFG),
        .an_OBUF(an_OBUF),
        .sel(sel));
  OBUF \edge_out_OBUF[0]_inst 
       (.I(edge_out_OBUF[0]),
        .O(edge_out[0]));
  OBUF \edge_out_OBUF[1]_inst 
       (.I(edge_out_OBUF[1]),
        .O(edge_out[1]));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  Counter signal_generate_unit
       (.AR(reset_IBUF),
        .CLK(clk_IBUF_BUFG),
        .D(JA_IBUF),
        .Q(counter_out_OBUF),
        .\edge_out_reg[1]_0 (edge_out_OBUF),
        .sel(sel),
        .sseg_OBUF(sseg_OBUF));
  OBUF \sseg_OBUF[0]_inst 
       (.I(sseg_OBUF[0]),
        .O(sseg[0]));
  OBUF \sseg_OBUF[1]_inst 
       (.I(sseg_OBUF[1]),
        .O(sseg[1]));
  OBUF \sseg_OBUF[2]_inst 
       (.I(sseg_OBUF[2]),
        .O(sseg[2]));
  OBUF \sseg_OBUF[3]_inst 
       (.I(sseg_OBUF[3]),
        .O(sseg[3]));
  OBUF \sseg_OBUF[4]_inst 
       (.I(sseg_OBUF[4]),
        .O(sseg[4]));
  OBUF \sseg_OBUF[5]_inst 
       (.I(sseg_OBUF[5]),
        .O(sseg[5]));
  OBUF \sseg_OBUF[6]_inst 
       (.I(sseg_OBUF[6]),
        .O(sseg[6]));
endmodule

module displayer
   (sel,
    an_OBUF,
    CLK,
    AR);
  output [1:0]sel;
  output [3:0]an_OBUF;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [3:0]an_OBUF;
  wire \q_reg[0]_i_2_n_0 ;
  wire \q_reg_reg[0]_i_1_n_0 ;
  wire \q_reg_reg[0]_i_1_n_1 ;
  wire \q_reg_reg[0]_i_1_n_2 ;
  wire \q_reg_reg[0]_i_1_n_3 ;
  wire \q_reg_reg[0]_i_1_n_4 ;
  wire \q_reg_reg[0]_i_1_n_5 ;
  wire \q_reg_reg[0]_i_1_n_6 ;
  wire \q_reg_reg[0]_i_1_n_7 ;
  wire \q_reg_reg[12]_i_1_n_0 ;
  wire \q_reg_reg[12]_i_1_n_1 ;
  wire \q_reg_reg[12]_i_1_n_2 ;
  wire \q_reg_reg[12]_i_1_n_3 ;
  wire \q_reg_reg[12]_i_1_n_4 ;
  wire \q_reg_reg[12]_i_1_n_5 ;
  wire \q_reg_reg[12]_i_1_n_6 ;
  wire \q_reg_reg[12]_i_1_n_7 ;
  wire \q_reg_reg[16]_i_1_n_3 ;
  wire \q_reg_reg[16]_i_1_n_6 ;
  wire \q_reg_reg[16]_i_1_n_7 ;
  wire \q_reg_reg[4]_i_1_n_0 ;
  wire \q_reg_reg[4]_i_1_n_1 ;
  wire \q_reg_reg[4]_i_1_n_2 ;
  wire \q_reg_reg[4]_i_1_n_3 ;
  wire \q_reg_reg[4]_i_1_n_4 ;
  wire \q_reg_reg[4]_i_1_n_5 ;
  wire \q_reg_reg[4]_i_1_n_6 ;
  wire \q_reg_reg[4]_i_1_n_7 ;
  wire \q_reg_reg[8]_i_1_n_0 ;
  wire \q_reg_reg[8]_i_1_n_1 ;
  wire \q_reg_reg[8]_i_1_n_2 ;
  wire \q_reg_reg[8]_i_1_n_3 ;
  wire \q_reg_reg[8]_i_1_n_4 ;
  wire \q_reg_reg[8]_i_1_n_5 ;
  wire \q_reg_reg[8]_i_1_n_6 ;
  wire \q_reg_reg[8]_i_1_n_7 ;
  wire \q_reg_reg_n_0_[0] ;
  wire \q_reg_reg_n_0_[10] ;
  wire \q_reg_reg_n_0_[11] ;
  wire \q_reg_reg_n_0_[12] ;
  wire \q_reg_reg_n_0_[13] ;
  wire \q_reg_reg_n_0_[14] ;
  wire \q_reg_reg_n_0_[15] ;
  wire \q_reg_reg_n_0_[1] ;
  wire \q_reg_reg_n_0_[2] ;
  wire \q_reg_reg_n_0_[3] ;
  wire \q_reg_reg_n_0_[4] ;
  wire \q_reg_reg_n_0_[5] ;
  wire \q_reg_reg_n_0_[6] ;
  wire \q_reg_reg_n_0_[7] ;
  wire \q_reg_reg_n_0_[8] ;
  wire \q_reg_reg_n_0_[9] ;
  wire [1:0]sel;
  wire [3:1]\NLW_q_reg_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_q_reg_reg[16]_i_1_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \an_OBUF[0]_inst_i_1 
       (.I0(sel[0]),
        .I1(sel[1]),
        .O(an_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \an_OBUF[1]_inst_i_1 
       (.I0(sel[1]),
        .I1(sel[0]),
        .O(an_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \an_OBUF[2]_inst_i_1 
       (.I0(sel[0]),
        .I1(sel[1]),
        .O(an_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \an_OBUF[3]_inst_i_1 
       (.I0(sel[0]),
        .I1(sel[1]),
        .O(an_OBUF[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \q_reg[0]_i_2 
       (.I0(\q_reg_reg_n_0_[0] ),
        .O(\q_reg[0]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg_reg[0]_i_1_n_7 ),
        .Q(\q_reg_reg_n_0_[0] ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_reg_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\q_reg_reg[0]_i_1_n_0 ,\q_reg_reg[0]_i_1_n_1 ,\q_reg_reg[0]_i_1_n_2 ,\q_reg_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\q_reg_reg[0]_i_1_n_4 ,\q_reg_reg[0]_i_1_n_5 ,\q_reg_reg[0]_i_1_n_6 ,\q_reg_reg[0]_i_1_n_7 }),
        .S({\q_reg_reg_n_0_[3] ,\q_reg_reg_n_0_[2] ,\q_reg_reg_n_0_[1] ,\q_reg[0]_i_2_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg_reg[8]_i_1_n_5 ),
        .Q(\q_reg_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg_reg[8]_i_1_n_4 ),
        .Q(\q_reg_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg_reg[12]_i_1_n_7 ),
        .Q(\q_reg_reg_n_0_[12] ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_reg_reg[12]_i_1 
       (.CI(\q_reg_reg[8]_i_1_n_0 ),
        .CO({\q_reg_reg[12]_i_1_n_0 ,\q_reg_reg[12]_i_1_n_1 ,\q_reg_reg[12]_i_1_n_2 ,\q_reg_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_reg_reg[12]_i_1_n_4 ,\q_reg_reg[12]_i_1_n_5 ,\q_reg_reg[12]_i_1_n_6 ,\q_reg_reg[12]_i_1_n_7 }),
        .S({\q_reg_reg_n_0_[15] ,\q_reg_reg_n_0_[14] ,\q_reg_reg_n_0_[13] ,\q_reg_reg_n_0_[12] }));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg_reg[12]_i_1_n_6 ),
        .Q(\q_reg_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg_reg[12]_i_1_n_5 ),
        .Q(\q_reg_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg_reg[12]_i_1_n_4 ),
        .Q(\q_reg_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg_reg[16]_i_1_n_7 ),
        .Q(sel[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_reg_reg[16]_i_1 
       (.CI(\q_reg_reg[12]_i_1_n_0 ),
        .CO({\NLW_q_reg_reg[16]_i_1_CO_UNCONNECTED [3:1],\q_reg_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_q_reg_reg[16]_i_1_O_UNCONNECTED [3:2],\q_reg_reg[16]_i_1_n_6 ,\q_reg_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,sel}));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg_reg[16]_i_1_n_6 ),
        .Q(sel[1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg_reg[0]_i_1_n_6 ),
        .Q(\q_reg_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg_reg[0]_i_1_n_5 ),
        .Q(\q_reg_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg_reg[0]_i_1_n_4 ),
        .Q(\q_reg_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg_reg[4]_i_1_n_7 ),
        .Q(\q_reg_reg_n_0_[4] ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_reg_reg[4]_i_1 
       (.CI(\q_reg_reg[0]_i_1_n_0 ),
        .CO({\q_reg_reg[4]_i_1_n_0 ,\q_reg_reg[4]_i_1_n_1 ,\q_reg_reg[4]_i_1_n_2 ,\q_reg_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_reg_reg[4]_i_1_n_4 ,\q_reg_reg[4]_i_1_n_5 ,\q_reg_reg[4]_i_1_n_6 ,\q_reg_reg[4]_i_1_n_7 }),
        .S({\q_reg_reg_n_0_[7] ,\q_reg_reg_n_0_[6] ,\q_reg_reg_n_0_[5] ,\q_reg_reg_n_0_[4] }));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg_reg[4]_i_1_n_6 ),
        .Q(\q_reg_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg_reg[4]_i_1_n_5 ),
        .Q(\q_reg_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg_reg[4]_i_1_n_4 ),
        .Q(\q_reg_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg_reg[8]_i_1_n_7 ),
        .Q(\q_reg_reg_n_0_[8] ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \q_reg_reg[8]_i_1 
       (.CI(\q_reg_reg[4]_i_1_n_0 ),
        .CO({\q_reg_reg[8]_i_1_n_0 ,\q_reg_reg[8]_i_1_n_1 ,\q_reg_reg[8]_i_1_n_2 ,\q_reg_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_reg_reg[8]_i_1_n_4 ,\q_reg_reg[8]_i_1_n_5 ,\q_reg_reg[8]_i_1_n_6 ,\q_reg_reg[8]_i_1_n_7 }),
        .S({\q_reg_reg_n_0_[11] ,\q_reg_reg_n_0_[10] ,\q_reg_reg_n_0_[9] ,\q_reg_reg_n_0_[8] }));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg_reg[8]_i_1_n_6 ),
        .Q(\q_reg_reg_n_0_[9] ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
