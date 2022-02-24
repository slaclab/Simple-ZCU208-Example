//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Thu Feb  3 12:42:12 2022
//Host        : aird-b50-srv01 running 64-bit Red Hat Enterprise Linux Server release 7.9 (Maipo)
//Command     : generate_target analysis_bd_wrapper.bd
//Design      : analysis_bd_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module analysis_bd_wrapper
   (clk,
    gatewayin0,
    gatewayin0_x0,
    gatewayin1,
    gatewayin10,
    gatewayin10_x0,
    gatewayin11,
    gatewayin11_x0,
    gatewayin12,
    gatewayin12_x0,
    gatewayin13,
    gatewayin13_x0,
    gatewayin14,
    gatewayin14_x0,
    gatewayin15,
    gatewayin15_x0,
    gatewayin1_x0,
    gatewayin2,
    gatewayin2_x0,
    gatewayin3,
    gatewayin3_x0,
    gatewayin4,
    gatewayin4_x0,
    gatewayin5,
    gatewayin5_x0,
    gatewayin6,
    gatewayin6_x0,
    gatewayin7,
    gatewayin7_x0,
    gatewayin8,
    gatewayin8_x0,
    gatewayin9,
    gatewayin9_x0,
    gatewayout0,
    gatewayout0_x0,
    gatewayout0_x1,
    gatewayout0_x2,
    gatewayout0_x3,
    gatewayout0_x4,
    gatewayout1,
    gatewayout10,
    gatewayout10_x0,
    gatewayout10_x1,
    gatewayout10_x2,
    gatewayout10_x3,
    gatewayout10_x4,
    gatewayout11,
    gatewayout11_x0,
    gatewayout11_x1,
    gatewayout11_x2,
    gatewayout11_x3,
    gatewayout11_x4,
    gatewayout12,
    gatewayout12_x0,
    gatewayout12_x1,
    gatewayout12_x2,
    gatewayout12_x3,
    gatewayout12_x4,
    gatewayout13,
    gatewayout13_x0,
    gatewayout13_x1,
    gatewayout13_x2,
    gatewayout13_x3,
    gatewayout13_x4,
    gatewayout14,
    gatewayout14_x0,
    gatewayout14_x1,
    gatewayout14_x2,
    gatewayout14_x3,
    gatewayout14_x4,
    gatewayout15,
    gatewayout15_x0,
    gatewayout15_x1,
    gatewayout15_x2,
    gatewayout15_x3,
    gatewayout15_x4,
    gatewayout1_x0,
    gatewayout1_x1,
    gatewayout1_x2,
    gatewayout1_x3,
    gatewayout1_x4,
    gatewayout2,
    gatewayout2_x0,
    gatewayout2_x1,
    gatewayout2_x2,
    gatewayout2_x3,
    gatewayout2_x4,
    gatewayout3,
    gatewayout3_x0,
    gatewayout3_x1,
    gatewayout3_x2,
    gatewayout3_x3,
    gatewayout3_x4,
    gatewayout4,
    gatewayout4_x0,
    gatewayout4_x1,
    gatewayout4_x2,
    gatewayout4_x3,
    gatewayout4_x4,
    gatewayout5,
    gatewayout5_x0,
    gatewayout5_x1,
    gatewayout5_x2,
    gatewayout5_x3,
    gatewayout5_x4,
    gatewayout6,
    gatewayout6_x0,
    gatewayout6_x1,
    gatewayout6_x2,
    gatewayout6_x3,
    gatewayout6_x4,
    gatewayout7,
    gatewayout7_x0,
    gatewayout7_x1,
    gatewayout7_x2,
    gatewayout7_x3,
    gatewayout7_x4,
    gatewayout8,
    gatewayout8_x0,
    gatewayout8_x1,
    gatewayout8_x2,
    gatewayout8_x3,
    gatewayout8_x4,
    gatewayout9,
    gatewayout9_x0,
    gatewayout9_x1,
    gatewayout9_x2,
    gatewayout9_x3,
    gatewayout9_x4,
    ifft_opvalid,
    overflow_reset,
    receive_vo1,
    receive_vo2,
    receivep0_scale,
    reset,
    swap_iq,
    transmit_scale,
    transmitp0_sel,
    valid1_dealy,
    valid_in);
  input clk;
  input [15:0]gatewayin0;
  input [15:0]gatewayin0_x0;
  input [15:0]gatewayin1;
  input [15:0]gatewayin10;
  input [15:0]gatewayin10_x0;
  input [15:0]gatewayin11;
  input [15:0]gatewayin11_x0;
  input [15:0]gatewayin12;
  input [15:0]gatewayin12_x0;
  input [15:0]gatewayin13;
  input [15:0]gatewayin13_x0;
  input [15:0]gatewayin14;
  input [15:0]gatewayin14_x0;
  input [15:0]gatewayin15;
  input [15:0]gatewayin15_x0;
  input [15:0]gatewayin1_x0;
  input [15:0]gatewayin2;
  input [15:0]gatewayin2_x0;
  input [15:0]gatewayin3;
  input [15:0]gatewayin3_x0;
  input [15:0]gatewayin4;
  input [15:0]gatewayin4_x0;
  input [15:0]gatewayin5;
  input [15:0]gatewayin5_x0;
  input [15:0]gatewayin6;
  input [15:0]gatewayin6_x0;
  input [15:0]gatewayin7;
  input [15:0]gatewayin7_x0;
  input [15:0]gatewayin8;
  input [15:0]gatewayin8_x0;
  input [15:0]gatewayin9;
  input [15:0]gatewayin9_x0;
  output [17:0]gatewayout0;
  output [17:0]gatewayout0_x0;
  output [17:0]gatewayout0_x1;
  output [17:0]gatewayout0_x2;
  output [15:0]gatewayout0_x3;
  output [15:0]gatewayout0_x4;
  output [17:0]gatewayout1;
  output [17:0]gatewayout10;
  output [17:0]gatewayout10_x0;
  output [17:0]gatewayout10_x1;
  output [17:0]gatewayout10_x2;
  output [15:0]gatewayout10_x3;
  output [15:0]gatewayout10_x4;
  output [17:0]gatewayout11;
  output [17:0]gatewayout11_x0;
  output [17:0]gatewayout11_x1;
  output [17:0]gatewayout11_x2;
  output [15:0]gatewayout11_x3;
  output [15:0]gatewayout11_x4;
  output [17:0]gatewayout12;
  output [17:0]gatewayout12_x0;
  output [17:0]gatewayout12_x1;
  output [17:0]gatewayout12_x2;
  output [15:0]gatewayout12_x3;
  output [15:0]gatewayout12_x4;
  output [17:0]gatewayout13;
  output [17:0]gatewayout13_x0;
  output [17:0]gatewayout13_x1;
  output [17:0]gatewayout13_x2;
  output [15:0]gatewayout13_x3;
  output [15:0]gatewayout13_x4;
  output [17:0]gatewayout14;
  output [17:0]gatewayout14_x0;
  output [17:0]gatewayout14_x1;
  output [17:0]gatewayout14_x2;
  output [15:0]gatewayout14_x3;
  output [15:0]gatewayout14_x4;
  output [17:0]gatewayout15;
  output [17:0]gatewayout15_x0;
  output [17:0]gatewayout15_x1;
  output [17:0]gatewayout15_x2;
  output [15:0]gatewayout15_x3;
  output [15:0]gatewayout15_x4;
  output [17:0]gatewayout1_x0;
  output [17:0]gatewayout1_x1;
  output [17:0]gatewayout1_x2;
  output [15:0]gatewayout1_x3;
  output [15:0]gatewayout1_x4;
  output [17:0]gatewayout2;
  output [17:0]gatewayout2_x0;
  output [17:0]gatewayout2_x1;
  output [17:0]gatewayout2_x2;
  output [15:0]gatewayout2_x3;
  output [15:0]gatewayout2_x4;
  output [17:0]gatewayout3;
  output [17:0]gatewayout3_x0;
  output [17:0]gatewayout3_x1;
  output [17:0]gatewayout3_x2;
  output [15:0]gatewayout3_x3;
  output [15:0]gatewayout3_x4;
  output [17:0]gatewayout4;
  output [17:0]gatewayout4_x0;
  output [17:0]gatewayout4_x1;
  output [17:0]gatewayout4_x2;
  output [15:0]gatewayout4_x3;
  output [15:0]gatewayout4_x4;
  output [17:0]gatewayout5;
  output [17:0]gatewayout5_x0;
  output [17:0]gatewayout5_x1;
  output [17:0]gatewayout5_x2;
  output [15:0]gatewayout5_x3;
  output [15:0]gatewayout5_x4;
  output [17:0]gatewayout6;
  output [17:0]gatewayout6_x0;
  output [17:0]gatewayout6_x1;
  output [17:0]gatewayout6_x2;
  output [15:0]gatewayout6_x3;
  output [15:0]gatewayout6_x4;
  output [17:0]gatewayout7;
  output [17:0]gatewayout7_x0;
  output [17:0]gatewayout7_x1;
  output [17:0]gatewayout7_x2;
  output [15:0]gatewayout7_x3;
  output [15:0]gatewayout7_x4;
  output [17:0]gatewayout8;
  output [17:0]gatewayout8_x0;
  output [17:0]gatewayout8_x1;
  output [17:0]gatewayout8_x2;
  output [15:0]gatewayout8_x3;
  output [15:0]gatewayout8_x4;
  output [17:0]gatewayout9;
  output [17:0]gatewayout9_x0;
  output [17:0]gatewayout9_x1;
  output [17:0]gatewayout9_x2;
  output [15:0]gatewayout9_x3;
  output [15:0]gatewayout9_x4;
  output [0:0]ifft_opvalid;
  input [0:0]overflow_reset;
  output [0:0]receive_vo1;
  output [0:0]receive_vo2;
  input [1:0]receivep0_scale;
  input [0:0]reset;
  input [0:0]swap_iq;
  input [1:0]transmit_scale;
  input [1:0]transmitp0_sel;
  input [9:0]valid1_dealy;
  input [0:0]valid_in;

  wire clk;
  wire [15:0]gatewayin0;
  wire [15:0]gatewayin0_x0;
  wire [15:0]gatewayin1;
  wire [15:0]gatewayin10;
  wire [15:0]gatewayin10_x0;
  wire [15:0]gatewayin11;
  wire [15:0]gatewayin11_x0;
  wire [15:0]gatewayin12;
  wire [15:0]gatewayin12_x0;
  wire [15:0]gatewayin13;
  wire [15:0]gatewayin13_x0;
  wire [15:0]gatewayin14;
  wire [15:0]gatewayin14_x0;
  wire [15:0]gatewayin15;
  wire [15:0]gatewayin15_x0;
  wire [15:0]gatewayin1_x0;
  wire [15:0]gatewayin2;
  wire [15:0]gatewayin2_x0;
  wire [15:0]gatewayin3;
  wire [15:0]gatewayin3_x0;
  wire [15:0]gatewayin4;
  wire [15:0]gatewayin4_x0;
  wire [15:0]gatewayin5;
  wire [15:0]gatewayin5_x0;
  wire [15:0]gatewayin6;
  wire [15:0]gatewayin6_x0;
  wire [15:0]gatewayin7;
  wire [15:0]gatewayin7_x0;
  wire [15:0]gatewayin8;
  wire [15:0]gatewayin8_x0;
  wire [15:0]gatewayin9;
  wire [15:0]gatewayin9_x0;
  wire [17:0]gatewayout0;
  wire [17:0]gatewayout0_x0;
  wire [17:0]gatewayout0_x1;
  wire [17:0]gatewayout0_x2;
  wire [15:0]gatewayout0_x3;
  wire [15:0]gatewayout0_x4;
  wire [17:0]gatewayout1;
  wire [17:0]gatewayout10;
  wire [17:0]gatewayout10_x0;
  wire [17:0]gatewayout10_x1;
  wire [17:0]gatewayout10_x2;
  wire [15:0]gatewayout10_x3;
  wire [15:0]gatewayout10_x4;
  wire [17:0]gatewayout11;
  wire [17:0]gatewayout11_x0;
  wire [17:0]gatewayout11_x1;
  wire [17:0]gatewayout11_x2;
  wire [15:0]gatewayout11_x3;
  wire [15:0]gatewayout11_x4;
  wire [17:0]gatewayout12;
  wire [17:0]gatewayout12_x0;
  wire [17:0]gatewayout12_x1;
  wire [17:0]gatewayout12_x2;
  wire [15:0]gatewayout12_x3;
  wire [15:0]gatewayout12_x4;
  wire [17:0]gatewayout13;
  wire [17:0]gatewayout13_x0;
  wire [17:0]gatewayout13_x1;
  wire [17:0]gatewayout13_x2;
  wire [15:0]gatewayout13_x3;
  wire [15:0]gatewayout13_x4;
  wire [17:0]gatewayout14;
  wire [17:0]gatewayout14_x0;
  wire [17:0]gatewayout14_x1;
  wire [17:0]gatewayout14_x2;
  wire [15:0]gatewayout14_x3;
  wire [15:0]gatewayout14_x4;
  wire [17:0]gatewayout15;
  wire [17:0]gatewayout15_x0;
  wire [17:0]gatewayout15_x1;
  wire [17:0]gatewayout15_x2;
  wire [15:0]gatewayout15_x3;
  wire [15:0]gatewayout15_x4;
  wire [17:0]gatewayout1_x0;
  wire [17:0]gatewayout1_x1;
  wire [17:0]gatewayout1_x2;
  wire [15:0]gatewayout1_x3;
  wire [15:0]gatewayout1_x4;
  wire [17:0]gatewayout2;
  wire [17:0]gatewayout2_x0;
  wire [17:0]gatewayout2_x1;
  wire [17:0]gatewayout2_x2;
  wire [15:0]gatewayout2_x3;
  wire [15:0]gatewayout2_x4;
  wire [17:0]gatewayout3;
  wire [17:0]gatewayout3_x0;
  wire [17:0]gatewayout3_x1;
  wire [17:0]gatewayout3_x2;
  wire [15:0]gatewayout3_x3;
  wire [15:0]gatewayout3_x4;
  wire [17:0]gatewayout4;
  wire [17:0]gatewayout4_x0;
  wire [17:0]gatewayout4_x1;
  wire [17:0]gatewayout4_x2;
  wire [15:0]gatewayout4_x3;
  wire [15:0]gatewayout4_x4;
  wire [17:0]gatewayout5;
  wire [17:0]gatewayout5_x0;
  wire [17:0]gatewayout5_x1;
  wire [17:0]gatewayout5_x2;
  wire [15:0]gatewayout5_x3;
  wire [15:0]gatewayout5_x4;
  wire [17:0]gatewayout6;
  wire [17:0]gatewayout6_x0;
  wire [17:0]gatewayout6_x1;
  wire [17:0]gatewayout6_x2;
  wire [15:0]gatewayout6_x3;
  wire [15:0]gatewayout6_x4;
  wire [17:0]gatewayout7;
  wire [17:0]gatewayout7_x0;
  wire [17:0]gatewayout7_x1;
  wire [17:0]gatewayout7_x2;
  wire [15:0]gatewayout7_x3;
  wire [15:0]gatewayout7_x4;
  wire [17:0]gatewayout8;
  wire [17:0]gatewayout8_x0;
  wire [17:0]gatewayout8_x1;
  wire [17:0]gatewayout8_x2;
  wire [15:0]gatewayout8_x3;
  wire [15:0]gatewayout8_x4;
  wire [17:0]gatewayout9;
  wire [17:0]gatewayout9_x0;
  wire [17:0]gatewayout9_x1;
  wire [17:0]gatewayout9_x2;
  wire [15:0]gatewayout9_x3;
  wire [15:0]gatewayout9_x4;
  wire [0:0]ifft_opvalid;
  wire [0:0]overflow_reset;
  wire [0:0]receive_vo1;
  wire [0:0]receive_vo2;
  wire [1:0]receivep0_scale;
  wire [0:0]reset;
  wire [0:0]swap_iq;
  wire [1:0]transmit_scale;
  wire [1:0]transmitp0_sel;
  wire [9:0]valid1_dealy;
  wire [0:0]valid_in;

  analysis_bd analysis_bd_i
       (.clk(clk),
        .gatewayin0(gatewayin0),
        .gatewayin0_x0(gatewayin0_x0),
        .gatewayin1(gatewayin1),
        .gatewayin10(gatewayin10),
        .gatewayin10_x0(gatewayin10_x0),
        .gatewayin11(gatewayin11),
        .gatewayin11_x0(gatewayin11_x0),
        .gatewayin12(gatewayin12),
        .gatewayin12_x0(gatewayin12_x0),
        .gatewayin13(gatewayin13),
        .gatewayin13_x0(gatewayin13_x0),
        .gatewayin14(gatewayin14),
        .gatewayin14_x0(gatewayin14_x0),
        .gatewayin15(gatewayin15),
        .gatewayin15_x0(gatewayin15_x0),
        .gatewayin1_x0(gatewayin1_x0),
        .gatewayin2(gatewayin2),
        .gatewayin2_x0(gatewayin2_x0),
        .gatewayin3(gatewayin3),
        .gatewayin3_x0(gatewayin3_x0),
        .gatewayin4(gatewayin4),
        .gatewayin4_x0(gatewayin4_x0),
        .gatewayin5(gatewayin5),
        .gatewayin5_x0(gatewayin5_x0),
        .gatewayin6(gatewayin6),
        .gatewayin6_x0(gatewayin6_x0),
        .gatewayin7(gatewayin7),
        .gatewayin7_x0(gatewayin7_x0),
        .gatewayin8(gatewayin8),
        .gatewayin8_x0(gatewayin8_x0),
        .gatewayin9(gatewayin9),
        .gatewayin9_x0(gatewayin9_x0),
        .gatewayout0(gatewayout0),
        .gatewayout0_x0(gatewayout0_x0),
        .gatewayout0_x1(gatewayout0_x1),
        .gatewayout0_x2(gatewayout0_x2),
        .gatewayout0_x3(gatewayout0_x3),
        .gatewayout0_x4(gatewayout0_x4),
        .gatewayout1(gatewayout1),
        .gatewayout10(gatewayout10),
        .gatewayout10_x0(gatewayout10_x0),
        .gatewayout10_x1(gatewayout10_x1),
        .gatewayout10_x2(gatewayout10_x2),
        .gatewayout10_x3(gatewayout10_x3),
        .gatewayout10_x4(gatewayout10_x4),
        .gatewayout11(gatewayout11),
        .gatewayout11_x0(gatewayout11_x0),
        .gatewayout11_x1(gatewayout11_x1),
        .gatewayout11_x2(gatewayout11_x2),
        .gatewayout11_x3(gatewayout11_x3),
        .gatewayout11_x4(gatewayout11_x4),
        .gatewayout12(gatewayout12),
        .gatewayout12_x0(gatewayout12_x0),
        .gatewayout12_x1(gatewayout12_x1),
        .gatewayout12_x2(gatewayout12_x2),
        .gatewayout12_x3(gatewayout12_x3),
        .gatewayout12_x4(gatewayout12_x4),
        .gatewayout13(gatewayout13),
        .gatewayout13_x0(gatewayout13_x0),
        .gatewayout13_x1(gatewayout13_x1),
        .gatewayout13_x2(gatewayout13_x2),
        .gatewayout13_x3(gatewayout13_x3),
        .gatewayout13_x4(gatewayout13_x4),
        .gatewayout14(gatewayout14),
        .gatewayout14_x0(gatewayout14_x0),
        .gatewayout14_x1(gatewayout14_x1),
        .gatewayout14_x2(gatewayout14_x2),
        .gatewayout14_x3(gatewayout14_x3),
        .gatewayout14_x4(gatewayout14_x4),
        .gatewayout15(gatewayout15),
        .gatewayout15_x0(gatewayout15_x0),
        .gatewayout15_x1(gatewayout15_x1),
        .gatewayout15_x2(gatewayout15_x2),
        .gatewayout15_x3(gatewayout15_x3),
        .gatewayout15_x4(gatewayout15_x4),
        .gatewayout1_x0(gatewayout1_x0),
        .gatewayout1_x1(gatewayout1_x1),
        .gatewayout1_x2(gatewayout1_x2),
        .gatewayout1_x3(gatewayout1_x3),
        .gatewayout1_x4(gatewayout1_x4),
        .gatewayout2(gatewayout2),
        .gatewayout2_x0(gatewayout2_x0),
        .gatewayout2_x1(gatewayout2_x1),
        .gatewayout2_x2(gatewayout2_x2),
        .gatewayout2_x3(gatewayout2_x3),
        .gatewayout2_x4(gatewayout2_x4),
        .gatewayout3(gatewayout3),
        .gatewayout3_x0(gatewayout3_x0),
        .gatewayout3_x1(gatewayout3_x1),
        .gatewayout3_x2(gatewayout3_x2),
        .gatewayout3_x3(gatewayout3_x3),
        .gatewayout3_x4(gatewayout3_x4),
        .gatewayout4(gatewayout4),
        .gatewayout4_x0(gatewayout4_x0),
        .gatewayout4_x1(gatewayout4_x1),
        .gatewayout4_x2(gatewayout4_x2),
        .gatewayout4_x3(gatewayout4_x3),
        .gatewayout4_x4(gatewayout4_x4),
        .gatewayout5(gatewayout5),
        .gatewayout5_x0(gatewayout5_x0),
        .gatewayout5_x1(gatewayout5_x1),
        .gatewayout5_x2(gatewayout5_x2),
        .gatewayout5_x3(gatewayout5_x3),
        .gatewayout5_x4(gatewayout5_x4),
        .gatewayout6(gatewayout6),
        .gatewayout6_x0(gatewayout6_x0),
        .gatewayout6_x1(gatewayout6_x1),
        .gatewayout6_x2(gatewayout6_x2),
        .gatewayout6_x3(gatewayout6_x3),
        .gatewayout6_x4(gatewayout6_x4),
        .gatewayout7(gatewayout7),
        .gatewayout7_x0(gatewayout7_x0),
        .gatewayout7_x1(gatewayout7_x1),
        .gatewayout7_x2(gatewayout7_x2),
        .gatewayout7_x3(gatewayout7_x3),
        .gatewayout7_x4(gatewayout7_x4),
        .gatewayout8(gatewayout8),
        .gatewayout8_x0(gatewayout8_x0),
        .gatewayout8_x1(gatewayout8_x1),
        .gatewayout8_x2(gatewayout8_x2),
        .gatewayout8_x3(gatewayout8_x3),
        .gatewayout8_x4(gatewayout8_x4),
        .gatewayout9(gatewayout9),
        .gatewayout9_x0(gatewayout9_x0),
        .gatewayout9_x1(gatewayout9_x1),
        .gatewayout9_x2(gatewayout9_x2),
        .gatewayout9_x3(gatewayout9_x3),
        .gatewayout9_x4(gatewayout9_x4),
        .ifft_opvalid(ifft_opvalid),
        .overflow_reset(overflow_reset),
        .receive_vo1(receive_vo1),
        .receive_vo2(receive_vo2),
        .receivep0_scale(receivep0_scale),
        .reset(reset),
        .swap_iq(swap_iq),
        .transmit_scale(transmit_scale),
        .transmitp0_sel(transmitp0_sel),
        .valid1_dealy(valid1_dealy),
        .valid_in(valid_in));
endmodule
