//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Tue Feb  8 16:23:02 2022
//Host        : aird-b50-srv01 running 64-bit Red Hat Enterprise Linux Server release 7.9 (Maipo)
//Command     : generate_target analysis_bd_wrapper.bd
//Design      : analysis_bd_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module analysis_bd_wrapper
   (CLK_IN1_D_clk_n,
    CLK_IN1_D_clk_p,
    adc_imag,
    adc_real,
    dacimag,
    dacreal,
    evenimag,
    evenreal,
    ifft_opvalid,
    oddimag,
    oddreal,
    receive_vo1,
    receive_vo2,
    reset,
    reset_rtl,
    valid1_dealy);
  input CLK_IN1_D_clk_n;
  input CLK_IN1_D_clk_p;
  input [255:0]adc_imag;
  input [255:0]adc_real;
  output [255:0]dacimag;
  output [255:0]dacreal;
  output [255:0]evenimag;
  output [255:0]evenreal;
  output [0:0]ifft_opvalid;
  output [255:0]oddimag;
  output [255:0]oddreal;
  output [0:0]receive_vo1;
  output [0:0]receive_vo2;
  input [0:0]reset;
  input reset_rtl;
  input [9:0]valid1_dealy;

  wire CLK_IN1_D_clk_n;
  wire CLK_IN1_D_clk_p;
  wire [255:0]adc_imag;
  wire [255:0]adc_real;
  wire [255:0]dacimag;
  wire [255:0]dacreal;
  wire [255:0]evenimag;
  wire [255:0]evenreal;
  wire [0:0]ifft_opvalid;
  wire [255:0]oddimag;
  wire [255:0]oddreal;
  wire [0:0]receive_vo1;
  wire [0:0]receive_vo2;
  wire [0:0]reset;
  wire reset_rtl;
  wire [9:0]valid1_dealy;

  analysis_bd analysis_bd_i
       (.CLK_IN1_D_clk_n(CLK_IN1_D_clk_n),
        .CLK_IN1_D_clk_p(CLK_IN1_D_clk_p),
        .adc_imag(adc_imag),
        .adc_real(adc_real),
        .dacimag(dacimag),
        .dacreal(dacreal),
        .evenimag(evenimag),
        .evenreal(evenreal),
        .ifft_opvalid(ifft_opvalid),
        .oddimag(oddimag),
        .oddreal(oddreal),
        .receive_vo1(receive_vo1),
        .receive_vo2(receive_vo2),
        .reset(reset),
        .reset_rtl(reset_rtl),
        .valid1_dealy(valid1_dealy));
endmodule
