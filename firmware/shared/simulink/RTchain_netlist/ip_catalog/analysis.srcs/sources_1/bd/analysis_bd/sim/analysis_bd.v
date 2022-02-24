//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Thu Feb  3 12:42:12 2022
//Host        : aird-b50-srv01 running 64-bit Red Hat Enterprise Linux Server release 7.9 (Maipo)
//Command     : generate_target analysis_bd.bd
//Design      : analysis_bd
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "analysis_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=analysis_bd,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=1,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SYSGEN,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "analysis_bd.hwdef" *) 
module analysis_bd
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET reset, CLK_DOMAIN analysis_bd_clk, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYIN0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYIN0, LAYERED_METADATA undef" *) input [15:0]gatewayin0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYIN0_X0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYIN0_X0, LAYERED_METADATA undef" *) input [15:0]gatewayin0_x0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYIN1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYIN1, LAYERED_METADATA undef" *) input [15:0]gatewayin1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYIN10 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYIN10, LAYERED_METADATA undef" *) input [15:0]gatewayin10;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYIN10_X0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYIN10_X0, LAYERED_METADATA undef" *) input [15:0]gatewayin10_x0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYIN11 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYIN11, LAYERED_METADATA undef" *) input [15:0]gatewayin11;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYIN11_X0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYIN11_X0, LAYERED_METADATA undef" *) input [15:0]gatewayin11_x0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYIN12 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYIN12, LAYERED_METADATA undef" *) input [15:0]gatewayin12;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYIN12_X0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYIN12_X0, LAYERED_METADATA undef" *) input [15:0]gatewayin12_x0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYIN13 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYIN13, LAYERED_METADATA undef" *) input [15:0]gatewayin13;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYIN13_X0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYIN13_X0, LAYERED_METADATA undef" *) input [15:0]gatewayin13_x0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYIN14 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYIN14, LAYERED_METADATA undef" *) input [15:0]gatewayin14;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYIN14_X0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYIN14_X0, LAYERED_METADATA undef" *) input [15:0]gatewayin14_x0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYIN15 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYIN15, LAYERED_METADATA undef" *) input [15:0]gatewayin15;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYIN15_X0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYIN15_X0, LAYERED_METADATA undef" *) input [15:0]gatewayin15_x0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYIN1_X0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYIN1_X0, LAYERED_METADATA undef" *) input [15:0]gatewayin1_x0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYIN2 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYIN2, LAYERED_METADATA undef" *) input [15:0]gatewayin2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYIN2_X0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYIN2_X0, LAYERED_METADATA undef" *) input [15:0]gatewayin2_x0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYIN3 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYIN3, LAYERED_METADATA undef" *) input [15:0]gatewayin3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYIN3_X0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYIN3_X0, LAYERED_METADATA undef" *) input [15:0]gatewayin3_x0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYIN4 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYIN4, LAYERED_METADATA undef" *) input [15:0]gatewayin4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYIN4_X0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYIN4_X0, LAYERED_METADATA undef" *) input [15:0]gatewayin4_x0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYIN5 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYIN5, LAYERED_METADATA undef" *) input [15:0]gatewayin5;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYIN5_X0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYIN5_X0, LAYERED_METADATA undef" *) input [15:0]gatewayin5_x0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYIN6 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYIN6, LAYERED_METADATA undef" *) input [15:0]gatewayin6;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYIN6_X0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYIN6_X0, LAYERED_METADATA undef" *) input [15:0]gatewayin6_x0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYIN7 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYIN7, LAYERED_METADATA undef" *) input [15:0]gatewayin7;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYIN7_X0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYIN7_X0, LAYERED_METADATA undef" *) input [15:0]gatewayin7_x0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYIN8 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYIN8, LAYERED_METADATA undef" *) input [15:0]gatewayin8;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYIN8_X0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYIN8_X0, LAYERED_METADATA undef" *) input [15:0]gatewayin8_x0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYIN9 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYIN9, LAYERED_METADATA undef" *) input [15:0]gatewayin9;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYIN9_X0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYIN9_X0, LAYERED_METADATA undef" *) input [15:0]gatewayin9_x0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT0_X0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT0_X0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout0_x0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT0_X1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT0_X1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout0_x1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT0_X2 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT0_X2, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout0_x2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT0_X3 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT0_X3, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 15} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [15:0]gatewayout0_x3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT0_X4 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT0_X4, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 15} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [15:0]gatewayout0_x4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT10 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT10, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout10;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT10_X0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT10_X0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout10_x0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT10_X1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT10_X1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout10_x1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT10_X2 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT10_X2, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout10_x2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT10_X3 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT10_X3, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 15} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [15:0]gatewayout10_x3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT10_X4 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT10_X4, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 15} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [15:0]gatewayout10_x4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT11 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT11, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout11;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT11_X0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT11_X0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout11_x0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT11_X1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT11_X1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout11_x1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT11_X2 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT11_X2, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout11_x2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT11_X3 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT11_X3, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 15} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [15:0]gatewayout11_x3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT11_X4 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT11_X4, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 15} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [15:0]gatewayout11_x4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT12 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT12, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout12;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT12_X0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT12_X0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout12_x0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT12_X1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT12_X1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout12_x1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT12_X2 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT12_X2, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout12_x2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT12_X3 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT12_X3, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 15} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [15:0]gatewayout12_x3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT12_X4 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT12_X4, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 15} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [15:0]gatewayout12_x4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT13 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT13, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout13;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT13_X0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT13_X0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout13_x0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT13_X1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT13_X1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout13_x1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT13_X2 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT13_X2, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout13_x2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT13_X3 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT13_X3, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 15} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [15:0]gatewayout13_x3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT13_X4 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT13_X4, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 15} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [15:0]gatewayout13_x4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT14 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT14, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout14;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT14_X0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT14_X0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout14_x0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT14_X1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT14_X1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout14_x1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT14_X2 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT14_X2, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout14_x2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT14_X3 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT14_X3, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 15} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [15:0]gatewayout14_x3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT14_X4 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT14_X4, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 15} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [15:0]gatewayout14_x4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT15 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT15, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout15;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT15_X0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT15_X0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout15_x0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT15_X1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT15_X1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout15_x1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT15_X2 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT15_X2, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout15_x2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT15_X3 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT15_X3, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 15} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [15:0]gatewayout15_x3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT15_X4 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT15_X4, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 15} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [15:0]gatewayout15_x4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT1_X0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT1_X0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout1_x0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT1_X1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT1_X1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout1_x1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT1_X2 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT1_X2, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout1_x2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT1_X3 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT1_X3, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 15} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [15:0]gatewayout1_x3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT1_X4 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT1_X4, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 15} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [15:0]gatewayout1_x4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT2 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT2, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT2_X0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT2_X0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout2_x0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT2_X1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT2_X1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout2_x1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT2_X2 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT2_X2, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout2_x2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT2_X3 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT2_X3, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 15} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [15:0]gatewayout2_x3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT2_X4 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT2_X4, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 15} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [15:0]gatewayout2_x4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT3 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT3, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT3_X0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT3_X0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout3_x0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT3_X1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT3_X1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout3_x1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT3_X2 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT3_X2, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout3_x2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT3_X3 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT3_X3, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 15} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [15:0]gatewayout3_x3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT3_X4 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT3_X4, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 15} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [15:0]gatewayout3_x4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT4 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT4, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT4_X0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT4_X0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout4_x0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT4_X1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT4_X1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout4_x1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT4_X2 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT4_X2, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout4_x2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT4_X3 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT4_X3, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 15} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [15:0]gatewayout4_x3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT4_X4 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT4_X4, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 15} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [15:0]gatewayout4_x4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT5 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT5, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout5;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT5_X0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT5_X0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout5_x0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT5_X1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT5_X1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout5_x1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT5_X2 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT5_X2, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout5_x2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT5_X3 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT5_X3, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 15} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [15:0]gatewayout5_x3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT5_X4 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT5_X4, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 15} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [15:0]gatewayout5_x4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT6 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT6, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout6;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT6_X0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT6_X0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout6_x0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT6_X1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT6_X1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout6_x1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT6_X2 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT6_X2, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout6_x2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT6_X3 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT6_X3, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 15} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [15:0]gatewayout6_x3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT6_X4 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT6_X4, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 15} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [15:0]gatewayout6_x4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT7 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT7, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout7;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT7_X0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT7_X0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout7_x0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT7_X1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT7_X1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout7_x1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT7_X2 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT7_X2, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout7_x2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT7_X3 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT7_X3, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 15} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [15:0]gatewayout7_x3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT7_X4 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT7_X4, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 15} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [15:0]gatewayout7_x4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT8 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT8, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout8;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT8_X0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT8_X0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout8_x0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT8_X1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT8_X1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout8_x1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT8_X2 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT8_X2, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout8_x2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT8_X3 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT8_X3, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 15} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [15:0]gatewayout8_x3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT8_X4 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT8_X4, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 15} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [15:0]gatewayout8_x4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT9 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT9, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout9;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT9_X0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT9_X0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout9_x0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT9_X1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT9_X1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout9_x1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT9_X2 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT9_X2, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 18} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [17:0]gatewayout9_x2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT9_X3 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT9_X3, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 15} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [15:0]gatewayout9_x3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GATEWAYOUT9_X4 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GATEWAYOUT9_X4, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 15} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [15:0]gatewayout9_x4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.IFFT_OPVALID DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.IFFT_OPVALID, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *) output [0:0]ifft_opvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.OVERFLOW_RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.OVERFLOW_RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input [0:0]overflow_reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.RECEIVE_VO1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.RECEIVE_VO1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *) output [0:0]receive_vo1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.RECEIVE_VO2 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.RECEIVE_VO2, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *) output [0:0]receive_vo2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.RECEIVEP0_SCALE DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.RECEIVEP0_SCALE, LAYERED_METADATA undef" *) input [1:0]receivep0_scale;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input [0:0]reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.SWAP_IQ DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.SWAP_IQ, LAYERED_METADATA undef" *) input [0:0]swap_iq;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.TRANSMIT_SCALE DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.TRANSMIT_SCALE, LAYERED_METADATA undef" *) input [1:0]transmit_scale;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.TRANSMITP0_SEL DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.TRANSMITP0_SEL, LAYERED_METADATA undef" *) input [1:0]transmitp0_sel;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.VALID1_DEALY DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.VALID1_DEALY, LAYERED_METADATA undef" *) input [9:0]valid1_dealy;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.VALID_IN DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.VALID_IN, LAYERED_METADATA undef" *) input [0:0]valid_in;

  wire [17:0]analysis_1_gatewayout0;
  wire [17:0]analysis_1_gatewayout0_x0;
  wire [17:0]analysis_1_gatewayout0_x1;
  wire [17:0]analysis_1_gatewayout0_x2;
  wire [15:0]analysis_1_gatewayout0_x3;
  wire [15:0]analysis_1_gatewayout0_x4;
  wire [17:0]analysis_1_gatewayout1;
  wire [17:0]analysis_1_gatewayout10;
  wire [17:0]analysis_1_gatewayout10_x0;
  wire [17:0]analysis_1_gatewayout10_x1;
  wire [17:0]analysis_1_gatewayout10_x2;
  wire [15:0]analysis_1_gatewayout10_x3;
  wire [15:0]analysis_1_gatewayout10_x4;
  wire [17:0]analysis_1_gatewayout11;
  wire [17:0]analysis_1_gatewayout11_x0;
  wire [17:0]analysis_1_gatewayout11_x1;
  wire [17:0]analysis_1_gatewayout11_x2;
  wire [15:0]analysis_1_gatewayout11_x3;
  wire [15:0]analysis_1_gatewayout11_x4;
  wire [17:0]analysis_1_gatewayout12;
  wire [17:0]analysis_1_gatewayout12_x0;
  wire [17:0]analysis_1_gatewayout12_x1;
  wire [17:0]analysis_1_gatewayout12_x2;
  wire [15:0]analysis_1_gatewayout12_x3;
  wire [15:0]analysis_1_gatewayout12_x4;
  wire [17:0]analysis_1_gatewayout13;
  wire [17:0]analysis_1_gatewayout13_x0;
  wire [17:0]analysis_1_gatewayout13_x1;
  wire [17:0]analysis_1_gatewayout13_x2;
  wire [15:0]analysis_1_gatewayout13_x3;
  wire [15:0]analysis_1_gatewayout13_x4;
  wire [17:0]analysis_1_gatewayout14;
  wire [17:0]analysis_1_gatewayout14_x0;
  wire [17:0]analysis_1_gatewayout14_x1;
  wire [17:0]analysis_1_gatewayout14_x2;
  wire [15:0]analysis_1_gatewayout14_x3;
  wire [15:0]analysis_1_gatewayout14_x4;
  wire [17:0]analysis_1_gatewayout15;
  wire [17:0]analysis_1_gatewayout15_x0;
  wire [17:0]analysis_1_gatewayout15_x1;
  wire [17:0]analysis_1_gatewayout15_x2;
  wire [15:0]analysis_1_gatewayout15_x3;
  wire [15:0]analysis_1_gatewayout15_x4;
  wire [17:0]analysis_1_gatewayout1_x0;
  wire [17:0]analysis_1_gatewayout1_x1;
  wire [17:0]analysis_1_gatewayout1_x2;
  wire [15:0]analysis_1_gatewayout1_x3;
  wire [15:0]analysis_1_gatewayout1_x4;
  wire [17:0]analysis_1_gatewayout2;
  wire [17:0]analysis_1_gatewayout2_x0;
  wire [17:0]analysis_1_gatewayout2_x1;
  wire [17:0]analysis_1_gatewayout2_x2;
  wire [15:0]analysis_1_gatewayout2_x3;
  wire [15:0]analysis_1_gatewayout2_x4;
  wire [17:0]analysis_1_gatewayout3;
  wire [17:0]analysis_1_gatewayout3_x0;
  wire [17:0]analysis_1_gatewayout3_x1;
  wire [17:0]analysis_1_gatewayout3_x2;
  wire [15:0]analysis_1_gatewayout3_x3;
  wire [15:0]analysis_1_gatewayout3_x4;
  wire [17:0]analysis_1_gatewayout4;
  wire [17:0]analysis_1_gatewayout4_x0;
  wire [17:0]analysis_1_gatewayout4_x1;
  wire [17:0]analysis_1_gatewayout4_x2;
  wire [15:0]analysis_1_gatewayout4_x3;
  wire [15:0]analysis_1_gatewayout4_x4;
  wire [17:0]analysis_1_gatewayout5;
  wire [17:0]analysis_1_gatewayout5_x0;
  wire [17:0]analysis_1_gatewayout5_x1;
  wire [17:0]analysis_1_gatewayout5_x2;
  wire [15:0]analysis_1_gatewayout5_x3;
  wire [15:0]analysis_1_gatewayout5_x4;
  wire [17:0]analysis_1_gatewayout6;
  wire [17:0]analysis_1_gatewayout6_x0;
  wire [17:0]analysis_1_gatewayout6_x1;
  wire [17:0]analysis_1_gatewayout6_x2;
  wire [15:0]analysis_1_gatewayout6_x3;
  wire [15:0]analysis_1_gatewayout6_x4;
  wire [17:0]analysis_1_gatewayout7;
  wire [17:0]analysis_1_gatewayout7_x0;
  wire [17:0]analysis_1_gatewayout7_x1;
  wire [17:0]analysis_1_gatewayout7_x2;
  wire [15:0]analysis_1_gatewayout7_x3;
  wire [15:0]analysis_1_gatewayout7_x4;
  wire [17:0]analysis_1_gatewayout8;
  wire [17:0]analysis_1_gatewayout8_x0;
  wire [17:0]analysis_1_gatewayout8_x1;
  wire [17:0]analysis_1_gatewayout8_x2;
  wire [15:0]analysis_1_gatewayout8_x3;
  wire [15:0]analysis_1_gatewayout8_x4;
  wire [17:0]analysis_1_gatewayout9;
  wire [17:0]analysis_1_gatewayout9_x0;
  wire [17:0]analysis_1_gatewayout9_x1;
  wire [17:0]analysis_1_gatewayout9_x2;
  wire [15:0]analysis_1_gatewayout9_x3;
  wire [15:0]analysis_1_gatewayout9_x4;
  wire [0:0]analysis_1_ifft_opvalid;
  wire [0:0]analysis_1_receive_vo1;
  wire [0:0]analysis_1_receive_vo2;
  wire clk_1;
  wire [15:0]gatewayin0_1;
  wire [15:0]gatewayin0_x0_1;
  wire [15:0]gatewayin10_1;
  wire [15:0]gatewayin10_x0_1;
  wire [15:0]gatewayin11_1;
  wire [15:0]gatewayin11_x0_1;
  wire [15:0]gatewayin12_1;
  wire [15:0]gatewayin12_x0_1;
  wire [15:0]gatewayin13_1;
  wire [15:0]gatewayin13_x0_1;
  wire [15:0]gatewayin14_1;
  wire [15:0]gatewayin14_x0_1;
  wire [15:0]gatewayin15_1;
  wire [15:0]gatewayin15_x0_1;
  wire [15:0]gatewayin1_1;
  wire [15:0]gatewayin1_x0_1;
  wire [15:0]gatewayin2_1;
  wire [15:0]gatewayin2_x0_1;
  wire [15:0]gatewayin3_1;
  wire [15:0]gatewayin3_x0_1;
  wire [15:0]gatewayin4_1;
  wire [15:0]gatewayin4_x0_1;
  wire [15:0]gatewayin5_1;
  wire [15:0]gatewayin5_x0_1;
  wire [15:0]gatewayin6_1;
  wire [15:0]gatewayin6_x0_1;
  wire [15:0]gatewayin7_1;
  wire [15:0]gatewayin7_x0_1;
  wire [15:0]gatewayin8_1;
  wire [15:0]gatewayin8_x0_1;
  wire [15:0]gatewayin9_1;
  wire [15:0]gatewayin9_x0_1;
  wire [0:0]overflow_reset_1;
  wire [1:0]receivep0_scale_1;
  wire [0:0]reset_1;
  wire [0:0]swap_iq_1;
  wire [1:0]transmit_scale_1;
  wire [1:0]transmitp0_sel_1;
  wire [9:0]valid1_dealy_1;
  wire [0:0]valid_in_1;

  assign clk_1 = clk;
  assign gatewayin0_1 = gatewayin0[15:0];
  assign gatewayin0_x0_1 = gatewayin0_x0[15:0];
  assign gatewayin10_1 = gatewayin10[15:0];
  assign gatewayin10_x0_1 = gatewayin10_x0[15:0];
  assign gatewayin11_1 = gatewayin11[15:0];
  assign gatewayin11_x0_1 = gatewayin11_x0[15:0];
  assign gatewayin12_1 = gatewayin12[15:0];
  assign gatewayin12_x0_1 = gatewayin12_x0[15:0];
  assign gatewayin13_1 = gatewayin13[15:0];
  assign gatewayin13_x0_1 = gatewayin13_x0[15:0];
  assign gatewayin14_1 = gatewayin14[15:0];
  assign gatewayin14_x0_1 = gatewayin14_x0[15:0];
  assign gatewayin15_1 = gatewayin15[15:0];
  assign gatewayin15_x0_1 = gatewayin15_x0[15:0];
  assign gatewayin1_1 = gatewayin1[15:0];
  assign gatewayin1_x0_1 = gatewayin1_x0[15:0];
  assign gatewayin2_1 = gatewayin2[15:0];
  assign gatewayin2_x0_1 = gatewayin2_x0[15:0];
  assign gatewayin3_1 = gatewayin3[15:0];
  assign gatewayin3_x0_1 = gatewayin3_x0[15:0];
  assign gatewayin4_1 = gatewayin4[15:0];
  assign gatewayin4_x0_1 = gatewayin4_x0[15:0];
  assign gatewayin5_1 = gatewayin5[15:0];
  assign gatewayin5_x0_1 = gatewayin5_x0[15:0];
  assign gatewayin6_1 = gatewayin6[15:0];
  assign gatewayin6_x0_1 = gatewayin6_x0[15:0];
  assign gatewayin7_1 = gatewayin7[15:0];
  assign gatewayin7_x0_1 = gatewayin7_x0[15:0];
  assign gatewayin8_1 = gatewayin8[15:0];
  assign gatewayin8_x0_1 = gatewayin8_x0[15:0];
  assign gatewayin9_1 = gatewayin9[15:0];
  assign gatewayin9_x0_1 = gatewayin9_x0[15:0];
  assign gatewayout0[17:0] = analysis_1_gatewayout0;
  assign gatewayout0_x0[17:0] = analysis_1_gatewayout0_x0;
  assign gatewayout0_x1[17:0] = analysis_1_gatewayout0_x1;
  assign gatewayout0_x2[17:0] = analysis_1_gatewayout0_x2;
  assign gatewayout0_x3[15:0] = analysis_1_gatewayout0_x3;
  assign gatewayout0_x4[15:0] = analysis_1_gatewayout0_x4;
  assign gatewayout1[17:0] = analysis_1_gatewayout1;
  assign gatewayout10[17:0] = analysis_1_gatewayout10;
  assign gatewayout10_x0[17:0] = analysis_1_gatewayout10_x0;
  assign gatewayout10_x1[17:0] = analysis_1_gatewayout10_x1;
  assign gatewayout10_x2[17:0] = analysis_1_gatewayout10_x2;
  assign gatewayout10_x3[15:0] = analysis_1_gatewayout10_x3;
  assign gatewayout10_x4[15:0] = analysis_1_gatewayout10_x4;
  assign gatewayout11[17:0] = analysis_1_gatewayout11;
  assign gatewayout11_x0[17:0] = analysis_1_gatewayout11_x0;
  assign gatewayout11_x1[17:0] = analysis_1_gatewayout11_x1;
  assign gatewayout11_x2[17:0] = analysis_1_gatewayout11_x2;
  assign gatewayout11_x3[15:0] = analysis_1_gatewayout11_x3;
  assign gatewayout11_x4[15:0] = analysis_1_gatewayout11_x4;
  assign gatewayout12[17:0] = analysis_1_gatewayout12;
  assign gatewayout12_x0[17:0] = analysis_1_gatewayout12_x0;
  assign gatewayout12_x1[17:0] = analysis_1_gatewayout12_x1;
  assign gatewayout12_x2[17:0] = analysis_1_gatewayout12_x2;
  assign gatewayout12_x3[15:0] = analysis_1_gatewayout12_x3;
  assign gatewayout12_x4[15:0] = analysis_1_gatewayout12_x4;
  assign gatewayout13[17:0] = analysis_1_gatewayout13;
  assign gatewayout13_x0[17:0] = analysis_1_gatewayout13_x0;
  assign gatewayout13_x1[17:0] = analysis_1_gatewayout13_x1;
  assign gatewayout13_x2[17:0] = analysis_1_gatewayout13_x2;
  assign gatewayout13_x3[15:0] = analysis_1_gatewayout13_x3;
  assign gatewayout13_x4[15:0] = analysis_1_gatewayout13_x4;
  assign gatewayout14[17:0] = analysis_1_gatewayout14;
  assign gatewayout14_x0[17:0] = analysis_1_gatewayout14_x0;
  assign gatewayout14_x1[17:0] = analysis_1_gatewayout14_x1;
  assign gatewayout14_x2[17:0] = analysis_1_gatewayout14_x2;
  assign gatewayout14_x3[15:0] = analysis_1_gatewayout14_x3;
  assign gatewayout14_x4[15:0] = analysis_1_gatewayout14_x4;
  assign gatewayout15[17:0] = analysis_1_gatewayout15;
  assign gatewayout15_x0[17:0] = analysis_1_gatewayout15_x0;
  assign gatewayout15_x1[17:0] = analysis_1_gatewayout15_x1;
  assign gatewayout15_x2[17:0] = analysis_1_gatewayout15_x2;
  assign gatewayout15_x3[15:0] = analysis_1_gatewayout15_x3;
  assign gatewayout15_x4[15:0] = analysis_1_gatewayout15_x4;
  assign gatewayout1_x0[17:0] = analysis_1_gatewayout1_x0;
  assign gatewayout1_x1[17:0] = analysis_1_gatewayout1_x1;
  assign gatewayout1_x2[17:0] = analysis_1_gatewayout1_x2;
  assign gatewayout1_x3[15:0] = analysis_1_gatewayout1_x3;
  assign gatewayout1_x4[15:0] = analysis_1_gatewayout1_x4;
  assign gatewayout2[17:0] = analysis_1_gatewayout2;
  assign gatewayout2_x0[17:0] = analysis_1_gatewayout2_x0;
  assign gatewayout2_x1[17:0] = analysis_1_gatewayout2_x1;
  assign gatewayout2_x2[17:0] = analysis_1_gatewayout2_x2;
  assign gatewayout2_x3[15:0] = analysis_1_gatewayout2_x3;
  assign gatewayout2_x4[15:0] = analysis_1_gatewayout2_x4;
  assign gatewayout3[17:0] = analysis_1_gatewayout3;
  assign gatewayout3_x0[17:0] = analysis_1_gatewayout3_x0;
  assign gatewayout3_x1[17:0] = analysis_1_gatewayout3_x1;
  assign gatewayout3_x2[17:0] = analysis_1_gatewayout3_x2;
  assign gatewayout3_x3[15:0] = analysis_1_gatewayout3_x3;
  assign gatewayout3_x4[15:0] = analysis_1_gatewayout3_x4;
  assign gatewayout4[17:0] = analysis_1_gatewayout4;
  assign gatewayout4_x0[17:0] = analysis_1_gatewayout4_x0;
  assign gatewayout4_x1[17:0] = analysis_1_gatewayout4_x1;
  assign gatewayout4_x2[17:0] = analysis_1_gatewayout4_x2;
  assign gatewayout4_x3[15:0] = analysis_1_gatewayout4_x3;
  assign gatewayout4_x4[15:0] = analysis_1_gatewayout4_x4;
  assign gatewayout5[17:0] = analysis_1_gatewayout5;
  assign gatewayout5_x0[17:0] = analysis_1_gatewayout5_x0;
  assign gatewayout5_x1[17:0] = analysis_1_gatewayout5_x1;
  assign gatewayout5_x2[17:0] = analysis_1_gatewayout5_x2;
  assign gatewayout5_x3[15:0] = analysis_1_gatewayout5_x3;
  assign gatewayout5_x4[15:0] = analysis_1_gatewayout5_x4;
  assign gatewayout6[17:0] = analysis_1_gatewayout6;
  assign gatewayout6_x0[17:0] = analysis_1_gatewayout6_x0;
  assign gatewayout6_x1[17:0] = analysis_1_gatewayout6_x1;
  assign gatewayout6_x2[17:0] = analysis_1_gatewayout6_x2;
  assign gatewayout6_x3[15:0] = analysis_1_gatewayout6_x3;
  assign gatewayout6_x4[15:0] = analysis_1_gatewayout6_x4;
  assign gatewayout7[17:0] = analysis_1_gatewayout7;
  assign gatewayout7_x0[17:0] = analysis_1_gatewayout7_x0;
  assign gatewayout7_x1[17:0] = analysis_1_gatewayout7_x1;
  assign gatewayout7_x2[17:0] = analysis_1_gatewayout7_x2;
  assign gatewayout7_x3[15:0] = analysis_1_gatewayout7_x3;
  assign gatewayout7_x4[15:0] = analysis_1_gatewayout7_x4;
  assign gatewayout8[17:0] = analysis_1_gatewayout8;
  assign gatewayout8_x0[17:0] = analysis_1_gatewayout8_x0;
  assign gatewayout8_x1[17:0] = analysis_1_gatewayout8_x1;
  assign gatewayout8_x2[17:0] = analysis_1_gatewayout8_x2;
  assign gatewayout8_x3[15:0] = analysis_1_gatewayout8_x3;
  assign gatewayout8_x4[15:0] = analysis_1_gatewayout8_x4;
  assign gatewayout9[17:0] = analysis_1_gatewayout9;
  assign gatewayout9_x0[17:0] = analysis_1_gatewayout9_x0;
  assign gatewayout9_x1[17:0] = analysis_1_gatewayout9_x1;
  assign gatewayout9_x2[17:0] = analysis_1_gatewayout9_x2;
  assign gatewayout9_x3[15:0] = analysis_1_gatewayout9_x3;
  assign gatewayout9_x4[15:0] = analysis_1_gatewayout9_x4;
  assign ifft_opvalid[0] = analysis_1_ifft_opvalid;
  assign overflow_reset_1 = overflow_reset[0];
  assign receive_vo1[0] = analysis_1_receive_vo1;
  assign receive_vo2[0] = analysis_1_receive_vo2;
  assign receivep0_scale_1 = receivep0_scale[1:0];
  assign reset_1 = reset[0];
  assign swap_iq_1 = swap_iq[0];
  assign transmit_scale_1 = transmit_scale[1:0];
  assign transmitp0_sel_1 = transmitp0_sel[1:0];
  assign valid1_dealy_1 = valid1_dealy[9:0];
  assign valid_in_1 = valid_in[0];
  analysis_bd_analysis_1_0 analysis_1
       (.clk(clk_1),
        .gatewayin0(gatewayin0_1),
        .gatewayin0_x0(gatewayin0_x0_1),
        .gatewayin1(gatewayin1_1),
        .gatewayin10(gatewayin10_1),
        .gatewayin10_x0(gatewayin10_x0_1),
        .gatewayin11(gatewayin11_1),
        .gatewayin11_x0(gatewayin11_x0_1),
        .gatewayin12(gatewayin12_1),
        .gatewayin12_x0(gatewayin12_x0_1),
        .gatewayin13(gatewayin13_1),
        .gatewayin13_x0(gatewayin13_x0_1),
        .gatewayin14(gatewayin14_1),
        .gatewayin14_x0(gatewayin14_x0_1),
        .gatewayin15(gatewayin15_1),
        .gatewayin15_x0(gatewayin15_x0_1),
        .gatewayin1_x0(gatewayin1_x0_1),
        .gatewayin2(gatewayin2_1),
        .gatewayin2_x0(gatewayin2_x0_1),
        .gatewayin3(gatewayin3_1),
        .gatewayin3_x0(gatewayin3_x0_1),
        .gatewayin4(gatewayin4_1),
        .gatewayin4_x0(gatewayin4_x0_1),
        .gatewayin5(gatewayin5_1),
        .gatewayin5_x0(gatewayin5_x0_1),
        .gatewayin6(gatewayin6_1),
        .gatewayin6_x0(gatewayin6_x0_1),
        .gatewayin7(gatewayin7_1),
        .gatewayin7_x0(gatewayin7_x0_1),
        .gatewayin8(gatewayin8_1),
        .gatewayin8_x0(gatewayin8_x0_1),
        .gatewayin9(gatewayin9_1),
        .gatewayin9_x0(gatewayin9_x0_1),
        .gatewayout0(analysis_1_gatewayout0),
        .gatewayout0_x0(analysis_1_gatewayout0_x0),
        .gatewayout0_x1(analysis_1_gatewayout0_x1),
        .gatewayout0_x2(analysis_1_gatewayout0_x2),
        .gatewayout0_x3(analysis_1_gatewayout0_x3),
        .gatewayout0_x4(analysis_1_gatewayout0_x4),
        .gatewayout1(analysis_1_gatewayout1),
        .gatewayout10(analysis_1_gatewayout10),
        .gatewayout10_x0(analysis_1_gatewayout10_x0),
        .gatewayout10_x1(analysis_1_gatewayout10_x1),
        .gatewayout10_x2(analysis_1_gatewayout10_x2),
        .gatewayout10_x3(analysis_1_gatewayout10_x3),
        .gatewayout10_x4(analysis_1_gatewayout10_x4),
        .gatewayout11(analysis_1_gatewayout11),
        .gatewayout11_x0(analysis_1_gatewayout11_x0),
        .gatewayout11_x1(analysis_1_gatewayout11_x1),
        .gatewayout11_x2(analysis_1_gatewayout11_x2),
        .gatewayout11_x3(analysis_1_gatewayout11_x3),
        .gatewayout11_x4(analysis_1_gatewayout11_x4),
        .gatewayout12(analysis_1_gatewayout12),
        .gatewayout12_x0(analysis_1_gatewayout12_x0),
        .gatewayout12_x1(analysis_1_gatewayout12_x1),
        .gatewayout12_x2(analysis_1_gatewayout12_x2),
        .gatewayout12_x3(analysis_1_gatewayout12_x3),
        .gatewayout12_x4(analysis_1_gatewayout12_x4),
        .gatewayout13(analysis_1_gatewayout13),
        .gatewayout13_x0(analysis_1_gatewayout13_x0),
        .gatewayout13_x1(analysis_1_gatewayout13_x1),
        .gatewayout13_x2(analysis_1_gatewayout13_x2),
        .gatewayout13_x3(analysis_1_gatewayout13_x3),
        .gatewayout13_x4(analysis_1_gatewayout13_x4),
        .gatewayout14(analysis_1_gatewayout14),
        .gatewayout14_x0(analysis_1_gatewayout14_x0),
        .gatewayout14_x1(analysis_1_gatewayout14_x1),
        .gatewayout14_x2(analysis_1_gatewayout14_x2),
        .gatewayout14_x3(analysis_1_gatewayout14_x3),
        .gatewayout14_x4(analysis_1_gatewayout14_x4),
        .gatewayout15(analysis_1_gatewayout15),
        .gatewayout15_x0(analysis_1_gatewayout15_x0),
        .gatewayout15_x1(analysis_1_gatewayout15_x1),
        .gatewayout15_x2(analysis_1_gatewayout15_x2),
        .gatewayout15_x3(analysis_1_gatewayout15_x3),
        .gatewayout15_x4(analysis_1_gatewayout15_x4),
        .gatewayout1_x0(analysis_1_gatewayout1_x0),
        .gatewayout1_x1(analysis_1_gatewayout1_x1),
        .gatewayout1_x2(analysis_1_gatewayout1_x2),
        .gatewayout1_x3(analysis_1_gatewayout1_x3),
        .gatewayout1_x4(analysis_1_gatewayout1_x4),
        .gatewayout2(analysis_1_gatewayout2),
        .gatewayout2_x0(analysis_1_gatewayout2_x0),
        .gatewayout2_x1(analysis_1_gatewayout2_x1),
        .gatewayout2_x2(analysis_1_gatewayout2_x2),
        .gatewayout2_x3(analysis_1_gatewayout2_x3),
        .gatewayout2_x4(analysis_1_gatewayout2_x4),
        .gatewayout3(analysis_1_gatewayout3),
        .gatewayout3_x0(analysis_1_gatewayout3_x0),
        .gatewayout3_x1(analysis_1_gatewayout3_x1),
        .gatewayout3_x2(analysis_1_gatewayout3_x2),
        .gatewayout3_x3(analysis_1_gatewayout3_x3),
        .gatewayout3_x4(analysis_1_gatewayout3_x4),
        .gatewayout4(analysis_1_gatewayout4),
        .gatewayout4_x0(analysis_1_gatewayout4_x0),
        .gatewayout4_x1(analysis_1_gatewayout4_x1),
        .gatewayout4_x2(analysis_1_gatewayout4_x2),
        .gatewayout4_x3(analysis_1_gatewayout4_x3),
        .gatewayout4_x4(analysis_1_gatewayout4_x4),
        .gatewayout5(analysis_1_gatewayout5),
        .gatewayout5_x0(analysis_1_gatewayout5_x0),
        .gatewayout5_x1(analysis_1_gatewayout5_x1),
        .gatewayout5_x2(analysis_1_gatewayout5_x2),
        .gatewayout5_x3(analysis_1_gatewayout5_x3),
        .gatewayout5_x4(analysis_1_gatewayout5_x4),
        .gatewayout6(analysis_1_gatewayout6),
        .gatewayout6_x0(analysis_1_gatewayout6_x0),
        .gatewayout6_x1(analysis_1_gatewayout6_x1),
        .gatewayout6_x2(analysis_1_gatewayout6_x2),
        .gatewayout6_x3(analysis_1_gatewayout6_x3),
        .gatewayout6_x4(analysis_1_gatewayout6_x4),
        .gatewayout7(analysis_1_gatewayout7),
        .gatewayout7_x0(analysis_1_gatewayout7_x0),
        .gatewayout7_x1(analysis_1_gatewayout7_x1),
        .gatewayout7_x2(analysis_1_gatewayout7_x2),
        .gatewayout7_x3(analysis_1_gatewayout7_x3),
        .gatewayout7_x4(analysis_1_gatewayout7_x4),
        .gatewayout8(analysis_1_gatewayout8),
        .gatewayout8_x0(analysis_1_gatewayout8_x0),
        .gatewayout8_x1(analysis_1_gatewayout8_x1),
        .gatewayout8_x2(analysis_1_gatewayout8_x2),
        .gatewayout8_x3(analysis_1_gatewayout8_x3),
        .gatewayout8_x4(analysis_1_gatewayout8_x4),
        .gatewayout9(analysis_1_gatewayout9),
        .gatewayout9_x0(analysis_1_gatewayout9_x0),
        .gatewayout9_x1(analysis_1_gatewayout9_x1),
        .gatewayout9_x2(analysis_1_gatewayout9_x2),
        .gatewayout9_x3(analysis_1_gatewayout9_x3),
        .gatewayout9_x4(analysis_1_gatewayout9_x4),
        .ifft_opvalid(analysis_1_ifft_opvalid),
        .overflow_reset(overflow_reset_1),
        .receive_vo1(analysis_1_receive_vo1),
        .receive_vo2(analysis_1_receive_vo2),
        .receivep0_scale(receivep0_scale_1),
        .reset(reset_1),
        .swap_iq(swap_iq_1),
        .transmit_scale(transmit_scale_1),
        .transmitp0_sel(transmitp0_sel_1),
        .valid1_dealy(valid1_dealy_1),
        .valid_in(valid_in_1));
endmodule
