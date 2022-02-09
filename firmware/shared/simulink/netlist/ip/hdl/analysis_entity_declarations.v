//-----------------------------------------------------------------
// System Generator version 2019.1 Verilog source file.
//
// Copyright(C) 2019 by Xilinx, Inc.  All rights reserved.  This
// text/file contains proprietary, confidential information of Xilinx,
// Inc., is distributed under license from Xilinx, Inc., and may be used,
// copied and/or disclosed only pursuant to the terms of a valid license
// agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
// this text/file solely for design, simulation, implementation and
// creation of design files limited to Xilinx devices or technologies.
// Use with non-Xilinx devices or technologies is expressly prohibited
// and immediately terminates your license unless covered by a separate
// agreement.
//
// Xilinx is providing this design, code, or information "as is" solely
// for use in developing programs and solutions for Xilinx devices.  By
// providing this design, code, or information as one possible
// implementation of this feature, application or standard, Xilinx is
// making no representation that this implementation is free from any
// claims of infringement.  You are responsible for obtaining any rights
// you may require for your implementation.  Xilinx expressly disclaims
// any warranty whatsoever with respect to the adequacy of the
// implementation, including but not limited to warranties of
// merchantability or fitness for a particular purpose.
//
// Xilinx products are not intended for use in life support appliances,
// devices, or systems.  Use in such applications is expressly prohibited.
//
// Any modifications that are made to the source code are done at the user's
// sole risk and will be unsupported.
//
// This copyright and support notice must be retained as part of this
// text at all times.  (c) Copyright 1995-2019 Xilinx, Inc.  All rights
// reserved.
//-----------------------------------------------------------------

`include "conv_pkg.v"
`timescale 1 ns / 10 ps
module analysis_xlregister (d, rst, en, ce, clk, q);
   parameter d_width = 5;
   parameter init_value = 'b0;

   input [d_width-1:0] d;
   input rst, en, ce, clk;
   output [d_width-1:0] q;

   wire internal_clr, internal_ce;

   assign internal_clr = rst & ce;
   assign internal_ce  = ce & en;

   synth_reg_w_init #(.width(d_width),
                      .init_index(2),
                      .init_value(init_value),
                      .latency(1))
   synth_reg_inst(.i(d),
                  .ce(internal_ce),
                  .clr(internal_clr),
                  .clk(clk),
                  .o(q));
endmodule

`timescale 1 ns / 10 ps
module sysgen_constant_e4634507e1 (
  output [(10 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 10'b0000000001;
endmodule
`timescale 1 ns / 10 ps
module sysgen_counter_ae8eb9dbd5 (
  input [(1 - 1):0] rst,
  input [(1 - 1):0] en,
  output [(10 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire rst_1_40;
  wire en_1_45;
  reg [(10 - 1):0] count_reg_20_23 = 10'b0000000000;
  wire count_reg_20_23_rst;
  wire count_reg_20_23_en;
  localparam [(1 - 1):0] const_value = 1'b1;
  localparam [(2 - 1):0] const_value_x_000000 = 2'b10;
  localparam [(10 - 1):0] const_value_x_000001 = 10'b0000000001;
  localparam [(10 - 1):0] const_value_x_000002 = 10'b0000000000;
  localparam [(10 - 1):0] const_value_x_000003 = 10'b0000000000;
  localparam [(10 - 1):0] const_value_x_000004 = 10'b0000000001;
  wire bool_44_4;
  reg [(11 - 1):0] count_reg_join_44_1;
  reg count_reg_join_44_1_en;
  reg count_reg_join_44_1_rst;
  reg rst_limit_join_44_1;
  assign rst_1_40 = rst;
  assign en_1_45 = en;
  always @(posedge clk)
    begin:proc_count_reg_20_23
      if (((ce == 1'b1) && (count_reg_20_23_rst == 1'b1)))
        begin
          count_reg_20_23 <= 10'b0000000000;
        end
      else if (((ce == 1'b1) && (count_reg_20_23_en == 1'b1)))
        begin
          count_reg_20_23 <= count_reg_20_23 + const_value_x_000004;
        end
    end
  assign bool_44_4 = rst_1_40 || 1'b0;
  always @(bool_44_4 or count_reg_20_23 or en_1_45)
    begin:proc_if_44_1
      if (bool_44_4)
        begin
          count_reg_join_44_1_rst = 1'b1;
        end
      else if (en_1_45)
        begin
          count_reg_join_44_1_rst = 1'b0;
        end
      else 
        begin
          count_reg_join_44_1_rst = 1'b0;
        end
      if (en_1_45)
        begin
          count_reg_join_44_1_en = 1'b1;
        end
      else 
        begin
          count_reg_join_44_1_en = 1'b0;
        end
      if (bool_44_4)
        begin
          rst_limit_join_44_1 = 1'b0;
        end
      else if (en_1_45)
        begin
          rst_limit_join_44_1 = 1'b0;
        end
      else 
        begin
          rst_limit_join_44_1 = 1'b0;
        end
    end
  assign count_reg_20_23_rst = count_reg_join_44_1_rst;
  assign count_reg_20_23_en = count_reg_join_44_1_en;
  assign op = count_reg_20_23;
endmodule
`timescale 1 ns / 10 ps
module analysis_xldelay #(parameter width = -1, latency = -1, reg_retiming = 0, reset = 0)
  (input [width-1:0] d,
   input ce, clk, en, rst,
   output [width-1:0] q);

generate
  if ((latency == 0) || ((reg_retiming == 0) && (reset == 0)))
  begin:srl_delay
    synth_reg # (width, latency)
      reg1 (
        .i(d),
        .ce(ce & en),
        .clr(1'b0),
        .clk(clk),
        .o(q));
  end

  if ((latency>=1) && ((reg_retiming) || (reset)))
  begin:reg_delay
    synth_reg_reg # (width, latency)
      reg2 (
        .i(d),
        .ce(ce & en),
        .clr(rst),
        .clk(clk),
        .o(q));
  end
endgenerate
endmodule
`timescale 1 ns / 10 ps
module sysgen_relational_8091e49c36 (
  input [(10 - 1):0] a,
  input [(10 - 1):0] b,
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire [(10 - 1):0] a_1_31;
  wire [(10 - 1):0] b_1_34;
  reg op_mem_37_22[0:(1 - 1)];
  initial
    begin
      op_mem_37_22[0] = 1'b0;
    end
  wire op_mem_37_22_front_din;
  wire op_mem_37_22_back;
  wire op_mem_37_22_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value = 1'b1;
  wire result_12_3_rel;
  assign a_1_31 = a;
  assign b_1_34 = b;
  assign op_mem_37_22_back = op_mem_37_22[0];
  always @(posedge clk)
    begin:proc_op_mem_37_22
      integer i;
      if (((ce == 1'b1) && (op_mem_37_22_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_37_22[0] <= op_mem_37_22_front_din;
        end
    end
  assign result_12_3_rel = a_1_31 == b_1_34;
  assign op_mem_37_22_front_din = result_12_3_rel;
  assign op_mem_37_22_push_front_pop_back_en = 1'b1;
  assign op = op_mem_37_22_back;
endmodule
`timescale 1 ns / 10 ps
module sysgen_bitbasher_9ad06e58b4 (
  input [(48 - 1):0] in_48,
  output [(44 - 1):0] out_44_40,
  input clk,
  input ce,
  input clr);
  wire signed [(48 - 1):0] in_48_1_34;
  wire [(44 - 1):0] slice_5_36;
  wire [(44 - 1):0] fullout_44_40_5_1_concat;
  wire signed [(44 - 1):0] out_44_40_7_1_force;
  assign in_48_1_34 = in_48;
  assign slice_5_36 = in_48_1_34[43:0];
  assign fullout_44_40_5_1_concat = {slice_5_36};
  assign out_44_40_7_1_force = fullout_44_40_5_1_concat;
  assign out_44_40 = out_44_40_7_1_force;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_f55f7e19e4 (
  output [(3 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 3'b000;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_ca1b802306 (
  output [(5 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 5'b01101;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_dcedf586d8 (
  output [(9 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 9'b000000101;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_3279e4247e (
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 1'b0;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_aa143ea269 (
  output [(5 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 5'b00100;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_dc2cb6dc35 (
  output [(9 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 9'b000110101;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_955834a406 (
  output [(4 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 4'b0000;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_59f933b351 (
  output [(5 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 5'b01100;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_273d4c021c (
  output [(4 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 4'b0011;
endmodule
`timescale 1 ns / 10 ps

module  analysis_xldsp48e2   (acout, bcout, carrycascout, carryout, multsignout, overflow, underflow, patterndetect, patternbdetect, p, pcout, xorout, a, acin, alumode, b, bcin, c, carrycascin, carryin, carryinsel, cea1, cea2, cead, cealumode, ceb1, ceb2, cec, cecarryin, cectrl, ced, ceinmode, cem, cemultcarryin, cep, multsignin, op, opmode, pcin, rsta, rstcarryin, rstalumode, rstb, rstc, rstctrl, rstd, rstinmode, rstm, rstp, clk, d, inmode, en, rst, ce);

//parameter Definitions
parameter integer areg= 1;
parameter a_input = "DIRECT";
parameter legacy_mode = "NONE";
parameter integer carryout_width = 4;
parameter integer breg = 1;
parameter integer acascreg = 1;
parameter integer adreg = 1;
parameter integer bcascreg = 1;
parameter integer carryinreg = 1;
parameter integer carryinselreg = 1;
parameter integer creg = 1;
parameter integer dreg = 1;
parameter integer inmodereg = 1;
parameter integer mreg = 1;
parameter integer opmodereg= 1;
parameter integer preg = 1;
parameter use_op = 0;
parameter use_c_port = 1;
parameter c_use_cea1 = 0;
parameter c_use_cea2 = 0;
parameter c_use_cead = 0;
parameter c_use_ced  = 0;
parameter c_use_ceinmode = 0;
parameter c_use_rstd = 0;
parameter c_use_rstinmode = 0;
parameter c_use_ceb1 = 0;
parameter c_use_ceb2 = 0;
parameter c_use_cemultcarryin = 0;
parameter c_use_cem = 0;
parameter c_use_cep = 0;
parameter c_use_cec = 0;
parameter c_use_cecarryin = 0;
parameter c_use_cectrl = 0;
parameter c_use_bcin = 0;
parameter c_use_a = 1;
parameter c_use_acin = 0;
parameter c_use_en = 0;
parameter c_use_rst = 0;
parameter c_use_rsta = 0;
parameter c_use_rstb = 0;
parameter c_use_rstp = 0;
parameter c_use_rstc = 0;
parameter c_use_rstcarryin = 0;
parameter c_use_rstalumode = 0;
parameter c_use_rstctrl = 0;
parameter c_use_rstm = 0;
parameter c_use_pcin = 0;
parameter c_use_b = 0;
parameter c_use_c = 0;
parameter c_use_cealumode = 0;
parameter c_use_multsignin = 0;
parameter alumodereg = 1;
parameter autoreset_pattern_detect = "NO_RESET";
parameter b_input = "DIRECT";
parameter mask = 48'h3FFFFFFFFFFF;
parameter pattern = 48'h000000000000;
parameter sel_mask = "MASK";
parameter sel_pattern = "PATTERN";
parameter use_mult = "MULTIPLY";
parameter use_pattern_detect = "NO_PATDET";
parameter use_simd = "ONE48";
parameter amultsel = "A";
parameter bmultsel = "B";
parameter preaddinsel = "A";
parameter rnd = 48'h000000000000;
parameter xorsimd = "XOR12";
parameter use_widexor = "FALSE";
parameter autoreset_priority = "RESET";

//new parameters introduced for dsp48e2 not yet defined in PDD
parameter is_alumode_inverted = 4'b0000;
parameter is_carryin_inverted = 1'b0;
parameter is_clk_inverted = 1'b0;
parameter is_inmode_inverted = 5'b00000;
parameter is_opmode_inverted = 9'b000000000;
parameter is_rstallcarryin_inverted = 1'b0;
parameter is_rstalumode_inverted = 1'b0;
parameter is_rsta_inverted = 1'b0;
parameter is_rstb_inverted = 1'b0;
parameter is_rstctrl_inverted = 1'b0;
parameter is_rstc_inverted = 1'b0;
parameter is_rstd_inverted = 1'b0;
parameter is_rstinmode_inverted = 1'b0;
parameter is_rstm_inverted = 1'b0;
parameter is_rstp_inverted = 1'b0;

//Port Declartions
output [29:0] acout;
output [17:0] bcout;
output carrycascout;
output [3:0]carryout;
output multsignout;
output [47:0] p;
output patternbdetect;
output patterndetect;
output [47:0] pcout;
output underflow;
output overflow;
output [7:0] xorout;

input [29:0] a;
input [29:0] acin;
input [3:0] alumode;
input [17:0] b;
input [17:0] bcin;
input [47:0] c;
input carrycascin;
input carryin;
input [2:0] carryinsel;
input cea1;
input cea2;
input cead;
input ceb1;
input ceb2;
input cealumode;
input cec;
input cecarryin;
input cectrl;
input ced;
input ceinmode;
input cem;
input cemultcarryin;
input cep;
input multsignin;
input [21:0] op;
input [8:0] opmode;
input [47:0] pcin;
input rsta;
input rstcarryin;
input rstalumode;
input rstb;
input rstc;
input rstctrl;
input rstd;
input rstinmode;
input rstm;
input rstp;
input clk;
input [26:0] d;
input [4:0] inmode;
input en;
input rst;
input ce;


//Wire Declartions
wire internal_cea1;
wire internal_cea2;
wire internal_cead;
wire internal_ceb1;
wire internal_ceb2;
wire internal_cec;
wire internal_cep;
wire internal_cem;
wire internal_cemultcarryin;
wire internal_cecarryin;
wire internal_cectrl;
wire internal_ced;
wire internal_ceinmode;
wire internal_cealumode;

wire internal_en;

wire internal_rst;
wire internal_rsta;
wire internal_rstb;
wire internal_rstc;
wire internal_rstd;
wire internal_rstinmode;
wire internal_rstalumode;
wire internal_rstcarryin;
wire internal_rstctrl;
wire internal_rstm;
wire [47:0] internal_pcin;
wire internal_rstp;
wire [8:0] internal_opmode;
wire internal_sub;
wire internal_carryin;
wire internal_multsignin;
wire [2:0] internal_carryin_sel;
wire [3:0] internal_alumode;
wire [29:0] internal_a;
wire [29:0] internal_acin;
wire [17:0] internal_b;
wire [17:0] internal_bcin;
wire [47:0] internal_c;
wire [3:0] internal_carryout;
wire [26:0] internal_d;
wire [4:0]  internal_inmode;

  assign internal_multsignin = (c_use_multsignin ? multsignin : 1'b0);
  assign internal_en = (c_use_en ? en : 1'b1);
  assign internal_cem = (ce & internal_en) & (c_use_cem ? cem : 1'b1);
  assign internal_cemultcarryin = (ce & internal_en) & (c_use_cemultcarryin ? cemultcarryin : 1'b1);
  assign internal_cep = (ce & internal_en) & (c_use_cep ? cep : 1'b1);
  assign internal_cecarryin = (ce & internal_en) & (c_use_cecarryin ? cecarryin : 1'b1);
  assign internal_cectrl = (ce & internal_en) & (c_use_cectrl ? cectrl : 1'b1);
  assign internal_ced = (ce & internal_en) & (c_use_ced ? ced : 1'b1);
  assign internal_cead = (ce & internal_en) & (c_use_cead ? cead : 1'b1);
  assign internal_ceinmode = (ce & internal_en) & (c_use_ceinmode ? ceinmode :     1'b1);
  assign internal_cealumode = (ce & internal_en) & (c_use_cealumode ? cealumode : 1'b1);

  assign internal_rst = (c_use_rst ? rst : 1'b0);
  assign internal_rsta = (c_use_rsta ? rsta : 1'b0) | internal_rst;
  assign internal_rstb = (c_use_rstb ? rstb : 1'b0) | internal_rst;
  assign internal_rstcarryin = (c_use_rstcarryin ? rstcarryin : 1'b0) | internal_rst;
  assign internal_rstctrl = (c_use_rstctrl ? rstctrl : 1'b0) | internal_rst;
  assign internal_rstd = (((amultsel == "AD") | (bmultsel == "AD")) ? rstd : 1'b0) | internal_rst;
  assign internal_rstinmode = (((amultsel == "AD") | (bmultsel == "AD")) ? rstinmode : 1'b0) | internal_rst;
  assign internal_rstm = (c_use_rstm ? rstm : 1'b0) | internal_rst;
  assign internal_rstp = (c_use_rstp ? rstp : 1'b0) | internal_rst;
  assign internal_rstalumode = (c_use_rstalumode ? rstalumode : 1'b0) | internal_rst;

  assign internal_acin = (c_use_acin ? acin : 30'b00000000000000000000000000000);
  assign internal_bcin = (c_use_bcin ? bcin : 18'b000000000000000000);
  assign internal_a = (c_use_a ? a : 30'd0);
  assign internal_b = (c_use_b ? b : 18'd0);
  assign internal_c = (c_use_c ? c : 48'd0);
  assign internal_pcin = (c_use_pcin ? pcin : 48'd0);
  assign internal_d = (((amultsel == "AD") | (bmultsel == "AD")) ? d : 26'd0);

generate
  if(areg == 0)
  begin: cea_0
   assign internal_cea1 = 1'b1;
        assign internal_cea2 = 1'b1;
  end

  if(areg == 1)
  begin: cea_1
        assign internal_cea1 = 1'b1;
        assign internal_cea2 = (ce & internal_en) & (c_use_cea1 ? cea1 : 1'b1);
  end

  if(areg == 2)
  begin: cea_2
       assign internal_cea1 = (ce & internal_en) & (c_use_cea1 ? cea1 : 1'b1);
       assign internal_cea2 = (ce & internal_en) & (c_use_cea2 ? cea2 : 1'b1);
  end
//------------------
  if(breg == 0)
  begin: ceb_0
   assign internal_ceb1 = 1'b1;
        assign internal_ceb2 = 1'b1;
  end

  if(breg == 1)
  begin: ceb_1
        assign internal_ceb1 = 1'b1;
        assign internal_ceb2 = (ce & internal_en) & (c_use_ceb1 ? ceb1 : 1'b1);
  end

  if(breg == 2)
  begin: ceb_2
       assign internal_ceb1 = (ce & internal_en) & (c_use_ceb1 ? ceb1 : 1'b1);
       assign internal_ceb2 = (ce & internal_en) & (c_use_ceb2 ? ceb2 : 1'b1);
  end

//------------------
  if (use_op == 0)
  begin:opmode_0
     assign internal_opmode = opmode;
     assign internal_alumode = alumode;
     assign internal_carryin = carryin;
     assign internal_carryin_sel = carryinsel;
     if((amultsel == "A") & (bmultsel == "B"))
     begin:dport_0
           assign internal_inmode = 0;
     end
     if((amultsel == "AD") | (bmultsel == "AD"))
     begin:dport_1
           assign internal_inmode = inmode;
     end
  end

  if(use_op == 1)
  begin:opmode_1
   assign internal_opmode = op [8:0];
   assign internal_alumode = op[12:9];
   assign internal_carryin = op[13];
   assign internal_carryin_sel = op[16:14];
   assign internal_inmode = op[21:17];
  end


  if (use_c_port == 1)
  begin:using_cport
    assign internal_cec = (ce & internal_en) & (c_use_cec ? cec : 1'b1);
    assign internal_rstc = (c_use_rstc ? rstc : 1'b0) | internal_rst;
  end

  if (use_c_port == 0)
  begin:not_using_cport
     assign internal_cec = 1'b1;
     assign internal_rstc = 1'b1;
  end

  if (carryout_width == 1)
  begin: carryoutwidth1
     assign carryout = internal_carryout[3];
  end

  if (carryout_width == 2)
  begin: carryoutwidth2
     assign carryout[1] = internal_carryout[3];
     assign carryout[0] = internal_carryout[1];
  end

  if (carryout_width == 4)
  begin: carryoutwidth4
     assign carryout = internal_carryout;
  end

endgenerate

   DSP48E2 dsp48_inst(.ACOUT(acout),
               .BCOUT(bcout),
               .CARRYCASCOUT(carrycascout),
               .CARRYOUT(internal_carryout),
               .MULTSIGNOUT(multsignout),
               .OVERFLOW(overflow),
               .P(p),
               .PATTERNBDETECT(patternbdetect),
               .PATTERNDETECT(patterndetect),
               .PCOUT(pcout),
               .UNDERFLOW(underflow),
               .A(internal_a),
               .ACIN(internal_acin),
               .ALUMODE(internal_alumode),
               .B(internal_b),
               .BCIN(internal_bcin),
               .C(internal_c),
               .CARRYCASCIN(carrycascin),
               .CARRYIN(internal_carryin),
               .CARRYINSEL(internal_carryin_sel),
               .CEA1(internal_cea1),
               .CEA2(internal_cea2),
               .CEAD(internal_cead),//Added in DSP48E2
               .CEALUMODE(internal_cealumode),
               .CEB1(internal_ceb1),
               .CEB2(internal_ceb2),
               .CEC(internal_cec),
               .CECARRYIN(internal_cecarryin),
               .CECTRL(internal_cectrl),
               .CED(internal_ced),//Added in DSP48E2
               .CEINMODE(internal_ceinmode),//Added in DSP48E2
               .CEM(internal_cem),
               .CEP(internal_cep),
               .CLK(clk),
               .D(internal_d),
               .INMODE(internal_inmode),
               .MULTSIGNIN(internal_multsignin),
               .OPMODE(internal_opmode),
               .PCIN(internal_pcin),
               .RSTA(internal_rsta),
               .RSTALLCARRYIN(internal_rstcarryin),
               .RSTALUMODE(internal_rstalumode),
               .RSTB(internal_rstb),
               .RSTC(internal_rstc),
               .RSTCTRL(internal_rstctrl),
               .RSTD(internal_rstd),
               .RSTINMODE(internal_rstinmode),
               .RSTM(internal_rstm),
               .RSTP(internal_rstp),
               .XOROUT(xorout)
                   );
defparam
dsp48_inst.ACASCREG = acascreg,
dsp48_inst.ALUMODEREG = alumodereg,
dsp48_inst.AREG = areg,
dsp48_inst.ADREG = adreg,
dsp48_inst.AUTORESET_PATDET = autoreset_pattern_detect,
dsp48_inst.B_INPUT = b_input,
dsp48_inst.BREG = breg,
dsp48_inst.CARRYINREG = carryinreg,
dsp48_inst.CARRYINSELREG = carryinselreg,
dsp48_inst.CREG = creg,
dsp48_inst.DREG = dreg,
dsp48_inst.INMODEREG = inmodereg,
dsp48_inst.MREG = mreg,
dsp48_inst.OPMODEREG = opmodereg,
dsp48_inst.PREG = preg,
dsp48_inst.A_INPUT = a_input,
dsp48_inst.BCASCREG = bcascreg,
dsp48_inst.B_INPUT = b_input,
dsp48_inst.MASK = mask,
dsp48_inst.PATTERN = pattern,
dsp48_inst.SEL_MASK = sel_mask,
dsp48_inst.SEL_PATTERN = sel_pattern,
dsp48_inst.USE_MULT= use_mult,
dsp48_inst.USE_PATTERN_DETECT = use_pattern_detect,
dsp48_inst.USE_SIMD = use_simd,
dsp48_inst.AMULTSEL = amultsel,
dsp48_inst.BMULTSEL = bmultsel,
dsp48_inst.PREADDINSEL = preaddinsel,
dsp48_inst.RND = rnd,
dsp48_inst.USE_WIDEXOR = use_widexor,
dsp48_inst.XORSIMD = xorsimd,
dsp48_inst.AUTORESET_PRIORITY = autoreset_priority,
dsp48_inst.IS_ALUMODE_INVERTED = is_alumode_inverted,
dsp48_inst.IS_CARRYIN_INVERTED = is_carryin_inverted,
dsp48_inst.IS_CLK_INVERTED = is_clk_inverted,
dsp48_inst.IS_INMODE_INVERTED = is_inmode_inverted,
dsp48_inst.IS_OPMODE_INVERTED = is_opmode_inverted,
dsp48_inst.IS_RSTALLCARRYIN_INVERTED = is_rstallcarryin_inverted,
dsp48_inst.IS_RSTALUMODE_INVERTED = is_rstalumode_inverted,
dsp48_inst.IS_RSTA_INVERTED = is_rsta_inverted,
dsp48_inst.IS_RSTB_INVERTED = is_rstb_inverted,
dsp48_inst.IS_RSTCTRL_INVERTED = is_rstctrl_inverted,
dsp48_inst.IS_RSTC_INVERTED = is_rstc_inverted,
dsp48_inst.IS_RSTD_INVERTED = is_rstd_inverted,
dsp48_inst.IS_RSTINMODE_INVERTED = is_rstinmode_inverted,
dsp48_inst.IS_RSTM_INVERTED = is_rstm_inverted,
dsp48_inst.IS_RSTP_INVERTED = is_rstp_inverted;
endmodule

`timescale 1 ns / 10 ps
module sysgen_bitbasher_e079815bf8 (
  input [(26 - 1):0] ain,
  output [(27 - 1):0] ao,
  input clk,
  input ce,
  input clr);
  wire signed [(26 - 1):0] ain_1_27;
  wire [(1 - 1):0] slice_5_39;
  wire [(1 - 1):0] concat_5_30;
  wire [(26 - 1):0] slice_5_60;
  wire [(27 - 1):0] fullao_5_1_concat;
  wire signed [(27 - 1):0] ao_7_1_force;
  assign ain_1_27 = ain;
  assign slice_5_39 = ain_1_27[25:25];
  assign concat_5_30 = {slice_5_39};
  assign slice_5_60 = ain_1_27[25:0];
  assign fullao_5_1_concat = {concat_5_30, slice_5_60};
  assign ao_7_1_force = fullao_5_1_concat;
  assign ao = ao_7_1_force;
endmodule
`timescale 1 ns / 10 ps
module sysgen_bitbasher_a06b1eb5f5 (
  input [(26 - 1):0] ain,
  output [(30 - 1):0] ao,
  input clk,
  input ce,
  input clr);
  wire signed [(26 - 1):0] ain_1_27;
  wire [(1 - 1):0] slice_5_59;
  wire [(1 - 1):0] concat_5_50;
  wire [(1 - 1):0] concat_5_40;
  wire [(1 - 1):0] slice_5_101;
  wire [(1 - 1):0] concat_5_92;
  wire [(1 - 1):0] concat_5_82;
  wire [(1 - 1):0] slice_5_143;
  wire [(1 - 1):0] concat_5_134;
  wire [(1 - 1):0] concat_5_124;
  wire [(1 - 1):0] slice_5_185;
  wire [(1 - 1):0] concat_5_176;
  wire [(1 - 1):0] concat_5_166;
  wire [(4 - 1):0] concat_5_30;
  wire [(26 - 1):0] slice_5_208;
  wire [(30 - 1):0] fullao_5_1_concat;
  wire signed [(30 - 1):0] ao_7_1_force;
  assign ain_1_27 = ain;
  assign slice_5_59 = ain_1_27[25:25];
  assign concat_5_50 = {slice_5_59};
  assign concat_5_40 = {concat_5_50};
  assign slice_5_101 = ain_1_27[25:25];
  assign concat_5_92 = {slice_5_101};
  assign concat_5_82 = {concat_5_92};
  assign slice_5_143 = ain_1_27[25:25];
  assign concat_5_134 = {slice_5_143};
  assign concat_5_124 = {concat_5_134};
  assign slice_5_185 = ain_1_27[25:25];
  assign concat_5_176 = {slice_5_185};
  assign concat_5_166 = {concat_5_176};
  assign concat_5_30 = {concat_5_40, concat_5_82, concat_5_124, concat_5_166};
  assign slice_5_208 = ain_1_27[25:0];
  assign fullao_5_1_concat = {concat_5_30, slice_5_208};
  assign ao_7_1_force = fullao_5_1_concat;
  assign ao = ao_7_1_force;
endmodule
`timescale 1 ns / 10 ps
module sysgen_bitbasher_2542317ff2 (
  input [(18 - 1):0] bin,
  output [(18 - 1):0] bo,
  input clk,
  input ce,
  input clr);
  wire signed [(18 - 1):0] bin_1_27;
  wire [(1 - 1):0] slice_5_39;
  wire [(1 - 1):0] concat_5_30;
  wire [(17 - 1):0] slice_5_60;
  wire [(18 - 1):0] fullbo_5_1_concat;
  wire signed [(18 - 1):0] bo_7_1_force;
  assign bin_1_27 = bin;
  assign slice_5_39 = bin_1_27[16:16];
  assign concat_5_30 = {slice_5_39};
  assign slice_5_60 = bin_1_27[16:0];
  assign fullbo_5_1_concat = {concat_5_30, slice_5_60};
  assign bo_7_1_force = fullbo_5_1_concat;
  assign bo = bo_7_1_force;
endmodule
`timescale 1 ns / 10 ps
module sysgen_bitbasher_063b6ce6f6 (
  input [(18 - 1):0] bin,
  output [(27 - 1):0] bo,
  input clk,
  input ce,
  input clr);
  wire signed [(18 - 1):0] bin_1_27;
  wire [(1 - 1):0] slice_5_59;
  wire [(1 - 1):0] concat_5_50;
  wire [(1 - 1):0] concat_5_40;
  wire [(1 - 1):0] slice_5_101;
  wire [(1 - 1):0] concat_5_92;
  wire [(1 - 1):0] concat_5_82;
  wire [(1 - 1):0] slice_5_143;
  wire [(1 - 1):0] concat_5_134;
  wire [(1 - 1):0] concat_5_124;
  wire [(1 - 1):0] slice_5_185;
  wire [(1 - 1):0] concat_5_176;
  wire [(1 - 1):0] concat_5_166;
  wire [(1 - 1):0] slice_5_227;
  wire [(1 - 1):0] concat_5_218;
  wire [(1 - 1):0] concat_5_208;
  wire [(1 - 1):0] slice_5_269;
  wire [(1 - 1):0] concat_5_260;
  wire [(1 - 1):0] concat_5_250;
  wire [(1 - 1):0] slice_5_311;
  wire [(1 - 1):0] concat_5_302;
  wire [(1 - 1):0] concat_5_292;
  wire [(1 - 1):0] slice_5_353;
  wire [(1 - 1):0] concat_5_344;
  wire [(1 - 1):0] concat_5_334;
  wire [(1 - 1):0] slice_5_395;
  wire [(1 - 1):0] concat_5_386;
  wire [(1 - 1):0] concat_5_376;
  wire [(1 - 1):0] slice_5_437;
  wire [(1 - 1):0] concat_5_428;
  wire [(1 - 1):0] concat_5_418;
  wire [(10 - 1):0] concat_5_30;
  wire [(17 - 1):0] slice_5_460;
  wire [(27 - 1):0] fullbo_5_1_concat;
  wire signed [(27 - 1):0] bo_7_1_force;
  assign bin_1_27 = bin;
  assign slice_5_59 = bin_1_27[16:16];
  assign concat_5_50 = {slice_5_59};
  assign concat_5_40 = {concat_5_50};
  assign slice_5_101 = bin_1_27[16:16];
  assign concat_5_92 = {slice_5_101};
  assign concat_5_82 = {concat_5_92};
  assign slice_5_143 = bin_1_27[16:16];
  assign concat_5_134 = {slice_5_143};
  assign concat_5_124 = {concat_5_134};
  assign slice_5_185 = bin_1_27[16:16];
  assign concat_5_176 = {slice_5_185};
  assign concat_5_166 = {concat_5_176};
  assign slice_5_227 = bin_1_27[16:16];
  assign concat_5_218 = {slice_5_227};
  assign concat_5_208 = {concat_5_218};
  assign slice_5_269 = bin_1_27[16:16];
  assign concat_5_260 = {slice_5_269};
  assign concat_5_250 = {concat_5_260};
  assign slice_5_311 = bin_1_27[16:16];
  assign concat_5_302 = {slice_5_311};
  assign concat_5_292 = {concat_5_302};
  assign slice_5_353 = bin_1_27[16:16];
  assign concat_5_344 = {slice_5_353};
  assign concat_5_334 = {concat_5_344};
  assign slice_5_395 = bin_1_27[16:16];
  assign concat_5_386 = {slice_5_395};
  assign concat_5_376 = {concat_5_386};
  assign slice_5_437 = bin_1_27[16:16];
  assign concat_5_428 = {slice_5_437};
  assign concat_5_418 = {concat_5_428};
  assign concat_5_30 = {concat_5_40, concat_5_82, concat_5_124, concat_5_166, concat_5_208, concat_5_250, concat_5_292, concat_5_334, concat_5_376, concat_5_418};
  assign slice_5_460 = bin_1_27[16:0];
  assign fullbo_5_1_concat = {concat_5_30, slice_5_460};
  assign bo_7_1_force = fullbo_5_1_concat;
  assign bo = bo_7_1_force;
endmodule
`timescale 1 ns / 10 ps
module sysgen_bitbasher_8ad1a92090 (
  input [(27 - 1):0] ain,
  output [(30 - 1):0] ao,
  input clk,
  input ce,
  input clr);
  wire signed [(27 - 1):0] ain_1_27;
  wire [(1 - 1):0] slice_5_59;
  wire [(1 - 1):0] concat_5_50;
  wire [(1 - 1):0] concat_5_40;
  wire [(1 - 1):0] slice_5_101;
  wire [(1 - 1):0] concat_5_92;
  wire [(1 - 1):0] concat_5_82;
  wire [(1 - 1):0] slice_5_143;
  wire [(1 - 1):0] concat_5_134;
  wire [(1 - 1):0] concat_5_124;
  wire [(3 - 1):0] concat_5_30;
  wire [(27 - 1):0] slice_5_166;
  wire [(30 - 1):0] fullao_5_1_concat;
  wire signed [(30 - 1):0] ao_7_1_force;
  assign ain_1_27 = ain;
  assign slice_5_59 = ain_1_27[26:26];
  assign concat_5_50 = {slice_5_59};
  assign concat_5_40 = {concat_5_50};
  assign slice_5_101 = ain_1_27[26:26];
  assign concat_5_92 = {slice_5_101};
  assign concat_5_82 = {concat_5_92};
  assign slice_5_143 = ain_1_27[26:26];
  assign concat_5_134 = {slice_5_143};
  assign concat_5_124 = {concat_5_134};
  assign concat_5_30 = {concat_5_40, concat_5_82, concat_5_124};
  assign slice_5_166 = ain_1_27[26:0];
  assign fullao_5_1_concat = {concat_5_30, slice_5_166};
  assign ao_7_1_force = fullao_5_1_concat;
  assign ao = ao_7_1_force;
endmodule
`timescale 1 ns / 10 ps


module analysis_xlconvert (din, clk, ce, clr, en, dout);

//Parameter Definitions
   parameter din_width= 16;
   parameter din_bin_pt= 4;
   parameter din_arith= `xlUnsigned;
   parameter dout_width= 8;
   parameter dout_bin_pt= 2;
   parameter dout_arith= `xlUnsigned;
   parameter en_width = 1;
   parameter en_bin_pt = 0;
   parameter en_arith = `xlUnsigned;
   parameter bool_conversion = 0;
   parameter latency = 0;
   parameter quantization= `xlTruncate;
   parameter overflow= `xlWrap;

//Port Declartions
   input [din_width-1:0] din;
   input clk, ce, clr;
   input [en_width-1:0] en;
   output [dout_width-1:0] dout;

//Wire Declartions
   wire [dout_width-1:0]   result;
   wire internal_ce;
   assign internal_ce = ce & en[0];

generate
 if (bool_conversion == 1)
    begin:bool_converion_generate
       assign result = din;
    end
 else
    begin:std_conversion
       convert_type #(din_width,
                      din_bin_pt,
                      din_arith,
		              dout_width,
                      dout_bin_pt,
                      dout_arith,
                      quantization,
                      overflow)
        conv_udp (.inp(din), .res(result));
    end
endgenerate

generate
if (latency > 0)
     begin:latency_test
	synth_reg # (dout_width, latency)
	  reg1 (
	       .i(result),
	       .ce(internal_ce),
	       .clr(clr),
	       .clk(clk),
	       .o(dout));
     end
else
     begin:latency0
	assign dout = result;
     end
endgenerate

endmodule

`timescale 1 ns / 10 ps
module sysgen_reinterpret_6024a7805e (
  input [(18 - 1):0] input_port,
  output [(18 - 1):0] output_port,
  input clk,
  input ce,
  input clr);
  wire [(18 - 1):0] input_port_1_40;
  wire signed [(18 - 1):0] output_port_5_5_force;
  assign input_port_1_40 = input_port;
  assign output_port_5_5_force = input_port_1_40;
  assign output_port = output_port_5_5_force;
endmodule
`timescale 1 ns / 10 ps

module  analysis_xlslice  (x, y);

//Parameter Definitions
parameter new_msb= 9;
parameter new_lsb= 1;
parameter x_width= 16;
parameter y_width= 8;

//Port Declartions
input [x_width-1:0] x;
output [y_width-1:0] y;

assign y = x[new_msb:new_lsb];

endmodule
`timescale 1 ns / 10 ps
module sysgen_concat_abdb311c7f (
  input [(18 - 1):0] in0,
  input [(18 - 1):0] in1,
  output [(36 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire [(18 - 1):0] in0_1_23;
  wire [(18 - 1):0] in1_1_27;
  wire [(36 - 1):0] y_2_1_concat;
  assign in0_1_23 = in0;
  assign in1_1_27 = in1;
  assign y_2_1_concat = {in0_1_23, in1_1_27};
  assign y = y_2_1_concat;
endmodule
`timescale 1 ns / 10 ps
module sysgen_reinterpret_e285cd0ab3 (
  input [(18 - 1):0] input_port,
  output [(18 - 1):0] output_port,
  input clk,
  input ce,
  input clr);
  wire signed [(18 - 1):0] input_port_1_40;
  wire [(18 - 1):0] output_port_5_5_force;
  assign input_port_1_40 = input_port;
  assign output_port_5_5_force = input_port_1_40;
  assign output_port = output_port_5_5_force;
endmodule
`timescale 1 ns / 10 ps
module sysgen_reinterpret_4c825992c2 (
  input [(27 - 1):0] input_port,
  output [(27 - 1):0] output_port,
  input clk,
  input ce,
  input clr);
  wire [(27 - 1):0] input_port_1_40;
  wire signed [(27 - 1):0] output_port_5_5_force;
  assign input_port_1_40 = input_port;
  assign output_port_5_5_force = input_port_1_40;
  assign output_port = output_port_5_5_force;
endmodule
`timescale 1 ns / 10 ps
module sysgen_concat_179c989edf (
  input [(36 - 1):0] in0,
  input [(36 - 1):0] in1,
  input [(36 - 1):0] in2,
  input [(36 - 1):0] in3,
  input [(36 - 1):0] in4,
  input [(36 - 1):0] in5,
  input [(36 - 1):0] in6,
  input [(36 - 1):0] in7,
  input [(36 - 1):0] in8,
  input [(36 - 1):0] in9,
  input [(36 - 1):0] in10,
  input [(36 - 1):0] in11,
  input [(36 - 1):0] in12,
  input [(36 - 1):0] in13,
  input [(36 - 1):0] in14,
  input [(36 - 1):0] in15,
  output [(576 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire [(36 - 1):0] in0_1_23;
  wire [(36 - 1):0] in1_1_27;
  wire [(36 - 1):0] in2_1_31;
  wire [(36 - 1):0] in3_1_35;
  wire [(36 - 1):0] in4_1_39;
  wire [(36 - 1):0] in5_1_43;
  wire [(36 - 1):0] in6_1_47;
  wire [(36 - 1):0] in7_1_51;
  wire [(36 - 1):0] in8_1_55;
  wire [(36 - 1):0] in9_1_59;
  wire [(36 - 1):0] in10_1_63;
  wire [(36 - 1):0] in11_1_68;
  wire [(36 - 1):0] in12_1_73;
  wire [(36 - 1):0] in13_1_78;
  wire [(36 - 1):0] in14_1_83;
  wire [(36 - 1):0] in15_1_88;
  wire [(576 - 1):0] y_2_1_concat;
  assign in0_1_23 = in0;
  assign in1_1_27 = in1;
  assign in2_1_31 = in2;
  assign in3_1_35 = in3;
  assign in4_1_39 = in4;
  assign in5_1_43 = in5;
  assign in6_1_47 = in6;
  assign in7_1_51 = in7;
  assign in8_1_55 = in8;
  assign in9_1_59 = in9;
  assign in10_1_63 = in10;
  assign in11_1_68 = in11;
  assign in12_1_73 = in12;
  assign in13_1_78 = in13;
  assign in14_1_83 = in14;
  assign in15_1_88 = in15;
  assign y_2_1_concat = {in0_1_23, in1_1_27, in2_1_31, in3_1_35, in4_1_39, in5_1_43, in6_1_47, in7_1_51, in8_1_55, in9_1_59, in10_1_63, in11_1_68, in12_1_73, in13_1_78, in14_1_83, in15_1_88};
  assign y = y_2_1_concat;
endmodule
`timescale 1 ns / 10 ps
module sysgen_bitbasher_97e7bfdeae (
  input [(16 - 1):0] a,
  input [(16 - 1):0] b,
  input [(16 - 1):0] c,
  input [(16 - 1):0] d,
  input [(16 - 1):0] e,
  input [(16 - 1):0] f,
  input [(16 - 1):0] g,
  input [(16 - 1):0] h,
  output [(128 - 1):0] out_x0,
  input clk,
  input ce,
  input clr);
  wire signed [(16 - 1):0] a_1_31;
  wire signed [(16 - 1):0] b_1_34;
  wire signed [(16 - 1):0] c_1_37;
  wire signed [(16 - 1):0] d_1_40;
  wire signed [(16 - 1):0] e_1_43;
  wire signed [(16 - 1):0] f_1_46;
  wire signed [(16 - 1):0] g_1_49;
  wire signed [(16 - 1):0] h_1_52;
  wire [(128 - 1):0] fullout_x0_5_1_concat;
  assign a_1_31 = a;
  assign b_1_34 = b;
  assign c_1_37 = c;
  assign d_1_40 = d;
  assign e_1_43 = e;
  assign f_1_46 = f;
  assign g_1_49 = g;
  assign h_1_52 = h;
  assign fullout_x0_5_1_concat = {a_1_31, b_1_34, c_1_37, d_1_40, e_1_43, f_1_46, g_1_49, h_1_52};
  assign out_x0 = fullout_x0_5_1_concat;
endmodule
`timescale 1 ns / 10 ps
module sysgen_bitbasher_d9896a3987 (
  input [(128 - 1):0] a,
  input [(128 - 1):0] b,
  output [(256 - 1):0] out_x0,
  input clk,
  input ce,
  input clr);
  wire [(128 - 1):0] a_1_31;
  wire [(128 - 1):0] b_1_34;
  wire [(256 - 1):0] fullout_x0_5_1_concat;
  assign a_1_31 = a;
  assign b_1_34 = b;
  assign fullout_x0_5_1_concat = {a_1_31, b_1_34};
  assign out_x0 = fullout_x0_5_1_concat;
endmodule
`timescale 1 ns / 10 ps
module sysgen_bitbasher_f9b893fd40 (
  input [(7 - 1):0] in_x0,
  output [(1 - 1):0] out0,
  input clk,
  input ce,
  input clr);
  wire [(7 - 1):0] in_x0_1_29;
  wire [(1 - 1):0] slice_5_41;
  wire [(1 - 1):0] concat_5_32;
  wire [(1 - 1):0] fullout0_5_1_concat;
  assign in_x0_1_29 = in_x0;
  assign slice_5_41 = in_x0_1_29[6:6];
  assign concat_5_32 = {slice_5_41};
  assign fullout0_5_1_concat = {concat_5_32};
  assign out0 = fullout0_5_1_concat;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_e022ba6ae2 (
  output [(7 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 7'b1111111;
endmodule
`timescale 1 ns / 10 ps
module sysgen_counter_59383ad04f (
  input [(1 - 1):0] rst,
  input [(1 - 1):0] en,
  output [(7 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire rst_1_40;
  wire en_1_45;
  reg [(7 - 1):0] count_reg_20_23 = 7'b1110101;
  wire count_reg_20_23_rst;
  wire count_reg_20_23_en;
  localparam [(1 - 1):0] const_value = 1'b1;
  localparam [(2 - 1):0] const_value_x_000000 = 2'b10;
  localparam [(7 - 1):0] const_value_x_000001 = 7'b0000001;
  localparam [(7 - 1):0] const_value_x_000002 = 7'b1110101;
  localparam [(7 - 1):0] const_value_x_000003 = 7'b1110101;
  localparam [(7 - 1):0] const_value_x_000004 = 7'b0000001;
  wire bool_44_4;
  reg [(8 - 1):0] count_reg_join_44_1;
  reg count_reg_join_44_1_en;
  reg count_reg_join_44_1_rst;
  reg rst_limit_join_44_1;
  assign rst_1_40 = rst;
  assign en_1_45 = en;
  always @(posedge clk)
    begin:proc_count_reg_20_23
      if (((ce == 1'b1) && (count_reg_20_23_rst == 1'b1)))
        begin
          count_reg_20_23 <= 7'b1110101;
        end
      else if (((ce == 1'b1) && (count_reg_20_23_en == 1'b1)))
        begin
          count_reg_20_23 <= count_reg_20_23 + const_value_x_000004;
        end
    end
  assign bool_44_4 = rst_1_40 || 1'b0;
  always @(bool_44_4 or count_reg_20_23 or en_1_45)
    begin:proc_if_44_1
      if (bool_44_4)
        begin
          count_reg_join_44_1_rst = 1'b1;
        end
      else if (en_1_45)
        begin
          count_reg_join_44_1_rst = 1'b0;
        end
      else 
        begin
          count_reg_join_44_1_rst = 1'b0;
        end
      if (en_1_45)
        begin
          count_reg_join_44_1_en = 1'b1;
        end
      else 
        begin
          count_reg_join_44_1_en = 1'b0;
        end
      if (bool_44_4)
        begin
          rst_limit_join_44_1 = 1'b0;
        end
      else if (en_1_45)
        begin
          rst_limit_join_44_1 = 1'b0;
        end
      else 
        begin
          rst_limit_join_44_1 = 1'b0;
        end
    end
  assign count_reg_20_23_rst = count_reg_join_44_1_rst;
  assign count_reg_20_23_en = count_reg_join_44_1_en;
  assign op = count_reg_20_23;
endmodule
`timescale 1 ns / 10 ps
module sysgen_inverter_0ae1d865a4 (
  input [(1 - 1):0] ip,
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire ip_1_26;
  reg op_mem_22_20[0:(1 - 1)];
  initial
    begin
      op_mem_22_20[0] = 1'b0;
    end
  wire op_mem_22_20_front_din;
  wire op_mem_22_20_back;
  wire op_mem_22_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value = 1'b1;
  wire internal_ip_12_1_bitnot;
  assign ip_1_26 = ip;
  assign op_mem_22_20_back = op_mem_22_20[0];
  always @(posedge clk)
    begin:proc_op_mem_22_20
      integer i;
      if (((ce == 1'b1) && (op_mem_22_20_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_22_20[0] <= op_mem_22_20_front_din;
        end
    end
  assign internal_ip_12_1_bitnot = ~ip_1_26;
  assign op_mem_22_20_push_front_pop_back_en = 1'b0;
  assign op = internal_ip_12_1_bitnot;
endmodule
`timescale 1 ns / 10 ps
module sysgen_inverter_cfe6d6ddff (
  input [(1 - 1):0] ip,
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire ip_1_26;
  reg op_mem_22_20[0:(1 - 1)];
  initial
    begin
      op_mem_22_20[0] = 1'b0;
    end
  wire op_mem_22_20_front_din;
  wire op_mem_22_20_back;
  wire op_mem_22_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value = 1'b1;
  wire internal_ip_12_1_bitnot;
  assign ip_1_26 = ip;
  assign op_mem_22_20_back = op_mem_22_20[0];
  always @(posedge clk)
    begin:proc_op_mem_22_20
      integer i;
      if (((ce == 1'b1) && (op_mem_22_20_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_22_20[0] <= op_mem_22_20_front_din;
        end
    end
  assign internal_ip_12_1_bitnot = ~ip_1_26;
  assign op_mem_22_20_front_din = internal_ip_12_1_bitnot;
  assign op_mem_22_20_push_front_pop_back_en = 1'b1;
  assign op = op_mem_22_20_back;
endmodule
`timescale 1 ns / 10 ps
module sysgen_logical_6133dbf7eb (
  input [(1 - 1):0] d0,
  input [(1 - 1):0] d1,
  output [(1 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire d0_1_24;
  wire d1_1_27;
  reg latency_pipe_5_26[0:(1 - 1)];
  initial
    begin
      latency_pipe_5_26[0] = 1'b0;
    end
  wire latency_pipe_5_26_front_din;
  wire latency_pipe_5_26_back;
  wire latency_pipe_5_26_push_front_pop_back_en;
  wire fully_2_1_bit;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign latency_pipe_5_26_back = latency_pipe_5_26[0];
  always @(posedge clk)
    begin:proc_latency_pipe_5_26
      integer i;
      if (((ce == 1'b1) && (latency_pipe_5_26_push_front_pop_back_en == 1'b1)))
        begin
          latency_pipe_5_26[0] <= latency_pipe_5_26_front_din;
        end
    end
  assign fully_2_1_bit = d0_1_24 & d1_1_27;
  assign latency_pipe_5_26_front_din = fully_2_1_bit;
  assign latency_pipe_5_26_push_front_pop_back_en = 1'b1;
  assign y = latency_pipe_5_26_back;
endmodule
`timescale 1 ns / 10 ps
module sysgen_relational_2772b29bfa (
  input [(7 - 1):0] a,
  input [(7 - 1):0] b,
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire [(7 - 1):0] a_1_31;
  wire [(7 - 1):0] b_1_34;
  reg op_mem_37_22[0:(1 - 1)];
  initial
    begin
      op_mem_37_22[0] = 1'b0;
    end
  wire op_mem_37_22_front_din;
  wire op_mem_37_22_back;
  wire op_mem_37_22_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value = 1'b1;
  wire result_12_3_rel;
  assign a_1_31 = a;
  assign b_1_34 = b;
  assign op_mem_37_22_back = op_mem_37_22[0];
  always @(posedge clk)
    begin:proc_op_mem_37_22
      integer i;
      if (((ce == 1'b1) && (op_mem_37_22_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_37_22[0] <= op_mem_37_22_front_din;
        end
    end
  assign result_12_3_rel = a_1_31 == b_1_34;
  assign op_mem_37_22_front_din = result_12_3_rel;
  assign op_mem_37_22_push_front_pop_back_en = 1'b1;
  assign op = op_mem_37_22_back;
endmodule
`timescale 1 ns / 10 ps
module sysgen_bitbasher_0261bcd2fd (
  input [(19 - 1):0] bin,
  output [(18 - 1):0] bo,
  input clk,
  input ce,
  input clr);
  wire signed [(19 - 1):0] bin_1_27;
  wire [(1 - 1):0] slice_5_39;
  wire [(1 - 1):0] concat_5_30;
  wire [(17 - 1):0] slice_5_60;
  wire [(18 - 1):0] fullbo_5_1_concat;
  wire signed [(18 - 1):0] bo_7_1_force;
  assign bin_1_27 = bin;
  assign slice_5_39 = bin_1_27[16:16];
  assign concat_5_30 = {slice_5_39};
  assign slice_5_60 = bin_1_27[16:0];
  assign fullbo_5_1_concat = {concat_5_30, slice_5_60};
  assign bo_7_1_force = fullbo_5_1_concat;
  assign bo = bo_7_1_force;
endmodule
`timescale 1 ns / 10 ps
module sysgen_reinterpret_747ce41cc9 (
  input [(26 - 1):0] input_port,
  output [(26 - 1):0] output_port,
  input clk,
  input ce,
  input clr);
  wire [(26 - 1):0] input_port_1_40;
  wire signed [(26 - 1):0] output_port_5_5_force;
  assign input_port_1_40 = input_port;
  assign output_port_5_5_force = input_port_1_40;
  assign output_port = output_port_5_5_force;
endmodule
`timescale 1 ns / 10 ps
module sysgen_mux_f0d16f038a (
  input [(1 - 1):0] sel,
  input [(27 - 1):0] d0,
  input [(27 - 1):0] d1,
  output [(27 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire [(1 - 1):0] sel_1_20;
  wire [(27 - 1):0] d0_1_24;
  wire [(27 - 1):0] d1_1_27;
  localparam [(27 - 1):0] const_value = 27'b000000000000000000000000000;
  reg [(27 - 1):0] pipe_16_22[0:(1 - 1)];
  initial
    begin
      pipe_16_22[0] = 27'b000000000000000000000000000;
    end
  wire [(27 - 1):0] pipe_16_22_front_din;
  wire [(27 - 1):0] pipe_16_22_back;
  wire pipe_16_22_push_front_pop_back_en;
  reg [(27 - 1):0] unregy_join_6_1;
  assign sel_1_20 = sel;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign pipe_16_22_back = pipe_16_22[0];
  always @(posedge clk)
    begin:proc_pipe_16_22
      integer i;
      if (((ce == 1'b1) && (pipe_16_22_push_front_pop_back_en == 1'b1)))
        begin
          pipe_16_22[0] <= pipe_16_22_front_din;
        end
    end
  always @(d0_1_24 or d1_1_27 or sel_1_20)
    begin:proc_switch_6_1
      case (sel_1_20)
        1'b0 :
          begin
            unregy_join_6_1 = d0_1_24;
          end
        default:
          begin
            unregy_join_6_1 = d1_1_27;
          end
      endcase
    end
  assign pipe_16_22_front_din = unregy_join_6_1;
  assign pipe_16_22_push_front_pop_back_en = 1'b1;
  assign y = pipe_16_22_back;
endmodule
`timescale 1 ns / 10 ps
module sysgen_reinterpret_4a19215d2c (
  input [(26 - 1):0] input_port,
  output [(26 - 1):0] output_port,
  input clk,
  input ce,
  input clr);
  wire signed [(26 - 1):0] input_port_1_40;
  assign input_port_1_40 = input_port;
  assign output_port = input_port_1_40;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_6e28eee130 (
  output [(18 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 18'b001000000000000000;
endmodule
`timescale 1 ns / 10 ps
module sysgen_mux_394266d5e3 (
  input [(1 - 1):0] sel,
  input [(18 - 1):0] d0,
  input [(18 - 1):0] d1,
  output [(18 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire [(1 - 1):0] sel_1_20;
  wire [(18 - 1):0] d0_1_24;
  wire [(18 - 1):0] d1_1_27;
  localparam [(18 - 1):0] const_value = 18'b000000000000000000;
  reg [(18 - 1):0] pipe_16_22[0:(1 - 1)];
  initial
    begin
      pipe_16_22[0] = 18'b000000000000000000;
    end
  wire [(18 - 1):0] pipe_16_22_front_din;
  wire [(18 - 1):0] pipe_16_22_back;
  wire pipe_16_22_push_front_pop_back_en;
  reg [(18 - 1):0] unregy_join_6_1;
  assign sel_1_20 = sel;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign pipe_16_22_back = pipe_16_22[0];
  always @(posedge clk)
    begin:proc_pipe_16_22
      integer i;
      if (((ce == 1'b1) && (pipe_16_22_push_front_pop_back_en == 1'b1)))
        begin
          pipe_16_22[0] <= pipe_16_22_front_din;
        end
    end
  always @(d0_1_24 or d1_1_27 or sel_1_20)
    begin:proc_switch_6_1
      case (sel_1_20)
        1'b0 :
          begin
            unregy_join_6_1 = d0_1_24;
          end
        default:
          begin
            unregy_join_6_1 = d1_1_27;
          end
      endcase
    end
  assign pipe_16_22_front_din = unregy_join_6_1;
  assign pipe_16_22_push_front_pop_back_en = 1'b1;
  assign y = pipe_16_22_back;
endmodule
`timescale 1 ns / 10 ps
module sysgen_bitbasher_df5db6b10f (
  input [(1 - 1):0] reset,
  input [(1 - 1):0] sel,
  output [(2 - 1):0] out_x0,
  input clk,
  input ce,
  input clr);
  wire reset_1_31;
  wire sel_1_38;
  wire [(2 - 1):0] fullout_x0_5_1_concat;
  assign reset_1_31 = reset;
  assign sel_1_38 = sel;
  assign fullout_x0_5_1_concat = {reset_1_31, sel_1_38};
  assign out_x0 = fullout_x0_5_1_concat;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_b683b52a08 (
  output [(16 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 16'b0000000000000000;
endmodule
`timescale 1 ns / 10 ps
module sysgen_mux_868be0b7fc (
  input [(2 - 1):0] sel,
  input [(16 - 1):0] d0,
  input [(16 - 1):0] d1,
  input [(16 - 1):0] d2,
  input [(16 - 1):0] d3,
  output [(16 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire [(2 - 1):0] sel_1_20;
  wire [(16 - 1):0] d0_1_24;
  wire [(16 - 1):0] d1_1_27;
  wire [(16 - 1):0] d2_1_30;
  wire [(16 - 1):0] d3_1_33;
  localparam [(16 - 1):0] const_value = 16'b0000000000000000;
  reg [(16 - 1):0] pipe_20_22[0:(1 - 1)];
  initial
    begin
      pipe_20_22[0] = 16'b0000000000000000;
    end
  wire [(16 - 1):0] pipe_20_22_front_din;
  wire [(16 - 1):0] pipe_20_22_back;
  wire pipe_20_22_push_front_pop_back_en;
  reg [(16 - 1):0] unregy_join_6_1;
  assign sel_1_20 = sel;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign d2_1_30 = d2;
  assign d3_1_33 = d3;
  assign pipe_20_22_back = pipe_20_22[0];
  always @(posedge clk)
    begin:proc_pipe_20_22
      integer i;
      if (((ce == 1'b1) && (pipe_20_22_push_front_pop_back_en == 1'b1)))
        begin
          pipe_20_22[0] <= pipe_20_22_front_din;
        end
    end
  always @(d0_1_24 or d1_1_27 or d2_1_30 or d3_1_33 or sel_1_20)
    begin:proc_switch_6_1
      case (sel_1_20)
        2'b00 :
          begin
            unregy_join_6_1 = d0_1_24;
          end
        2'b01 :
          begin
            unregy_join_6_1 = d1_1_27;
          end
        2'b10 :
          begin
            unregy_join_6_1 = d2_1_30;
          end
        default:
          begin
            unregy_join_6_1 = d3_1_33;
          end
      endcase
    end
  assign pipe_20_22_front_din = unregy_join_6_1;
  assign pipe_20_22_push_front_pop_back_en = 1'b1;
  assign y = pipe_20_22_back;
endmodule
`timescale 1 ns / 10 ps
module sysgen_reinterpret_8d31a2c662 (
  input [(16 - 1):0] input_port,
  output [(16 - 1):0] output_port,
  input clk,
  input ce,
  input clr);
  wire signed [(16 - 1):0] input_port_1_40;
  assign input_port_1_40 = input_port;
  assign output_port = input_port_1_40;
endmodule
`timescale 1 ns / 10 ps
module sysgen_bitbasher_71bae9b6ea (
  input [(64 - 1):0] a,
  output [(16 - 1):0] b,
  input clk,
  input ce,
  input clr);
  wire [(64 - 1):0] a_1_26;
  wire [(1 - 1):0] slice_5_38;
  wire [(1 - 1):0] slice_5_54;
  wire [(1 - 1):0] slice_5_70;
  wire [(1 - 1):0] slice_5_86;
  wire [(1 - 1):0] slice_5_102;
  wire [(1 - 1):0] slice_5_118;
  wire [(1 - 1):0] slice_5_134;
  wire [(1 - 1):0] slice_5_150;
  wire [(1 - 1):0] slice_5_166;
  wire [(1 - 1):0] slice_5_182;
  wire [(1 - 1):0] slice_5_198;
  wire [(1 - 1):0] slice_5_216;
  wire [(1 - 1):0] slice_5_234;
  wire [(1 - 1):0] slice_5_252;
  wire [(1 - 1):0] slice_5_270;
  wire [(1 - 1):0] slice_5_288;
  wire [(16 - 1):0] concat_5_29;
  wire [(16 - 1):0] fullb_5_1_concat;
  wire signed [(16 - 1):0] b_7_1_force;
  assign a_1_26 = a;
  assign slice_5_38 = a_1_26[0:0];
  assign slice_5_54 = a_1_26[1:1];
  assign slice_5_70 = a_1_26[2:2];
  assign slice_5_86 = a_1_26[3:3];
  assign slice_5_102 = a_1_26[4:4];
  assign slice_5_118 = a_1_26[5:5];
  assign slice_5_134 = a_1_26[6:6];
  assign slice_5_150 = a_1_26[7:7];
  assign slice_5_166 = a_1_26[8:8];
  assign slice_5_182 = a_1_26[9:9];
  assign slice_5_198 = a_1_26[10:10];
  assign slice_5_216 = a_1_26[11:11];
  assign slice_5_234 = a_1_26[12:12];
  assign slice_5_252 = a_1_26[13:13];
  assign slice_5_270 = a_1_26[14:14];
  assign slice_5_288 = a_1_26[15:15];
  assign concat_5_29 = {slice_5_38, slice_5_54, slice_5_70, slice_5_86, slice_5_102, slice_5_118, slice_5_134, slice_5_150, slice_5_166, slice_5_182, slice_5_198, slice_5_216, slice_5_234, slice_5_252, slice_5_270, slice_5_288};
  assign fullb_5_1_concat = {concat_5_29};
  assign b_7_1_force = fullb_5_1_concat;
  assign b = b_7_1_force;
endmodule
`timescale 1 ns / 10 ps
module sysgen_bitbasher_3c07c7a21e (
  input [(64 - 1):0] a,
  output [(16 - 1):0] b,
  input clk,
  input ce,
  input clr);
  wire [(64 - 1):0] a_1_26;
  wire [(1 - 1):0] slice_5_38;
  wire [(1 - 1):0] slice_5_56;
  wire [(1 - 1):0] slice_5_74;
  wire [(1 - 1):0] slice_5_92;
  wire [(1 - 1):0] slice_5_110;
  wire [(1 - 1):0] slice_5_128;
  wire [(1 - 1):0] slice_5_146;
  wire [(1 - 1):0] slice_5_164;
  wire [(1 - 1):0] slice_5_182;
  wire [(1 - 1):0] slice_5_200;
  wire [(1 - 1):0] slice_5_218;
  wire [(1 - 1):0] slice_5_236;
  wire [(1 - 1):0] slice_5_254;
  wire [(1 - 1):0] slice_5_272;
  wire [(1 - 1):0] slice_5_290;
  wire [(1 - 1):0] slice_5_308;
  wire [(16 - 1):0] concat_5_29;
  wire [(16 - 1):0] fullb_5_1_concat;
  wire signed [(16 - 1):0] b_7_1_force;
  assign a_1_26 = a;
  assign slice_5_38 = a_1_26[48:48];
  assign slice_5_56 = a_1_26[49:49];
  assign slice_5_74 = a_1_26[50:50];
  assign slice_5_92 = a_1_26[51:51];
  assign slice_5_110 = a_1_26[52:52];
  assign slice_5_128 = a_1_26[53:53];
  assign slice_5_146 = a_1_26[54:54];
  assign slice_5_164 = a_1_26[55:55];
  assign slice_5_182 = a_1_26[56:56];
  assign slice_5_200 = a_1_26[57:57];
  assign slice_5_218 = a_1_26[58:58];
  assign slice_5_236 = a_1_26[59:59];
  assign slice_5_254 = a_1_26[60:60];
  assign slice_5_272 = a_1_26[61:61];
  assign slice_5_290 = a_1_26[62:62];
  assign slice_5_308 = a_1_26[63:63];
  assign concat_5_29 = {slice_5_38, slice_5_56, slice_5_74, slice_5_92, slice_5_110, slice_5_128, slice_5_146, slice_5_164, slice_5_182, slice_5_200, slice_5_218, slice_5_236, slice_5_254, slice_5_272, slice_5_290, slice_5_308};
  assign fullb_5_1_concat = {concat_5_29};
  assign b_7_1_force = fullb_5_1_concat;
  assign b = b_7_1_force;
endmodule
`timescale 1 ns / 10 ps
module sysgen_bitbasher_333b6387f2 (
  input [(256 - 1):0] a,
  output [(64 - 1):0] b,
  input clk,
  input ce,
  input clr);
  wire [(256 - 1):0] a_1_26;
  wire [(1 - 1):0] slice_5_38;
  wire [(1 - 1):0] slice_5_58;
  wire [(1 - 1):0] slice_5_78;
  wire [(1 - 1):0] slice_5_98;
  wire [(1 - 1):0] slice_5_118;
  wire [(1 - 1):0] slice_5_138;
  wire [(1 - 1):0] slice_5_158;
  wire [(1 - 1):0] slice_5_178;
  wire [(1 - 1):0] slice_5_198;
  wire [(1 - 1):0] slice_5_218;
  wire [(1 - 1):0] slice_5_238;
  wire [(1 - 1):0] slice_5_258;
  wire [(1 - 1):0] slice_5_278;
  wire [(1 - 1):0] slice_5_298;
  wire [(1 - 1):0] slice_5_318;
  wire [(1 - 1):0] slice_5_338;
  wire [(1 - 1):0] slice_5_358;
  wire [(1 - 1):0] slice_5_378;
  wire [(1 - 1):0] slice_5_398;
  wire [(1 - 1):0] slice_5_418;
  wire [(1 - 1):0] slice_5_438;
  wire [(1 - 1):0] slice_5_458;
  wire [(1 - 1):0] slice_5_478;
  wire [(1 - 1):0] slice_5_498;
  wire [(1 - 1):0] slice_5_518;
  wire [(1 - 1):0] slice_5_538;
  wire [(1 - 1):0] slice_5_558;
  wire [(1 - 1):0] slice_5_578;
  wire [(1 - 1):0] slice_5_598;
  wire [(1 - 1):0] slice_5_618;
  wire [(1 - 1):0] slice_5_638;
  wire [(1 - 1):0] slice_5_658;
  wire [(1 - 1):0] slice_5_678;
  wire [(1 - 1):0] slice_5_698;
  wire [(1 - 1):0] slice_5_718;
  wire [(1 - 1):0] slice_5_738;
  wire [(1 - 1):0] slice_5_758;
  wire [(1 - 1):0] slice_5_778;
  wire [(1 - 1):0] slice_5_798;
  wire [(1 - 1):0] slice_5_818;
  wire [(1 - 1):0] slice_5_838;
  wire [(1 - 1):0] slice_5_858;
  wire [(1 - 1):0] slice_5_878;
  wire [(1 - 1):0] slice_5_898;
  wire [(1 - 1):0] slice_5_918;
  wire [(1 - 1):0] slice_5_938;
  wire [(1 - 1):0] slice_5_958;
  wire [(1 - 1):0] slice_5_978;
  wire [(1 - 1):0] slice_5_998;
  wire [(1 - 1):0] slice_5_1018;
  wire [(1 - 1):0] slice_5_1038;
  wire [(1 - 1):0] slice_5_1058;
  wire [(1 - 1):0] slice_5_1078;
  wire [(1 - 1):0] slice_5_1098;
  wire [(1 - 1):0] slice_5_1118;
  wire [(1 - 1):0] slice_5_1138;
  wire [(1 - 1):0] slice_5_1158;
  wire [(1 - 1):0] slice_5_1178;
  wire [(1 - 1):0] slice_5_1198;
  wire [(1 - 1):0] slice_5_1218;
  wire [(1 - 1):0] slice_5_1238;
  wire [(1 - 1):0] slice_5_1258;
  wire [(1 - 1):0] slice_5_1278;
  wire [(1 - 1):0] slice_5_1298;
  wire [(64 - 1):0] concat_5_29;
  wire [(64 - 1):0] fullb_5_1_concat;
  assign a_1_26 = a;
  assign slice_5_38 = a_1_26[128:128];
  assign slice_5_58 = a_1_26[129:129];
  assign slice_5_78 = a_1_26[130:130];
  assign slice_5_98 = a_1_26[131:131];
  assign slice_5_118 = a_1_26[132:132];
  assign slice_5_138 = a_1_26[133:133];
  assign slice_5_158 = a_1_26[134:134];
  assign slice_5_178 = a_1_26[135:135];
  assign slice_5_198 = a_1_26[136:136];
  assign slice_5_218 = a_1_26[137:137];
  assign slice_5_238 = a_1_26[138:138];
  assign slice_5_258 = a_1_26[139:139];
  assign slice_5_278 = a_1_26[140:140];
  assign slice_5_298 = a_1_26[141:141];
  assign slice_5_318 = a_1_26[142:142];
  assign slice_5_338 = a_1_26[143:143];
  assign slice_5_358 = a_1_26[144:144];
  assign slice_5_378 = a_1_26[145:145];
  assign slice_5_398 = a_1_26[146:146];
  assign slice_5_418 = a_1_26[147:147];
  assign slice_5_438 = a_1_26[148:148];
  assign slice_5_458 = a_1_26[149:149];
  assign slice_5_478 = a_1_26[150:150];
  assign slice_5_498 = a_1_26[151:151];
  assign slice_5_518 = a_1_26[152:152];
  assign slice_5_538 = a_1_26[153:153];
  assign slice_5_558 = a_1_26[154:154];
  assign slice_5_578 = a_1_26[155:155];
  assign slice_5_598 = a_1_26[156:156];
  assign slice_5_618 = a_1_26[157:157];
  assign slice_5_638 = a_1_26[158:158];
  assign slice_5_658 = a_1_26[159:159];
  assign slice_5_678 = a_1_26[160:160];
  assign slice_5_698 = a_1_26[161:161];
  assign slice_5_718 = a_1_26[162:162];
  assign slice_5_738 = a_1_26[163:163];
  assign slice_5_758 = a_1_26[164:164];
  assign slice_5_778 = a_1_26[165:165];
  assign slice_5_798 = a_1_26[166:166];
  assign slice_5_818 = a_1_26[167:167];
  assign slice_5_838 = a_1_26[168:168];
  assign slice_5_858 = a_1_26[169:169];
  assign slice_5_878 = a_1_26[170:170];
  assign slice_5_898 = a_1_26[171:171];
  assign slice_5_918 = a_1_26[172:172];
  assign slice_5_938 = a_1_26[173:173];
  assign slice_5_958 = a_1_26[174:174];
  assign slice_5_978 = a_1_26[175:175];
  assign slice_5_998 = a_1_26[176:176];
  assign slice_5_1018 = a_1_26[177:177];
  assign slice_5_1038 = a_1_26[178:178];
  assign slice_5_1058 = a_1_26[179:179];
  assign slice_5_1078 = a_1_26[180:180];
  assign slice_5_1098 = a_1_26[181:181];
  assign slice_5_1118 = a_1_26[182:182];
  assign slice_5_1138 = a_1_26[183:183];
  assign slice_5_1158 = a_1_26[184:184];
  assign slice_5_1178 = a_1_26[185:185];
  assign slice_5_1198 = a_1_26[186:186];
  assign slice_5_1218 = a_1_26[187:187];
  assign slice_5_1238 = a_1_26[188:188];
  assign slice_5_1258 = a_1_26[189:189];
  assign slice_5_1278 = a_1_26[190:190];
  assign slice_5_1298 = a_1_26[191:191];
  assign concat_5_29 = {slice_5_38, slice_5_58, slice_5_78, slice_5_98, slice_5_118, slice_5_138, slice_5_158, slice_5_178, slice_5_198, slice_5_218, slice_5_238, slice_5_258, slice_5_278, slice_5_298, slice_5_318, slice_5_338, slice_5_358, slice_5_378, slice_5_398, slice_5_418, slice_5_438, slice_5_458, slice_5_478, slice_5_498, slice_5_518, slice_5_538, slice_5_558, slice_5_578, slice_5_598, slice_5_618, slice_5_638, slice_5_658, slice_5_678, slice_5_698, slice_5_718, slice_5_738, slice_5_758, slice_5_778, slice_5_798, slice_5_818, slice_5_838, slice_5_858, slice_5_878, slice_5_898, slice_5_918, slice_5_938, slice_5_958, slice_5_978, slice_5_998, slice_5_1018, slice_5_1038, slice_5_1058, slice_5_1078, slice_5_1098, slice_5_1118, slice_5_1138, slice_5_1158, slice_5_1178, slice_5_1198, slice_5_1218, slice_5_1238, slice_5_1258, slice_5_1278, slice_5_1298};
  assign fullb_5_1_concat = {concat_5_29};
  assign b = fullb_5_1_concat;
endmodule
`timescale 1 ns / 10 ps
module sysgen_bitbasher_b8e66099c6 (
  input [(256 - 1):0] a,
  output [(64 - 1):0] b,
  input clk,
  input ce,
  input clr);
  wire [(256 - 1):0] a_1_26;
  wire [(1 - 1):0] slice_5_38;
  wire [(1 - 1):0] slice_5_58;
  wire [(1 - 1):0] slice_5_78;
  wire [(1 - 1):0] slice_5_98;
  wire [(1 - 1):0] slice_5_118;
  wire [(1 - 1):0] slice_5_138;
  wire [(1 - 1):0] slice_5_158;
  wire [(1 - 1):0] slice_5_178;
  wire [(1 - 1):0] slice_5_198;
  wire [(1 - 1):0] slice_5_218;
  wire [(1 - 1):0] slice_5_238;
  wire [(1 - 1):0] slice_5_258;
  wire [(1 - 1):0] slice_5_278;
  wire [(1 - 1):0] slice_5_298;
  wire [(1 - 1):0] slice_5_318;
  wire [(1 - 1):0] slice_5_338;
  wire [(1 - 1):0] slice_5_358;
  wire [(1 - 1):0] slice_5_378;
  wire [(1 - 1):0] slice_5_398;
  wire [(1 - 1):0] slice_5_418;
  wire [(1 - 1):0] slice_5_438;
  wire [(1 - 1):0] slice_5_458;
  wire [(1 - 1):0] slice_5_478;
  wire [(1 - 1):0] slice_5_498;
  wire [(1 - 1):0] slice_5_518;
  wire [(1 - 1):0] slice_5_538;
  wire [(1 - 1):0] slice_5_558;
  wire [(1 - 1):0] slice_5_578;
  wire [(1 - 1):0] slice_5_598;
  wire [(1 - 1):0] slice_5_618;
  wire [(1 - 1):0] slice_5_638;
  wire [(1 - 1):0] slice_5_658;
  wire [(1 - 1):0] slice_5_678;
  wire [(1 - 1):0] slice_5_698;
  wire [(1 - 1):0] slice_5_718;
  wire [(1 - 1):0] slice_5_738;
  wire [(1 - 1):0] slice_5_758;
  wire [(1 - 1):0] slice_5_778;
  wire [(1 - 1):0] slice_5_798;
  wire [(1 - 1):0] slice_5_818;
  wire [(1 - 1):0] slice_5_838;
  wire [(1 - 1):0] slice_5_858;
  wire [(1 - 1):0] slice_5_878;
  wire [(1 - 1):0] slice_5_898;
  wire [(1 - 1):0] slice_5_918;
  wire [(1 - 1):0] slice_5_938;
  wire [(1 - 1):0] slice_5_958;
  wire [(1 - 1):0] slice_5_978;
  wire [(1 - 1):0] slice_5_998;
  wire [(1 - 1):0] slice_5_1018;
  wire [(1 - 1):0] slice_5_1038;
  wire [(1 - 1):0] slice_5_1058;
  wire [(1 - 1):0] slice_5_1078;
  wire [(1 - 1):0] slice_5_1098;
  wire [(1 - 1):0] slice_5_1118;
  wire [(1 - 1):0] slice_5_1138;
  wire [(1 - 1):0] slice_5_1158;
  wire [(1 - 1):0] slice_5_1178;
  wire [(1 - 1):0] slice_5_1198;
  wire [(1 - 1):0] slice_5_1218;
  wire [(1 - 1):0] slice_5_1238;
  wire [(1 - 1):0] slice_5_1258;
  wire [(1 - 1):0] slice_5_1278;
  wire [(1 - 1):0] slice_5_1298;
  wire [(64 - 1):0] concat_5_29;
  wire [(64 - 1):0] fullb_5_1_concat;
  assign a_1_26 = a;
  assign slice_5_38 = a_1_26[192:192];
  assign slice_5_58 = a_1_26[193:193];
  assign slice_5_78 = a_1_26[194:194];
  assign slice_5_98 = a_1_26[195:195];
  assign slice_5_118 = a_1_26[196:196];
  assign slice_5_138 = a_1_26[197:197];
  assign slice_5_158 = a_1_26[198:198];
  assign slice_5_178 = a_1_26[199:199];
  assign slice_5_198 = a_1_26[200:200];
  assign slice_5_218 = a_1_26[201:201];
  assign slice_5_238 = a_1_26[202:202];
  assign slice_5_258 = a_1_26[203:203];
  assign slice_5_278 = a_1_26[204:204];
  assign slice_5_298 = a_1_26[205:205];
  assign slice_5_318 = a_1_26[206:206];
  assign slice_5_338 = a_1_26[207:207];
  assign slice_5_358 = a_1_26[208:208];
  assign slice_5_378 = a_1_26[209:209];
  assign slice_5_398 = a_1_26[210:210];
  assign slice_5_418 = a_1_26[211:211];
  assign slice_5_438 = a_1_26[212:212];
  assign slice_5_458 = a_1_26[213:213];
  assign slice_5_478 = a_1_26[214:214];
  assign slice_5_498 = a_1_26[215:215];
  assign slice_5_518 = a_1_26[216:216];
  assign slice_5_538 = a_1_26[217:217];
  assign slice_5_558 = a_1_26[218:218];
  assign slice_5_578 = a_1_26[219:219];
  assign slice_5_598 = a_1_26[220:220];
  assign slice_5_618 = a_1_26[221:221];
  assign slice_5_638 = a_1_26[222:222];
  assign slice_5_658 = a_1_26[223:223];
  assign slice_5_678 = a_1_26[224:224];
  assign slice_5_698 = a_1_26[225:225];
  assign slice_5_718 = a_1_26[226:226];
  assign slice_5_738 = a_1_26[227:227];
  assign slice_5_758 = a_1_26[228:228];
  assign slice_5_778 = a_1_26[229:229];
  assign slice_5_798 = a_1_26[230:230];
  assign slice_5_818 = a_1_26[231:231];
  assign slice_5_838 = a_1_26[232:232];
  assign slice_5_858 = a_1_26[233:233];
  assign slice_5_878 = a_1_26[234:234];
  assign slice_5_898 = a_1_26[235:235];
  assign slice_5_918 = a_1_26[236:236];
  assign slice_5_938 = a_1_26[237:237];
  assign slice_5_958 = a_1_26[238:238];
  assign slice_5_978 = a_1_26[239:239];
  assign slice_5_998 = a_1_26[240:240];
  assign slice_5_1018 = a_1_26[241:241];
  assign slice_5_1038 = a_1_26[242:242];
  assign slice_5_1058 = a_1_26[243:243];
  assign slice_5_1078 = a_1_26[244:244];
  assign slice_5_1098 = a_1_26[245:245];
  assign slice_5_1118 = a_1_26[246:246];
  assign slice_5_1138 = a_1_26[247:247];
  assign slice_5_1158 = a_1_26[248:248];
  assign slice_5_1178 = a_1_26[249:249];
  assign slice_5_1198 = a_1_26[250:250];
  assign slice_5_1218 = a_1_26[251:251];
  assign slice_5_1238 = a_1_26[252:252];
  assign slice_5_1258 = a_1_26[253:253];
  assign slice_5_1278 = a_1_26[254:254];
  assign slice_5_1298 = a_1_26[255:255];
  assign concat_5_29 = {slice_5_38, slice_5_58, slice_5_78, slice_5_98, slice_5_118, slice_5_138, slice_5_158, slice_5_178, slice_5_198, slice_5_218, slice_5_238, slice_5_258, slice_5_278, slice_5_298, slice_5_318, slice_5_338, slice_5_358, slice_5_378, slice_5_398, slice_5_418, slice_5_438, slice_5_458, slice_5_478, slice_5_498, slice_5_518, slice_5_538, slice_5_558, slice_5_578, slice_5_598, slice_5_618, slice_5_638, slice_5_658, slice_5_678, slice_5_698, slice_5_718, slice_5_738, slice_5_758, slice_5_778, slice_5_798, slice_5_818, slice_5_838, slice_5_858, slice_5_878, slice_5_898, slice_5_918, slice_5_938, slice_5_958, slice_5_978, slice_5_998, slice_5_1018, slice_5_1038, slice_5_1058, slice_5_1078, slice_5_1098, slice_5_1118, slice_5_1138, slice_5_1158, slice_5_1178, slice_5_1198, slice_5_1218, slice_5_1238, slice_5_1258, slice_5_1278, slice_5_1298};
  assign fullb_5_1_concat = {concat_5_29};
  assign b = fullb_5_1_concat;
endmodule
`timescale 1 ns / 10 ps
module sysgen_bitbasher_a5048df188 (
  input [(64 - 1):0] a,
  output [(16 - 1):0] b,
  input clk,
  input ce,
  input clr);
  wire [(64 - 1):0] a_1_26;
  wire [(1 - 1):0] slice_5_38;
  wire [(1 - 1):0] slice_5_56;
  wire [(1 - 1):0] slice_5_74;
  wire [(1 - 1):0] slice_5_92;
  wire [(1 - 1):0] slice_5_110;
  wire [(1 - 1):0] slice_5_128;
  wire [(1 - 1):0] slice_5_146;
  wire [(1 - 1):0] slice_5_164;
  wire [(1 - 1):0] slice_5_182;
  wire [(1 - 1):0] slice_5_200;
  wire [(1 - 1):0] slice_5_218;
  wire [(1 - 1):0] slice_5_236;
  wire [(1 - 1):0] slice_5_254;
  wire [(1 - 1):0] slice_5_272;
  wire [(1 - 1):0] slice_5_290;
  wire [(1 - 1):0] slice_5_308;
  wire [(16 - 1):0] concat_5_29;
  wire [(16 - 1):0] fullb_5_1_concat;
  wire signed [(16 - 1):0] b_7_1_force;
  assign a_1_26 = a;
  assign slice_5_38 = a_1_26[16:16];
  assign slice_5_56 = a_1_26[17:17];
  assign slice_5_74 = a_1_26[18:18];
  assign slice_5_92 = a_1_26[19:19];
  assign slice_5_110 = a_1_26[20:20];
  assign slice_5_128 = a_1_26[21:21];
  assign slice_5_146 = a_1_26[22:22];
  assign slice_5_164 = a_1_26[23:23];
  assign slice_5_182 = a_1_26[24:24];
  assign slice_5_200 = a_1_26[25:25];
  assign slice_5_218 = a_1_26[26:26];
  assign slice_5_236 = a_1_26[27:27];
  assign slice_5_254 = a_1_26[28:28];
  assign slice_5_272 = a_1_26[29:29];
  assign slice_5_290 = a_1_26[30:30];
  assign slice_5_308 = a_1_26[31:31];
  assign concat_5_29 = {slice_5_38, slice_5_56, slice_5_74, slice_5_92, slice_5_110, slice_5_128, slice_5_146, slice_5_164, slice_5_182, slice_5_200, slice_5_218, slice_5_236, slice_5_254, slice_5_272, slice_5_290, slice_5_308};
  assign fullb_5_1_concat = {concat_5_29};
  assign b_7_1_force = fullb_5_1_concat;
  assign b = b_7_1_force;
endmodule
`timescale 1 ns / 10 ps
module sysgen_bitbasher_58e41673be (
  input [(64 - 1):0] a,
  output [(16 - 1):0] b,
  input clk,
  input ce,
  input clr);
  wire [(64 - 1):0] a_1_26;
  wire [(1 - 1):0] slice_5_38;
  wire [(1 - 1):0] slice_5_56;
  wire [(1 - 1):0] slice_5_74;
  wire [(1 - 1):0] slice_5_92;
  wire [(1 - 1):0] slice_5_110;
  wire [(1 - 1):0] slice_5_128;
  wire [(1 - 1):0] slice_5_146;
  wire [(1 - 1):0] slice_5_164;
  wire [(1 - 1):0] slice_5_182;
  wire [(1 - 1):0] slice_5_200;
  wire [(1 - 1):0] slice_5_218;
  wire [(1 - 1):0] slice_5_236;
  wire [(1 - 1):0] slice_5_254;
  wire [(1 - 1):0] slice_5_272;
  wire [(1 - 1):0] slice_5_290;
  wire [(1 - 1):0] slice_5_308;
  wire [(16 - 1):0] concat_5_29;
  wire [(16 - 1):0] fullb_5_1_concat;
  wire signed [(16 - 1):0] b_7_1_force;
  assign a_1_26 = a;
  assign slice_5_38 = a_1_26[32:32];
  assign slice_5_56 = a_1_26[33:33];
  assign slice_5_74 = a_1_26[34:34];
  assign slice_5_92 = a_1_26[35:35];
  assign slice_5_110 = a_1_26[36:36];
  assign slice_5_128 = a_1_26[37:37];
  assign slice_5_146 = a_1_26[38:38];
  assign slice_5_164 = a_1_26[39:39];
  assign slice_5_182 = a_1_26[40:40];
  assign slice_5_200 = a_1_26[41:41];
  assign slice_5_218 = a_1_26[42:42];
  assign slice_5_236 = a_1_26[43:43];
  assign slice_5_254 = a_1_26[44:44];
  assign slice_5_272 = a_1_26[45:45];
  assign slice_5_290 = a_1_26[46:46];
  assign slice_5_308 = a_1_26[47:47];
  assign concat_5_29 = {slice_5_38, slice_5_56, slice_5_74, slice_5_92, slice_5_110, slice_5_128, slice_5_146, slice_5_164, slice_5_182, slice_5_200, slice_5_218, slice_5_236, slice_5_254, slice_5_272, slice_5_290, slice_5_308};
  assign fullb_5_1_concat = {concat_5_29};
  assign b_7_1_force = fullb_5_1_concat;
  assign b = b_7_1_force;
endmodule
`timescale 1 ns / 10 ps
module sysgen_bitbasher_72de5e1cf9 (
  input [(256 - 1):0] a,
  output [(64 - 1):0] b,
  input clk,
  input ce,
  input clr);
  wire [(256 - 1):0] a_1_26;
  wire [(1 - 1):0] slice_5_38;
  wire [(1 - 1):0] slice_5_54;
  wire [(1 - 1):0] slice_5_70;
  wire [(1 - 1):0] slice_5_86;
  wire [(1 - 1):0] slice_5_102;
  wire [(1 - 1):0] slice_5_118;
  wire [(1 - 1):0] slice_5_134;
  wire [(1 - 1):0] slice_5_150;
  wire [(1 - 1):0] slice_5_166;
  wire [(1 - 1):0] slice_5_182;
  wire [(1 - 1):0] slice_5_198;
  wire [(1 - 1):0] slice_5_216;
  wire [(1 - 1):0] slice_5_234;
  wire [(1 - 1):0] slice_5_252;
  wire [(1 - 1):0] slice_5_270;
  wire [(1 - 1):0] slice_5_288;
  wire [(1 - 1):0] slice_5_306;
  wire [(1 - 1):0] slice_5_324;
  wire [(1 - 1):0] slice_5_342;
  wire [(1 - 1):0] slice_5_360;
  wire [(1 - 1):0] slice_5_378;
  wire [(1 - 1):0] slice_5_396;
  wire [(1 - 1):0] slice_5_414;
  wire [(1 - 1):0] slice_5_432;
  wire [(1 - 1):0] slice_5_450;
  wire [(1 - 1):0] slice_5_468;
  wire [(1 - 1):0] slice_5_486;
  wire [(1 - 1):0] slice_5_504;
  wire [(1 - 1):0] slice_5_522;
  wire [(1 - 1):0] slice_5_540;
  wire [(1 - 1):0] slice_5_558;
  wire [(1 - 1):0] slice_5_576;
  wire [(1 - 1):0] slice_5_594;
  wire [(1 - 1):0] slice_5_612;
  wire [(1 - 1):0] slice_5_630;
  wire [(1 - 1):0] slice_5_648;
  wire [(1 - 1):0] slice_5_666;
  wire [(1 - 1):0] slice_5_684;
  wire [(1 - 1):0] slice_5_702;
  wire [(1 - 1):0] slice_5_720;
  wire [(1 - 1):0] slice_5_738;
  wire [(1 - 1):0] slice_5_756;
  wire [(1 - 1):0] slice_5_774;
  wire [(1 - 1):0] slice_5_792;
  wire [(1 - 1):0] slice_5_810;
  wire [(1 - 1):0] slice_5_828;
  wire [(1 - 1):0] slice_5_846;
  wire [(1 - 1):0] slice_5_864;
  wire [(1 - 1):0] slice_5_882;
  wire [(1 - 1):0] slice_5_900;
  wire [(1 - 1):0] slice_5_918;
  wire [(1 - 1):0] slice_5_936;
  wire [(1 - 1):0] slice_5_954;
  wire [(1 - 1):0] slice_5_972;
  wire [(1 - 1):0] slice_5_990;
  wire [(1 - 1):0] slice_5_1008;
  wire [(1 - 1):0] slice_5_1026;
  wire [(1 - 1):0] slice_5_1044;
  wire [(1 - 1):0] slice_5_1062;
  wire [(1 - 1):0] slice_5_1080;
  wire [(1 - 1):0] slice_5_1098;
  wire [(1 - 1):0] slice_5_1116;
  wire [(1 - 1):0] slice_5_1134;
  wire [(1 - 1):0] slice_5_1152;
  wire [(64 - 1):0] concat_5_29;
  wire [(64 - 1):0] fullb_5_1_concat;
  assign a_1_26 = a;
  assign slice_5_38 = a_1_26[0:0];
  assign slice_5_54 = a_1_26[1:1];
  assign slice_5_70 = a_1_26[2:2];
  assign slice_5_86 = a_1_26[3:3];
  assign slice_5_102 = a_1_26[4:4];
  assign slice_5_118 = a_1_26[5:5];
  assign slice_5_134 = a_1_26[6:6];
  assign slice_5_150 = a_1_26[7:7];
  assign slice_5_166 = a_1_26[8:8];
  assign slice_5_182 = a_1_26[9:9];
  assign slice_5_198 = a_1_26[10:10];
  assign slice_5_216 = a_1_26[11:11];
  assign slice_5_234 = a_1_26[12:12];
  assign slice_5_252 = a_1_26[13:13];
  assign slice_5_270 = a_1_26[14:14];
  assign slice_5_288 = a_1_26[15:15];
  assign slice_5_306 = a_1_26[16:16];
  assign slice_5_324 = a_1_26[17:17];
  assign slice_5_342 = a_1_26[18:18];
  assign slice_5_360 = a_1_26[19:19];
  assign slice_5_378 = a_1_26[20:20];
  assign slice_5_396 = a_1_26[21:21];
  assign slice_5_414 = a_1_26[22:22];
  assign slice_5_432 = a_1_26[23:23];
  assign slice_5_450 = a_1_26[24:24];
  assign slice_5_468 = a_1_26[25:25];
  assign slice_5_486 = a_1_26[26:26];
  assign slice_5_504 = a_1_26[27:27];
  assign slice_5_522 = a_1_26[28:28];
  assign slice_5_540 = a_1_26[29:29];
  assign slice_5_558 = a_1_26[30:30];
  assign slice_5_576 = a_1_26[31:31];
  assign slice_5_594 = a_1_26[32:32];
  assign slice_5_612 = a_1_26[33:33];
  assign slice_5_630 = a_1_26[34:34];
  assign slice_5_648 = a_1_26[35:35];
  assign slice_5_666 = a_1_26[36:36];
  assign slice_5_684 = a_1_26[37:37];
  assign slice_5_702 = a_1_26[38:38];
  assign slice_5_720 = a_1_26[39:39];
  assign slice_5_738 = a_1_26[40:40];
  assign slice_5_756 = a_1_26[41:41];
  assign slice_5_774 = a_1_26[42:42];
  assign slice_5_792 = a_1_26[43:43];
  assign slice_5_810 = a_1_26[44:44];
  assign slice_5_828 = a_1_26[45:45];
  assign slice_5_846 = a_1_26[46:46];
  assign slice_5_864 = a_1_26[47:47];
  assign slice_5_882 = a_1_26[48:48];
  assign slice_5_900 = a_1_26[49:49];
  assign slice_5_918 = a_1_26[50:50];
  assign slice_5_936 = a_1_26[51:51];
  assign slice_5_954 = a_1_26[52:52];
  assign slice_5_972 = a_1_26[53:53];
  assign slice_5_990 = a_1_26[54:54];
  assign slice_5_1008 = a_1_26[55:55];
  assign slice_5_1026 = a_1_26[56:56];
  assign slice_5_1044 = a_1_26[57:57];
  assign slice_5_1062 = a_1_26[58:58];
  assign slice_5_1080 = a_1_26[59:59];
  assign slice_5_1098 = a_1_26[60:60];
  assign slice_5_1116 = a_1_26[61:61];
  assign slice_5_1134 = a_1_26[62:62];
  assign slice_5_1152 = a_1_26[63:63];
  assign concat_5_29 = {slice_5_38, slice_5_54, slice_5_70, slice_5_86, slice_5_102, slice_5_118, slice_5_134, slice_5_150, slice_5_166, slice_5_182, slice_5_198, slice_5_216, slice_5_234, slice_5_252, slice_5_270, slice_5_288, slice_5_306, slice_5_324, slice_5_342, slice_5_360, slice_5_378, slice_5_396, slice_5_414, slice_5_432, slice_5_450, slice_5_468, slice_5_486, slice_5_504, slice_5_522, slice_5_540, slice_5_558, slice_5_576, slice_5_594, slice_5_612, slice_5_630, slice_5_648, slice_5_666, slice_5_684, slice_5_702, slice_5_720, slice_5_738, slice_5_756, slice_5_774, slice_5_792, slice_5_810, slice_5_828, slice_5_846, slice_5_864, slice_5_882, slice_5_900, slice_5_918, slice_5_936, slice_5_954, slice_5_972, slice_5_990, slice_5_1008, slice_5_1026, slice_5_1044, slice_5_1062, slice_5_1080, slice_5_1098, slice_5_1116, slice_5_1134, slice_5_1152};
  assign fullb_5_1_concat = {concat_5_29};
  assign b = fullb_5_1_concat;
endmodule
`timescale 1 ns / 10 ps
module sysgen_bitbasher_dee0fcd34a (
  input [(256 - 1):0] a,
  output [(64 - 1):0] b,
  input clk,
  input ce,
  input clr);
  wire [(256 - 1):0] a_1_26;
  wire [(1 - 1):0] slice_5_38;
  wire [(1 - 1):0] slice_5_56;
  wire [(1 - 1):0] slice_5_74;
  wire [(1 - 1):0] slice_5_92;
  wire [(1 - 1):0] slice_5_110;
  wire [(1 - 1):0] slice_5_128;
  wire [(1 - 1):0] slice_5_146;
  wire [(1 - 1):0] slice_5_164;
  wire [(1 - 1):0] slice_5_182;
  wire [(1 - 1):0] slice_5_200;
  wire [(1 - 1):0] slice_5_218;
  wire [(1 - 1):0] slice_5_236;
  wire [(1 - 1):0] slice_5_254;
  wire [(1 - 1):0] slice_5_272;
  wire [(1 - 1):0] slice_5_290;
  wire [(1 - 1):0] slice_5_308;
  wire [(1 - 1):0] slice_5_326;
  wire [(1 - 1):0] slice_5_344;
  wire [(1 - 1):0] slice_5_362;
  wire [(1 - 1):0] slice_5_380;
  wire [(1 - 1):0] slice_5_398;
  wire [(1 - 1):0] slice_5_416;
  wire [(1 - 1):0] slice_5_434;
  wire [(1 - 1):0] slice_5_452;
  wire [(1 - 1):0] slice_5_470;
  wire [(1 - 1):0] slice_5_488;
  wire [(1 - 1):0] slice_5_506;
  wire [(1 - 1):0] slice_5_524;
  wire [(1 - 1):0] slice_5_542;
  wire [(1 - 1):0] slice_5_560;
  wire [(1 - 1):0] slice_5_578;
  wire [(1 - 1):0] slice_5_596;
  wire [(1 - 1):0] slice_5_614;
  wire [(1 - 1):0] slice_5_632;
  wire [(1 - 1):0] slice_5_650;
  wire [(1 - 1):0] slice_5_668;
  wire [(1 - 1):0] slice_5_686;
  wire [(1 - 1):0] slice_5_706;
  wire [(1 - 1):0] slice_5_726;
  wire [(1 - 1):0] slice_5_746;
  wire [(1 - 1):0] slice_5_766;
  wire [(1 - 1):0] slice_5_786;
  wire [(1 - 1):0] slice_5_806;
  wire [(1 - 1):0] slice_5_826;
  wire [(1 - 1):0] slice_5_846;
  wire [(1 - 1):0] slice_5_866;
  wire [(1 - 1):0] slice_5_886;
  wire [(1 - 1):0] slice_5_906;
  wire [(1 - 1):0] slice_5_926;
  wire [(1 - 1):0] slice_5_946;
  wire [(1 - 1):0] slice_5_966;
  wire [(1 - 1):0] slice_5_986;
  wire [(1 - 1):0] slice_5_1006;
  wire [(1 - 1):0] slice_5_1026;
  wire [(1 - 1):0] slice_5_1046;
  wire [(1 - 1):0] slice_5_1066;
  wire [(1 - 1):0] slice_5_1086;
  wire [(1 - 1):0] slice_5_1106;
  wire [(1 - 1):0] slice_5_1126;
  wire [(1 - 1):0] slice_5_1146;
  wire [(1 - 1):0] slice_5_1166;
  wire [(1 - 1):0] slice_5_1186;
  wire [(1 - 1):0] slice_5_1206;
  wire [(1 - 1):0] slice_5_1226;
  wire [(64 - 1):0] concat_5_29;
  wire [(64 - 1):0] fullb_5_1_concat;
  assign a_1_26 = a;
  assign slice_5_38 = a_1_26[64:64];
  assign slice_5_56 = a_1_26[65:65];
  assign slice_5_74 = a_1_26[66:66];
  assign slice_5_92 = a_1_26[67:67];
  assign slice_5_110 = a_1_26[68:68];
  assign slice_5_128 = a_1_26[69:69];
  assign slice_5_146 = a_1_26[70:70];
  assign slice_5_164 = a_1_26[71:71];
  assign slice_5_182 = a_1_26[72:72];
  assign slice_5_200 = a_1_26[73:73];
  assign slice_5_218 = a_1_26[74:74];
  assign slice_5_236 = a_1_26[75:75];
  assign slice_5_254 = a_1_26[76:76];
  assign slice_5_272 = a_1_26[77:77];
  assign slice_5_290 = a_1_26[78:78];
  assign slice_5_308 = a_1_26[79:79];
  assign slice_5_326 = a_1_26[80:80];
  assign slice_5_344 = a_1_26[81:81];
  assign slice_5_362 = a_1_26[82:82];
  assign slice_5_380 = a_1_26[83:83];
  assign slice_5_398 = a_1_26[84:84];
  assign slice_5_416 = a_1_26[85:85];
  assign slice_5_434 = a_1_26[86:86];
  assign slice_5_452 = a_1_26[87:87];
  assign slice_5_470 = a_1_26[88:88];
  assign slice_5_488 = a_1_26[89:89];
  assign slice_5_506 = a_1_26[90:90];
  assign slice_5_524 = a_1_26[91:91];
  assign slice_5_542 = a_1_26[92:92];
  assign slice_5_560 = a_1_26[93:93];
  assign slice_5_578 = a_1_26[94:94];
  assign slice_5_596 = a_1_26[95:95];
  assign slice_5_614 = a_1_26[96:96];
  assign slice_5_632 = a_1_26[97:97];
  assign slice_5_650 = a_1_26[98:98];
  assign slice_5_668 = a_1_26[99:99];
  assign slice_5_686 = a_1_26[100:100];
  assign slice_5_706 = a_1_26[101:101];
  assign slice_5_726 = a_1_26[102:102];
  assign slice_5_746 = a_1_26[103:103];
  assign slice_5_766 = a_1_26[104:104];
  assign slice_5_786 = a_1_26[105:105];
  assign slice_5_806 = a_1_26[106:106];
  assign slice_5_826 = a_1_26[107:107];
  assign slice_5_846 = a_1_26[108:108];
  assign slice_5_866 = a_1_26[109:109];
  assign slice_5_886 = a_1_26[110:110];
  assign slice_5_906 = a_1_26[111:111];
  assign slice_5_926 = a_1_26[112:112];
  assign slice_5_946 = a_1_26[113:113];
  assign slice_5_966 = a_1_26[114:114];
  assign slice_5_986 = a_1_26[115:115];
  assign slice_5_1006 = a_1_26[116:116];
  assign slice_5_1026 = a_1_26[117:117];
  assign slice_5_1046 = a_1_26[118:118];
  assign slice_5_1066 = a_1_26[119:119];
  assign slice_5_1086 = a_1_26[120:120];
  assign slice_5_1106 = a_1_26[121:121];
  assign slice_5_1126 = a_1_26[122:122];
  assign slice_5_1146 = a_1_26[123:123];
  assign slice_5_1166 = a_1_26[124:124];
  assign slice_5_1186 = a_1_26[125:125];
  assign slice_5_1206 = a_1_26[126:126];
  assign slice_5_1226 = a_1_26[127:127];
  assign concat_5_29 = {slice_5_38, slice_5_56, slice_5_74, slice_5_92, slice_5_110, slice_5_128, slice_5_146, slice_5_164, slice_5_182, slice_5_200, slice_5_218, slice_5_236, slice_5_254, slice_5_272, slice_5_290, slice_5_308, slice_5_326, slice_5_344, slice_5_362, slice_5_380, slice_5_398, slice_5_416, slice_5_434, slice_5_452, slice_5_470, slice_5_488, slice_5_506, slice_5_524, slice_5_542, slice_5_560, slice_5_578, slice_5_596, slice_5_614, slice_5_632, slice_5_650, slice_5_668, slice_5_686, slice_5_706, slice_5_726, slice_5_746, slice_5_766, slice_5_786, slice_5_806, slice_5_826, slice_5_846, slice_5_866, slice_5_886, slice_5_906, slice_5_926, slice_5_946, slice_5_966, slice_5_986, slice_5_1006, slice_5_1026, slice_5_1046, slice_5_1066, slice_5_1086, slice_5_1106, slice_5_1126, slice_5_1146, slice_5_1166, slice_5_1186, slice_5_1206, slice_5_1226};
  assign fullb_5_1_concat = {concat_5_29};
  assign b = fullb_5_1_concat;
endmodule
`timescale 1 ns / 10 ps
module sysgen_negate_2c7d84783d (
  input [(18 - 1):0] ip,
  output [(19 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire signed [(18 - 1):0] ip_18_25;
  localparam signed [(19 - 1):0] const_value = 19'sb0000000000000000000;
  reg signed [(19 - 1):0] op_mem_48_20[0:(1 - 1)];
  initial
    begin
      op_mem_48_20[0] = 19'b0000000000000000000;
    end
  wire signed [(19 - 1):0] op_mem_48_20_front_din;
  wire signed [(19 - 1):0] op_mem_48_20_back;
  wire op_mem_48_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000001 = 1'b0;
  wire signed [(19 - 1):0] cast_35_24;
  wire signed [(19 - 1):0] internal_ip_35_9_neg;
  reg signed [(19 - 1):0] internal_ip_join_30_1;
  localparam signed [(19 - 1):0] const_value_x_000002 = 19'sb0000000000000000000;
  assign ip_18_25 = ip;
  assign op_mem_48_20_back = op_mem_48_20[0];
  always @(posedge clk)
    begin:proc_op_mem_48_20
      integer i;
      if (((ce == 1'b1) && (op_mem_48_20_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_48_20[0] <= op_mem_48_20_front_din;
        end
    end
  assign cast_35_24 = {{1{ip_18_25[17]}}, ip_18_25[17:0]};
  assign internal_ip_35_9_neg = -cast_35_24;
  always @(internal_ip_35_9_neg)
    begin:proc_if_30_1
      if (1'b0)
        begin
          internal_ip_join_30_1 = const_value_x_000002;
        end
      else 
        begin
          internal_ip_join_30_1 = internal_ip_35_9_neg;
        end
    end
  assign op_mem_48_20_front_din = internal_ip_join_30_1;
  assign op_mem_48_20_push_front_pop_back_en = 1'b1;
  assign op = op_mem_48_20_back;
endmodule
`timescale 1 ns / 10 ps
module sysgen_bitbasher_cde18db8fe (
  input [(32 - 1):0] b,
  output [(18 - 1):0] a,
  output [(18 - 1):0] c,
  input clk,
  input ce,
  input clr);
  wire [(32 - 1):0] b_1_28;
  wire [(16 - 1):0] slice_5_28;
  localparam [(2 - 1):0] const_value = 2'b00;
  wire [(18 - 1):0] fulla_5_1_concat;
  wire [(16 - 1):0] slice_6_28;
  localparam [(2 - 1):0] const_value_x_000000 = 2'b00;
  wire [(18 - 1):0] fullc_6_1_concat;
  wire signed [(18 - 1):0] a_8_1_force;
  wire signed [(18 - 1):0] c_13_1_force;
  assign b_1_28 = b;
  assign slice_5_28 = b_1_28[31:16];
  assign fulla_5_1_concat = {slice_5_28, const_value};
  assign slice_6_28 = b_1_28[15:0];
  assign fullc_6_1_concat = {slice_6_28, const_value_x_000000};
  assign a_8_1_force = fulla_5_1_concat;
  assign c_13_1_force = fullc_6_1_concat;
  assign a = a_8_1_force;
  assign c = c_13_1_force;
endmodule
`timescale 1 ns / 10 ps
module analysis_xlsprom
  #(parameter c_width = 0,
   parameter c_address_width = 0,
   parameter mem_size = 0,
   parameter mem_init_file ="none",
   parameter read_reset_val ="0",
   parameter mem_type ="auto",
   parameter latency = 0)
  (input  ce, clk, en, rst,
   input [c_address_width-1:0] addr,
   output [c_width-1:0] data);

   wire [c_width-1:0] core_data_out,dly_data_out;    
   assign data = dly_data_out;

generate
  xpm_memory_sprom # (
  // Common module parameters
  .MEMORY_SIZE        (mem_size),
  .MEMORY_PRIMITIVE   (mem_type),                        //string; auto, distributed, block or ultra;
  .MEMORY_INIT_FILE   (mem_init_file), 
  .MEMORY_INIT_PARAM  (""),
  .USE_MEM_INIT       (0),
  .WAKEUP_TIME        ("disable_sleep"),
  .MESSAGE_CONTROL    (0),

  // Port A module parameters
  .READ_DATA_WIDTH_A  (c_width),
  .ADDR_WIDTH_A       (c_address_width),
  .READ_RESET_VALUE_A (read_reset_val),
  .READ_LATENCY_A     (latency)

) xpm_memory_sprom_inst (
 // Common module ports
  .sleep          (1'b0),
  // Port A module ports
  .clka           (clk),
  .rsta           (rst & ce),
  .ena            (en & ce),
  .regcea         (1'b1),
  .addra          (addr),
  .injectsbiterra (1'b0),  //do not change
  .injectdbiterra (1'b0),  //do not change
  .douta          (core_data_out),
  .sbiterra       (),      //do not change
  .dbiterra       ()       //do not change
);
         assign dly_data_out = core_data_out;
endgenerate
endmodule
`timescale 1 ns / 10 ps
module sysgen_bitbasher_5c8ffa343c (
  input [(2 - 1):0] in_x0,
  output [(1 - 1):0] sel0,
  output [(1 - 1):0] sel1,
  input clk,
  input ce,
  input clr);
  wire [(2 - 1):0] in_x0_1_34;
  wire [(1 - 1):0] slice_5_41;
  wire [(1 - 1):0] concat_5_32;
  wire [(1 - 1):0] fullsel0_5_1_concat;
  wire [(1 - 1):0] slice_6_41;
  wire [(1 - 1):0] concat_6_32;
  wire [(1 - 1):0] fullsel1_6_1_concat;
  assign in_x0_1_34 = in_x0;
  assign slice_5_41 = in_x0_1_34[0:0];
  assign concat_5_32 = {slice_5_41};
  assign fullsel0_5_1_concat = {concat_5_32};
  assign slice_6_41 = in_x0_1_34[1:1];
  assign concat_6_32 = {slice_6_41};
  assign fullsel1_6_1_concat = {concat_6_32};
  assign sel0 = fullsel0_5_1_concat;
  assign sel1 = fullsel1_6_1_concat;
endmodule
`timescale 1 ns / 10 ps
module sysgen_bitbasher_a51195a8c0 (
  input [(16 - 1):0] in0,
  input [(16 - 1):0] in1,
  output [(32 - 1):0] out_x0,
  input clk,
  input ce,
  input clr);
  wire signed [(16 - 1):0] in0_1_31;
  wire signed [(16 - 1):0] in1_1_36;
  wire [(32 - 1):0] fullout_x0_5_1_concat;
  assign in0_1_31 = in0;
  assign in1_1_36 = in1;
  assign fullout_x0_5_1_concat = {in1_1_36, in0_1_31};
  assign out_x0 = fullout_x0_5_1_concat;
endmodule
`timescale 1 ns / 10 ps
module sysgen_bitbasher_05df764796 (
  input [(32 - 1):0] in_x0,
  output [(16 - 1):0] out1,
  input clk,
  input ce,
  input clr);
  wire [(32 - 1):0] in_x0_1_29;
  wire [(16 - 1):0] slice_5_31;
  wire [(16 - 1):0] fullout1_5_1_concat;
  wire signed [(16 - 1):0] out1_7_1_force;
  assign in_x0_1_29 = in_x0;
  assign slice_5_31 = in_x0_1_29[31:16];
  assign fullout1_5_1_concat = {slice_5_31};
  assign out1_7_1_force = fullout1_5_1_concat;
  assign out1 = out1_7_1_force;
endmodule
`timescale 1 ns / 10 ps
module sysgen_bitbasher_7955dabb2d (
  input [(32 - 1):0] in_x0,
  output [(16 - 1):0] out0,
  input clk,
  input ce,
  input clr);
  wire [(32 - 1):0] in_x0_1_29;
  wire [(16 - 1):0] slice_5_31;
  wire [(16 - 1):0] fullout0_5_1_concat;
  wire signed [(16 - 1):0] out0_7_1_force;
  assign in_x0_1_29 = in_x0;
  assign slice_5_31 = in_x0_1_29[15:0];
  assign fullout0_5_1_concat = {slice_5_31};
  assign out0_7_1_force = fullout0_5_1_concat;
  assign out0 = out0_7_1_force;
endmodule
`timescale 1 ns / 10 ps
module sysgen_mux_3d7b4ce626 (
  input [(1 - 1):0] sel,
  input [(48 - 1):0] d0,
  input [(48 - 1):0] d1,
  output [(48 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire [(1 - 1):0] sel_1_20;
  wire [(48 - 1):0] d0_1_24;
  wire [(48 - 1):0] d1_1_27;
  localparam [(48 - 1):0] const_value = 48'b000000000000000000000000000000000000000000000000;
  reg [(48 - 1):0] pipe_16_22[0:(1 - 1)];
  initial
    begin
      pipe_16_22[0] = 48'b000000000000000000000000000000000000000000000000;
    end
  wire [(48 - 1):0] pipe_16_22_front_din;
  wire [(48 - 1):0] pipe_16_22_back;
  wire pipe_16_22_push_front_pop_back_en;
  reg [(48 - 1):0] unregy_join_6_1;
  assign sel_1_20 = sel;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign pipe_16_22_back = pipe_16_22[0];
  always @(posedge clk)
    begin:proc_pipe_16_22
      integer i;
      if (((ce == 1'b1) && (pipe_16_22_push_front_pop_back_en == 1'b1)))
        begin
          pipe_16_22[0] <= pipe_16_22_front_din;
        end
    end
  always @(d0_1_24 or d1_1_27 or sel_1_20)
    begin:proc_switch_6_1
      case (sel_1_20)
        1'b0 :
          begin
            unregy_join_6_1 = d0_1_24;
          end
        default:
          begin
            unregy_join_6_1 = d1_1_27;
          end
      endcase
    end
  assign pipe_16_22_front_din = unregy_join_6_1;
  assign pipe_16_22_push_front_pop_back_en = 1'b1;
  assign y = pipe_16_22_back;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_c5a65bbcae (
  output [(48 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 48'b000000000000000000000000000000000100000000000000;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_445ec93f93 (
  output [(48 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 48'b000000000000000000000000000000000010000000000000;
endmodule
`timescale 1 ns / 10 ps
module sysgen_logical_81ec873bbe (
  input [(1 - 1):0] d0,
  input [(1 - 1):0] d1,
  input [(1 - 1):0] d2,
  input [(1 - 1):0] d3,
  output [(1 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire [(1 - 1):0] d0_1_24;
  wire [(1 - 1):0] d1_1_27;
  wire [(1 - 1):0] d2_1_30;
  wire [(1 - 1):0] d3_1_33;
  localparam [(1 - 1):0] const_value = 1'b0;
  reg [(1 - 1):0] latency_pipe_5_26[0:(1 - 1)];
  initial
    begin
      latency_pipe_5_26[0] = 1'b0;
    end
  wire [(1 - 1):0] latency_pipe_5_26_front_din;
  wire [(1 - 1):0] latency_pipe_5_26_back;
  wire latency_pipe_5_26_push_front_pop_back_en;
  wire [(1 - 1):0] fully_2_1_bit;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign d2_1_30 = d2;
  assign d3_1_33 = d3;
  assign latency_pipe_5_26_back = latency_pipe_5_26[0];
  always @(posedge clk)
    begin:proc_latency_pipe_5_26
      integer i;
      if (((ce == 1'b1) && (latency_pipe_5_26_push_front_pop_back_en == 1'b1)))
        begin
          latency_pipe_5_26[0] <= latency_pipe_5_26_front_din;
        end
    end
  assign fully_2_1_bit = d0_1_24 | d1_1_27 | d2_1_30 | d3_1_33;
  assign latency_pipe_5_26_front_din = fully_2_1_bit;
  assign latency_pipe_5_26_push_front_pop_back_en = 1'b1;
  assign y = latency_pipe_5_26_back;
endmodule
`timescale 1 ns / 10 ps
module sysgen_mux_4f7dbdce74 (
  input [(1 - 1):0] sel,
  input [(48 - 1):0] d0,
  input [(48 - 1):0] d1,
  output [(22 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire [(1 - 1):0] sel_1_20;
  wire [(48 - 1):0] d0_1_24;
  wire [(48 - 1):0] d1_1_27;
  localparam [(22 - 1):0] const_value = 22'b0000000000000000000000;
  reg [(22 - 1):0] pipe_16_22[0:(1 - 1)];
  initial
    begin
      pipe_16_22[0] = 22'b0000000000000000000000;
    end
  wire [(22 - 1):0] pipe_16_22_front_din;
  wire [(22 - 1):0] pipe_16_22_back;
  wire pipe_16_22_push_front_pop_back_en;
  reg [(49 - 1):0] unregy_join_6_1;
  wire [(22 - 1):0] cast_unregy_13_5_convert;
  assign sel_1_20 = sel;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign pipe_16_22_back = pipe_16_22[0];
  always @(posedge clk)
    begin:proc_pipe_16_22
      integer i;
      if (((ce == 1'b1) && (pipe_16_22_push_front_pop_back_en == 1'b1)))
        begin
          pipe_16_22[0] <= pipe_16_22_front_din;
        end
    end
  always @(d0_1_24 or d1_1_27 or sel_1_20)
    begin:proc_switch_6_1
      case (sel_1_20)
        1'b0 :
          begin
            unregy_join_6_1 = {{1{d0_1_24[47]}}, d0_1_24[47:0]};
          end
        default:
          begin
            unregy_join_6_1 = {d1_1_27[47:0], 1'b0};
          end
      endcase
    end
  assign cast_unregy_13_5_convert = {unregy_join_6_1[31:10]};
  assign pipe_16_22_front_din = cast_unregy_13_5_convert;
  assign pipe_16_22_push_front_pop_back_en = 1'b1;
  assign y = pipe_16_22_back;
endmodule
`timescale 1 ns / 10 ps
module sysgen_scale_9eb3a7514b (
  input [(48 - 1):0] ip,
  output [(48 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire signed [(48 - 1):0] ip_17_23;
  localparam [(5 - 1):0] const_value = 5'b11110;
  assign ip_17_23 = ip;
  assign op = ip_17_23;
endmodule
`timescale 1 ns / 10 ps
module sysgen_scale_a4f4a5788f (
  input [(48 - 1):0] ip,
  output [(48 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire signed [(48 - 1):0] ip_17_23;
  localparam signed [(7 - 1):0] const_value = 7'sb0011101;
  assign ip_17_23 = ip;
  assign op = ip_17_23;
endmodule
`timescale 1 ns / 10 ps
module sysgen_logical_7c904d4b46 (
  input [(1 - 1):0] d0,
  input [(1 - 1):0] d1,
  output [(1 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire [(1 - 1):0] d0_1_24;
  wire [(1 - 1):0] d1_1_27;
  localparam [(1 - 1):0] const_value = 1'b0;
  reg [(1 - 1):0] latency_pipe_5_26[0:(1 - 1)];
  initial
    begin
      latency_pipe_5_26[0] = 1'b0;
    end
  wire [(1 - 1):0] latency_pipe_5_26_front_din;
  wire [(1 - 1):0] latency_pipe_5_26_back;
  wire latency_pipe_5_26_push_front_pop_back_en;
  wire [(1 - 1):0] fully_2_1_bit;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign latency_pipe_5_26_back = latency_pipe_5_26[0];
  always @(posedge clk)
    begin:proc_latency_pipe_5_26
      integer i;
      if (((ce == 1'b1) && (latency_pipe_5_26_push_front_pop_back_en == 1'b1)))
        begin
          latency_pipe_5_26[0] <= latency_pipe_5_26_front_din;
        end
    end
  assign fully_2_1_bit = d0_1_24 ^ d1_1_27;
  assign latency_pipe_5_26_front_din = fully_2_1_bit;
  assign latency_pipe_5_26_push_front_pop_back_en = 1'b1;
  assign y = latency_pipe_5_26_back;
endmodule
`timescale 1 ns / 10 ps
module sysgen_addsub_5068536bec (
  input [(32 - 1):0] a,
  input [(48 - 1):0] b,
  output [(48 - 1):0] s,
  input clk,
  input ce,
  input clr);
  wire signed [(32 - 1):0] a_17_32;
  wire signed [(48 - 1):0] b_17_35;
  localparam signed [(48 - 1):0] const_value = 48'sb000000000000000000000000000000000000000000000000;
  reg signed [(48 - 1):0] op_mem_91_20[0:(1 - 1)];
  initial
    begin
      op_mem_91_20[0] = 48'b000000000000000000000000000000000000000000000000;
    end
  wire signed [(48 - 1):0] op_mem_91_20_front_din;
  wire signed [(48 - 1):0] op_mem_91_20_back;
  wire op_mem_91_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1'b0;
  reg [(1 - 1):0] cout_mem_92_22[0:(1 - 1)];
  initial
    begin
      cout_mem_92_22[0] = 1'b0;
    end
  wire [(1 - 1):0] cout_mem_92_22_front_din;
  wire [(1 - 1):0] cout_mem_92_22_back;
  wire cout_mem_92_22_push_front_pop_back_en;
  wire [(3 - 1):0] prev_mode_93_22_next;
  wire [(3 - 1):0] prev_mode_93_22;
  wire [(3 - 1):0] prev_mode_93_22_reg_i;
  wire [(3 - 1):0] prev_mode_93_22_reg_o;
  localparam [(1 - 1):0] const_value_x_000001 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000002 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000003 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000004 = 1'b0;
  wire signed [(49 - 1):0] cast_69_18;
  wire signed [(49 - 1):0] cast_69_22;
  wire signed [(49 - 1):0] internal_s_69_5_addsub;
  localparam [(1 - 1):0] const_value_x_000005 = 1'b0;
  wire signed [(48 - 1):0] cast_internal_s_83_3_convert;
  localparam [(1 - 1):0] const_value_x_000006 = 1'b0;
  localparam [(3 - 1):0] const_value_x_000007 = 3'b000;
  assign a_17_32 = a;
  assign b_17_35 = b;
  assign op_mem_91_20_back = op_mem_91_20[0];
  always @(posedge clk)
    begin:proc_op_mem_91_20
      integer i;
      if (((ce == 1'b1) && (op_mem_91_20_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_91_20[0] <= op_mem_91_20_front_din;
        end
    end
  assign cout_mem_92_22_back = cout_mem_92_22[0];
  always @(posedge clk)
    begin:proc_cout_mem_92_22
      integer i_x_000000;
      if (((ce == 1'b1) && (cout_mem_92_22_push_front_pop_back_en == 1'b1)))
        begin
          cout_mem_92_22[0] <= cout_mem_92_22_front_din;
        end
    end
  assign prev_mode_93_22_reg_i = prev_mode_93_22_next;
  assign prev_mode_93_22 = prev_mode_93_22_reg_o;
  defparam prev_mode_93_22_reg_inst.init_index = 2;
  defparam prev_mode_93_22_reg_inst.init_value = 3'b010;
  defparam prev_mode_93_22_reg_inst.latency = 1;
  defparam prev_mode_93_22_reg_inst.width = 3;
  synth_reg_w_init prev_mode_93_22_reg_inst(.ce(ce), .clk(clk), .clr(clr), .i(prev_mode_93_22_reg_i), .o(prev_mode_93_22_reg_o));
  assign cast_69_18 = {{17{a_17_32[31]}}, a_17_32[31:0]};
  assign cast_69_22 = {{1{b_17_35[47]}}, b_17_35[47:0]};
  assign internal_s_69_5_addsub = cast_69_18 + cast_69_22;
  assign cast_internal_s_83_3_convert = {internal_s_69_5_addsub[47:0]};
  assign op_mem_91_20_front_din = cast_internal_s_83_3_convert;
  assign op_mem_91_20_push_front_pop_back_en = 1'b1;
  assign cout_mem_92_22_front_din = const_value_x_000006;
  assign cout_mem_92_22_push_front_pop_back_en = 1'b1;
  assign prev_mode_93_22_next = const_value_x_000007;
  assign s = op_mem_91_20_back;
endmodule
`timescale 1 ns / 10 ps
module sysgen_mult_d25cb2fc71 (
  input [(16 - 1):0] a,
  input [(16 - 1):0] b,
  output [(32 - 1):0] p,
  input clk,
  input ce,
  input clr);
  wire signed [(16 - 1):0] a_1_22;
  wire signed [(16 - 1):0] b_1_25;
  localparam signed [(32 - 1):0] const_value = 32'sb00000000000000000000000000000000;
  reg signed [(32 - 1):0] op_mem_65_20[0:(1 - 1)];
  initial
    begin
      op_mem_65_20[0] = 32'b00000000000000000000000000000000;
    end
  wire signed [(32 - 1):0] op_mem_65_20_front_din;
  wire signed [(32 - 1):0] op_mem_65_20_back;
  wire op_mem_65_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1'b1;
  localparam [(6 - 1):0] const_value_x_000001 = 6'b100000;
  localparam [(5 - 1):0] const_value_x_000002 = 5'b11110;
  wire signed [(32 - 1):0] mult_46_56;
  assign a_1_22 = a;
  assign b_1_25 = b;
  assign op_mem_65_20_back = op_mem_65_20[0];
  always @(posedge clk)
    begin:proc_op_mem_65_20
      integer i;
      if (((ce == 1'b1) && (op_mem_65_20_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_65_20[0] <= op_mem_65_20_front_din;
        end
    end
  assign mult_46_56 = (a_1_22 * b_1_25);
  assign op_mem_65_20_front_din = mult_46_56;
  assign op_mem_65_20_push_front_pop_back_en = 1'b1;
  assign p = op_mem_65_20_back;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_9d38615888 (
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 1'b1;
endmodule
`timescale 1 ns / 10 ps
module analysis_xlspram
  #(parameter width = 0,
   parameter width_addr = 0,
   parameter mem_size = 0,
   parameter write_mode_a = "no_change",
   parameter mem_init_file ="none",
   parameter read_reset_val ="0",
   parameter init_value = 'b0,
   parameter mem_type ="auto",
   parameter xpm_lat = 1,
   parameter latency = 0)
  (input [width-1:0] data_in,
   input we, ce, clk, en, rst,
   input [width_addr-1:0] addr,
   output [width-1:0] data_out);

wire [width-1:0] core_data_out,dly_data_out, lat_data_out;
wire core_we, core_rst, core_en,xpm_rst;
assign data_out = dly_data_out;
assign core_en = ce;
assign core_we = we;
assign core_rst = rst & ce;

generate
 if (latency > 1)
    assign xpm_rst = 1'b0;
 else
    assign xpm_rst = rst & ce ;
  xpm_memory_spram # (
  // Common module parameters
  .MEMORY_SIZE        (mem_size),
  .MEMORY_PRIMITIVE   (mem_type),                        //string; auto, distributed, block or ultra;
  .MEMORY_INIT_FILE   (mem_init_file), 
  .MEMORY_INIT_PARAM  (""),
  .USE_MEM_INIT       (0),
  .WAKEUP_TIME        ("disable_sleep"),
  .MESSAGE_CONTROL    (0),

  // Port A module parameters
  .WRITE_DATA_WIDTH_A (width),
  .READ_DATA_WIDTH_A  (width),
  .BYTE_WRITE_WIDTH_A (width),
  .ADDR_WIDTH_A       (width_addr),
  .READ_RESET_VALUE_A (read_reset_val),
  .READ_LATENCY_A     (xpm_lat),
  .WRITE_MODE_A       (write_mode_a)

) xpm_memory_spram_inst (
 // Common module ports
  .sleep          (1'b0),
  // Port A module ports
  .clka           (clk),
  .rsta           (rst & ce),
  .ena            (en & ce),
  .regcea         (ce),
  .wea            (we & ce),
  .addra          (addr),
  .dina           (data_in),
  .injectsbiterra (1'b0),  //do not change
  .injectdbiterra (1'b0),  //do not change
  .douta          (core_data_out),
  .sbiterra       (),      //do not change
  .dbiterra       ()       //do not change
);
    assign dly_data_out = core_data_out;
endgenerate
endmodule
`timescale 1 ns / 10 ps
module sysgen_mux_9bdc0b34d7 (
  input [(1 - 1):0] sel,
  input [(22 - 1):0] d0,
  input [(22 - 1):0] d1,
  output [(22 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire [(1 - 1):0] sel_1_20;
  wire [(22 - 1):0] d0_1_24;
  wire [(22 - 1):0] d1_1_27;
  localparam [(22 - 1):0] const_value = 22'b0000000000000000000000;
  reg [(22 - 1):0] pipe_16_22[0:(1 - 1)];
  initial
    begin
      pipe_16_22[0] = 22'b0000000000000000000000;
    end
  wire [(22 - 1):0] pipe_16_22_front_din;
  wire [(22 - 1):0] pipe_16_22_back;
  wire pipe_16_22_push_front_pop_back_en;
  reg [(22 - 1):0] unregy_join_6_1;
  assign sel_1_20 = sel;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign pipe_16_22_back = pipe_16_22[0];
  always @(posedge clk)
    begin:proc_pipe_16_22
      integer i;
      if (((ce == 1'b1) && (pipe_16_22_push_front_pop_back_en == 1'b1)))
        begin
          pipe_16_22[0] <= pipe_16_22_front_din;
        end
    end
  always @(d0_1_24 or d1_1_27 or sel_1_20)
    begin:proc_switch_6_1
      case (sel_1_20)
        1'b0 :
          begin
            unregy_join_6_1 = d0_1_24;
          end
        default:
          begin
            unregy_join_6_1 = d1_1_27;
          end
      endcase
    end
  assign pipe_16_22_front_din = unregy_join_6_1;
  assign pipe_16_22_push_front_pop_back_en = 1'b1;
  assign y = pipe_16_22_back;
endmodule
`timescale 1 ns / 10 ps
module sysgen_mux_1ed312250f (
  input [(2 - 1):0] sel,
  input [(48 - 1):0] d0,
  input [(48 - 1):0] d1,
  input [(48 - 1):0] d2,
  input [(48 - 1):0] d3,
  output [(48 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire [(2 - 1):0] sel_1_20;
  wire [(48 - 1):0] d0_1_24;
  wire [(48 - 1):0] d1_1_27;
  wire [(48 - 1):0] d2_1_30;
  wire [(48 - 1):0] d3_1_33;
  localparam [(48 - 1):0] const_value = 48'b000000000000000000000000000000000000000000000000;
  reg [(48 - 1):0] pipe_20_22[0:(1 - 1)];
  initial
    begin
      pipe_20_22[0] = 48'b000000000000000000000000000000000000000000000000;
    end
  wire [(48 - 1):0] pipe_20_22_front_din;
  wire [(48 - 1):0] pipe_20_22_back;
  wire pipe_20_22_push_front_pop_back_en;
  reg [(48 - 1):0] unregy_join_6_1;
  assign sel_1_20 = sel;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign d2_1_30 = d2;
  assign d3_1_33 = d3;
  assign pipe_20_22_back = pipe_20_22[0];
  always @(posedge clk)
    begin:proc_pipe_20_22
      integer i;
      if (((ce == 1'b1) && (pipe_20_22_push_front_pop_back_en == 1'b1)))
        begin
          pipe_20_22[0] <= pipe_20_22_front_din;
        end
    end
  always @(d0_1_24 or d1_1_27 or d2_1_30 or d3_1_33 or sel_1_20)
    begin:proc_switch_6_1
      case (sel_1_20)
        2'b00 :
          begin
            unregy_join_6_1 = d0_1_24;
          end
        2'b01 :
          begin
            unregy_join_6_1 = d1_1_27;
          end
        2'b10 :
          begin
            unregy_join_6_1 = d2_1_30;
          end
        default:
          begin
            unregy_join_6_1 = d3_1_33;
          end
      endcase
    end
  assign pipe_20_22_front_din = unregy_join_6_1;
  assign pipe_20_22_push_front_pop_back_en = 1'b1;
  assign y = pipe_20_22_back;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_d7f5726060 (
  output [(48 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 48'b000000000000000000000000000010000000000000000000;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_77842f3ed1 (
  output [(48 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 48'b000000000000000000000000000001000000000000000000;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_9c42249471 (
  output [(48 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 48'b000000000000000000000000000000100000000000000000;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_8ec4cf8c8f (
  output [(48 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 48'b000000000000000000000000000000000000000000000001;
endmodule
`timescale 1 ns / 10 ps
module sysgen_addsub_66a57ab306 (
  input [(43 - 1):0] a,
  input [(48 - 1):0] b,
  output [(48 - 1):0] s,
  input clk,
  input ce,
  input clr);
  wire signed [(43 - 1):0] a_17_32;
  wire signed [(48 - 1):0] b_17_35;
  localparam signed [(48 - 1):0] const_value = 48'sb000000000000000000000000000000000000000000000000;
  reg signed [(48 - 1):0] op_mem_91_20[0:(1 - 1)];
  initial
    begin
      op_mem_91_20[0] = 48'b000000000000000000000000000000000000000000000000;
    end
  wire signed [(48 - 1):0] op_mem_91_20_front_din;
  wire signed [(48 - 1):0] op_mem_91_20_back;
  wire op_mem_91_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1'b0;
  reg [(1 - 1):0] cout_mem_92_22[0:(1 - 1)];
  initial
    begin
      cout_mem_92_22[0] = 1'b0;
    end
  wire [(1 - 1):0] cout_mem_92_22_front_din;
  wire [(1 - 1):0] cout_mem_92_22_back;
  wire cout_mem_92_22_push_front_pop_back_en;
  wire [(3 - 1):0] prev_mode_93_22_next;
  wire [(3 - 1):0] prev_mode_93_22;
  wire [(3 - 1):0] prev_mode_93_22_reg_i;
  wire [(3 - 1):0] prev_mode_93_22_reg_o;
  localparam [(1 - 1):0] const_value_x_000001 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000002 = 1'b1;
  localparam [(1 - 1):0] const_value_x_000003 = 1'b0;
  localparam [(1 - 1):0] const_value_x_000004 = 1'b0;
  wire signed [(58 - 1):0] cast_69_18;
  wire signed [(58 - 1):0] cast_69_22;
  wire signed [(58 - 1):0] internal_s_69_5_addsub;
  localparam [(1 - 1):0] const_value_x_000005 = 1'b0;
  wire signed [(48 - 1):0] cast_internal_s_83_3_convert;
  localparam [(1 - 1):0] const_value_x_000006 = 1'b0;
  localparam [(3 - 1):0] const_value_x_000007 = 3'b000;
  assign a_17_32 = a;
  assign b_17_35 = b;
  assign op_mem_91_20_back = op_mem_91_20[0];
  always @(posedge clk)
    begin:proc_op_mem_91_20
      integer i;
      if (((ce == 1'b1) && (op_mem_91_20_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_91_20[0] <= op_mem_91_20_front_din;
        end
    end
  assign cout_mem_92_22_back = cout_mem_92_22[0];
  always @(posedge clk)
    begin:proc_cout_mem_92_22
      integer i_x_000000;
      if (((ce == 1'b1) && (cout_mem_92_22_push_front_pop_back_en == 1'b1)))
        begin
          cout_mem_92_22[0] <= cout_mem_92_22_front_din;
        end
    end
  assign prev_mode_93_22_reg_i = prev_mode_93_22_next;
  assign prev_mode_93_22 = prev_mode_93_22_reg_o;
  defparam prev_mode_93_22_reg_inst.init_index = 2;
  defparam prev_mode_93_22_reg_inst.init_value = 3'b010;
  defparam prev_mode_93_22_reg_inst.latency = 1;
  defparam prev_mode_93_22_reg_inst.width = 3;
  synth_reg_w_init prev_mode_93_22_reg_inst(.ce(ce), .clk(clk), .clr(clr), .i(prev_mode_93_22_reg_i), .o(prev_mode_93_22_reg_o));
  assign cast_69_18 = {{15{a_17_32[42]}}, a_17_32[42:0]};
  assign cast_69_22 = {{1{b_17_35[47]}}, b_17_35[47:0], 9'b000000000};
  assign internal_s_69_5_addsub = cast_69_18 + cast_69_22;
  assign cast_internal_s_83_3_convert = {internal_s_69_5_addsub[56:9]};
  assign op_mem_91_20_front_din = cast_internal_s_83_3_convert;
  assign op_mem_91_20_push_front_pop_back_en = 1'b1;
  assign cout_mem_92_22_front_din = const_value_x_000006;
  assign cout_mem_92_22_push_front_pop_back_en = 1'b1;
  assign prev_mode_93_22_next = const_value_x_000007;
  assign s = op_mem_91_20_back;
endmodule
`timescale 1 ns / 10 ps
module sysgen_mult_b2e50fdb67 (
  input [(27 - 1):0] a,
  input [(16 - 1):0] b,
  output [(43 - 1):0] p,
  input clk,
  input ce,
  input clr);
  wire signed [(27 - 1):0] a_1_22;
  wire signed [(16 - 1):0] b_1_25;
  localparam signed [(43 - 1):0] const_value = 43'sb0000000000000000000000000000000000000000000;
  reg signed [(43 - 1):0] op_mem_65_20[0:(1 - 1)];
  initial
    begin
      op_mem_65_20[0] = 43'b0000000000000000000000000000000000000000000;
    end
  wire signed [(43 - 1):0] op_mem_65_20_front_din;
  wire signed [(43 - 1):0] op_mem_65_20_back;
  wire op_mem_65_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1'b1;
  localparam [(6 - 1):0] const_value_x_000001 = 6'b101011;
  localparam [(6 - 1):0] const_value_x_000002 = 6'b100111;
  wire signed [(43 - 1):0] mult_46_56;
  assign a_1_22 = a;
  assign b_1_25 = b;
  assign op_mem_65_20_back = op_mem_65_20[0];
  always @(posedge clk)
    begin:proc_op_mem_65_20
      integer i;
      if (((ce == 1'b1) && (op_mem_65_20_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_65_20[0] <= op_mem_65_20_front_din;
        end
    end
  assign mult_46_56 = (a_1_22 * b_1_25);
  assign op_mem_65_20_front_din = mult_46_56;
  assign op_mem_65_20_push_front_pop_back_en = 1'b1;
  assign p = op_mem_65_20_back;
endmodule
`timescale 1 ns / 10 ps
module sysgen_mux_7333f59a40 (
  input [(2 - 1):0] sel,
  input [(48 - 1):0] d0,
  input [(48 - 1):0] d1,
  input [(48 - 1):0] d2,
  input [(48 - 1):0] d3,
  output [(16 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire [(2 - 1):0] sel_1_20;
  wire [(48 - 1):0] d0_1_24;
  wire [(48 - 1):0] d1_1_27;
  wire [(48 - 1):0] d2_1_30;
  wire [(48 - 1):0] d3_1_33;
  localparam [(16 - 1):0] const_value = 16'b0000000000000000;
  reg [(16 - 1):0] pipe_20_22[0:(1 - 1)];
  initial
    begin
      pipe_20_22[0] = 16'b0000000000000000;
    end
  wire [(16 - 1):0] pipe_20_22_front_din;
  wire [(16 - 1):0] pipe_20_22_back;
  wire pipe_20_22_push_front_pop_back_en;
  reg [(51 - 1):0] unregy_join_6_1;
  wire [(16 - 1):0] cast_unregy_17_5_convert;
  assign sel_1_20 = sel;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign d2_1_30 = d2;
  assign d3_1_33 = d3;
  assign pipe_20_22_back = pipe_20_22[0];
  always @(posedge clk)
    begin:proc_pipe_20_22
      integer i;
      if (((ce == 1'b1) && (pipe_20_22_push_front_pop_back_en == 1'b1)))
        begin
          pipe_20_22[0] <= pipe_20_22_front_din;
        end
    end
  always @(d0_1_24 or d1_1_27 or d2_1_30 or d3_1_33 or sel_1_20)
    begin:proc_switch_6_1
      case (sel_1_20)
        2'b00 :
          begin
            unregy_join_6_1 = {{3{d0_1_24[47]}}, d0_1_24[47:0]};
          end
        2'b01 :
          begin
            unregy_join_6_1 = {{2{d1_1_27[47]}}, d1_1_27[47:0], 1'b0};
          end
        2'b10 :
          begin
            unregy_join_6_1 = {{1{d2_1_30[47]}}, d2_1_30[47:0], 2'b00};
          end
        default:
          begin
            unregy_join_6_1 = {d3_1_33[47:0], 3'b000};
          end
      endcase
    end
  assign cast_unregy_17_5_convert = {unregy_join_6_1[31:16]};
  assign pipe_20_22_front_din = cast_unregy_17_5_convert;
  assign pipe_20_22_push_front_pop_back_en = 1'b1;
  assign y = pipe_20_22_back;
endmodule
`timescale 1 ns / 10 ps
module sysgen_scale_e241a5f23b (
  input [(48 - 1):0] ip,
  output [(48 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire signed [(48 - 1):0] ip_17_23;
  localparam signed [(7 - 1):0] const_value = 7'sb0011100;
  assign ip_17_23 = ip;
  assign op = ip_17_23;
endmodule
`timescale 1 ns / 10 ps
module sysgen_scale_da6d025e44 (
  input [(48 - 1):0] ip,
  output [(48 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire signed [(48 - 1):0] ip_17_23;
  localparam signed [(7 - 1):0] const_value = 7'sb0011111;
  assign ip_17_23 = ip;
  assign op = ip_17_23;
endmodule
`timescale 1 ns / 10 ps
module sysgen_logical_820e4b469f (
  input [(1 - 1):0] d0,
  input [(1 - 1):0] d1,
  input [(1 - 1):0] d2,
  output [(1 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire [(1 - 1):0] d0_1_24;
  wire [(1 - 1):0] d1_1_27;
  wire [(1 - 1):0] d2_1_30;
  localparam [(1 - 1):0] const_value = 1'b0;
  reg [(1 - 1):0] latency_pipe_5_26[0:(1 - 1)];
  initial
    begin
      latency_pipe_5_26[0] = 1'b0;
    end
  wire [(1 - 1):0] latency_pipe_5_26_front_din;
  wire [(1 - 1):0] latency_pipe_5_26_back;
  wire latency_pipe_5_26_push_front_pop_back_en;
  wire [(1 - 1):0] fully_2_1_bit;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign d2_1_30 = d2;
  assign latency_pipe_5_26_back = latency_pipe_5_26[0];
  always @(posedge clk)
    begin:proc_latency_pipe_5_26
      integer i;
      if (((ce == 1'b1) && (latency_pipe_5_26_push_front_pop_back_en == 1'b1)))
        begin
          latency_pipe_5_26[0] <= latency_pipe_5_26_front_din;
        end
    end
  assign fully_2_1_bit = d0_1_24 | d1_1_27 | d2_1_30;
  assign latency_pipe_5_26_front_din = fully_2_1_bit;
  assign latency_pipe_5_26_push_front_pop_back_en = 1'b1;
  assign y = latency_pipe_5_26_back;
endmodule
`timescale 1 ns / 10 ps
module sysgen_scale_ba897ce46d (
  input [(17 - 1):0] ip,
  output [(17 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire signed [(17 - 1):0] ip_17_23;
  localparam signed [(6 - 1):0] const_value = 6'sb010000;
  assign ip_17_23 = ip;
  assign op = ip_17_23;
endmodule
`timescale 1 ns / 10 ps
module sysgen_bitbasher_a49161927b (
  input [(7 - 1):0] in_x0,
  output [(6 - 1):0] out0,
  output [(1 - 1):0] out1,
  input clk,
  input ce,
  input clr);
  wire [(7 - 1):0] in_x0_1_34;
  wire [(6 - 1):0] slice_5_31;
  wire [(6 - 1):0] fullout0_5_1_concat;
  wire [(1 - 1):0] slice_6_41;
  wire [(1 - 1):0] concat_6_32;
  wire [(1 - 1):0] fullout1_6_1_concat;
  assign in_x0_1_34 = in_x0;
  assign slice_5_31 = in_x0_1_34[5:0];
  assign fullout0_5_1_concat = {slice_5_31};
  assign slice_6_41 = in_x0_1_34[6:6];
  assign concat_6_32 = {slice_6_41};
  assign fullout1_6_1_concat = {concat_6_32};
  assign out0 = fullout0_5_1_concat;
  assign out1 = fullout1_6_1_concat;
endmodule
`timescale 1 ns / 10 ps
module sysgen_counter_125a257573 (
  input [(1 - 1):0] rst,
  output [(7 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire rst_1_40;
  reg [(7 - 1):0] count_reg_20_23 = 7'b0000000;
  wire count_reg_20_23_rst;
  localparam [(1 - 1):0] const_value = 1'b1;
  localparam [(2 - 1):0] const_value_x_000000 = 2'b10;
  localparam [(7 - 1):0] const_value_x_000001 = 7'b0000001;
  localparam [(7 - 1):0] const_value_x_000002 = 7'b0000000;
  localparam [(7 - 1):0] const_value_x_000003 = 7'b0000000;
  localparam [(7 - 1):0] const_value_x_000004 = 7'b0000001;
  wire bool_44_4;
  reg rst_limit_join_44_1;
  reg [(8 - 1):0] count_reg_join_44_1;
  reg count_reg_join_44_1_rst;
  assign rst_1_40 = rst;
  always @(posedge clk)
    begin:proc_count_reg_20_23
      if (((ce == 1'b1) && (count_reg_20_23_rst == 1'b1)))
        begin
          count_reg_20_23 <= 7'b0000000;
        end
      else if ((ce == 1'b1))
        begin
          count_reg_20_23 <= count_reg_20_23 + const_value_x_000004;
        end
    end
  assign bool_44_4 = rst_1_40 || 1'b0;
  always @(bool_44_4 or count_reg_20_23)
    begin:proc_if_44_1
      if (bool_44_4)
        begin
          count_reg_join_44_1_rst = 1'b1;
        end
      else 
        begin
          count_reg_join_44_1_rst = 1'b0;
        end
      if (bool_44_4)
        begin
          rst_limit_join_44_1 = 1'b0;
        end
      else 
        begin
          rst_limit_join_44_1 = 1'b0;
        end
    end
  assign count_reg_20_23_rst = count_reg_join_44_1_rst;
  assign op = count_reg_20_23;
endmodule
`timescale 1 ns / 10 ps
module sysgen_delay_86131232c0 (
  input [(1 - 1):0] d,
  output [(1 - 1):0] q,
  input clk,
  input ce,
  input clr);
  wire [(1 - 1):0] d_1_22;
  localparam [(1 - 1):0] const_value = 1'b0;
  reg [(1 - 1):0] op_mem_20_24[0:(16 - 1)];
  initial
    begin
      op_mem_20_24[0] = 1'b0;
      op_mem_20_24[1] = 1'b0;
      op_mem_20_24[2] = 1'b0;
      op_mem_20_24[3] = 1'b0;
      op_mem_20_24[4] = 1'b0;
      op_mem_20_24[5] = 1'b0;
      op_mem_20_24[6] = 1'b0;
      op_mem_20_24[7] = 1'b0;
      op_mem_20_24[8] = 1'b0;
      op_mem_20_24[9] = 1'b0;
      op_mem_20_24[10] = 1'b0;
      op_mem_20_24[11] = 1'b0;
      op_mem_20_24[12] = 1'b0;
      op_mem_20_24[13] = 1'b0;
      op_mem_20_24[14] = 1'b0;
      op_mem_20_24[15] = 1'b0;
    end
  wire [(1 - 1):0] op_mem_20_24_front_din;
  wire [(1 - 1):0] op_mem_20_24_back;
  wire op_mem_20_24_push_front_pop_back_en;
  localparam [(5 - 1):0] const_value_x_000000 = 5'b10000;
  assign d_1_22 = d;
  assign op_mem_20_24_back = op_mem_20_24[15];
  always @(posedge clk)
    begin:proc_op_mem_20_24
      integer i;
      if (((ce == 1'b1) && (op_mem_20_24_push_front_pop_back_en == 1'b1)))
        begin
          for (i=15; i>=1; i=i-1)
            begin
              op_mem_20_24[i] <= op_mem_20_24[i-1];
            end
          op_mem_20_24[0] <= op_mem_20_24_front_din;
        end
    end
  assign op_mem_20_24_front_din = d_1_22;
  assign op_mem_20_24_push_front_pop_back_en = 1'b1;
  assign q = op_mem_20_24_back;
endmodule
`timescale 1 ns / 10 ps
module sysgen_bitbasher_a49676fe6f (
  input [(32 - 1):0] in_x0,
  output [(16 - 1):0] out0,
  output [(16 - 1):0] out1,
  input clk,
  input ce,
  input clr);
  wire [(32 - 1):0] in_x0_1_34;
  wire [(16 - 1):0] slice_5_31;
  wire [(16 - 1):0] fullout0_5_1_concat;
  wire [(16 - 1):0] slice_6_31;
  wire [(16 - 1):0] fullout1_6_1_concat;
  wire signed [(16 - 1):0] out0_8_1_force;
  wire signed [(16 - 1):0] out1_13_1_force;
  assign in_x0_1_34 = in_x0;
  assign slice_5_31 = in_x0_1_34[15:0];
  assign fullout0_5_1_concat = {slice_5_31};
  assign slice_6_31 = in_x0_1_34[31:16];
  assign fullout1_6_1_concat = {slice_6_31};
  assign out0_8_1_force = fullout0_5_1_concat;
  assign out1_13_1_force = fullout1_6_1_concat;
  assign out0 = out0_8_1_force;
  assign out1 = out1_13_1_force;
endmodule
`timescale 1 ns / 10 ps
module analysis_axi_lite_interface#(parameter C_S_AXI_DATA_WIDTH = 32, C_S_AXI_ADDR_WIDTH = 5, C_S_NUM_OFFSETS = 6)(
  output wire[0:0] baseiqsel,
  output wire[0:0] valid_in,
  output wire[0:0] swap_iq,
  output wire[1:0] receivep0_scale,
  output wire[1:0] transmit_scale,
  output wire[1:0] transmitp0_sel,
  output wire clk,
  input wire analysis_aclk,
  input wire analysis_aresetn,
  input  wire [C_S_AXI_ADDR_WIDTH - 1:0] analysis_s_axi_awaddr,
  input  wire analysis_s_axi_awvalid,
  output wire analysis_s_axi_awready,
  input  wire [C_S_AXI_DATA_WIDTH-1:0] analysis_s_axi_wdata,
  input  wire [C_S_AXI_DATA_WIDTH/8-1:0] analysis_s_axi_wstrb,
  input  wire analysis_s_axi_wvalid,
  output wire analysis_s_axi_wready,
  output wire [1:0] analysis_s_axi_bresp,
  output wire analysis_s_axi_bvalid,
  input  wire analysis_s_axi_bready,
  input  wire [C_S_AXI_ADDR_WIDTH - 1:0] analysis_s_axi_araddr,
  input  wire analysis_s_axi_arvalid,
  output wire analysis_s_axi_arready,
  output wire [C_S_AXI_DATA_WIDTH-1:0] analysis_s_axi_rdata,
  output wire [1:0] analysis_s_axi_rresp,
  output wire analysis_s_axi_rvalid,
  input  wire analysis_s_axi_rready
);
function integer clogb2 (input integer bit_depth);
begin
  for(clogb2=0; bit_depth>0; clogb2=clogb2+1)
    bit_depth = bit_depth >> 1;
  end
endfunction
localparam integer ADDR_LSB = clogb2(C_S_AXI_DATA_WIDTH/8);
localparam integer ADDR_MSB = C_S_AXI_ADDR_WIDTH;
localparam integer DEC_SIZE = clogb2(C_S_NUM_OFFSETS);
reg [1 :0] axi_rresp;
reg [1 :0] axi_bresp;
reg axi_awready;
reg axi_wready;
reg axi_bvalid;
reg axi_rvalid;
reg [ADDR_MSB-1:0] axi_awaddr;
reg [ADDR_MSB-1:0] axi_araddr;
reg [C_S_AXI_DATA_WIDTH-1:0] axi_rdata;
reg axi_arready;
wire [C_S_AXI_DATA_WIDTH-1:0] slv_wire_array [0:C_S_NUM_OFFSETS-1];
reg [C_S_AXI_DATA_WIDTH-1:0] slv_reg_array [0:C_S_NUM_OFFSETS-1];
wire slv_reg_rden;
wire slv_reg_wren;
reg [DEC_SIZE-1:0] dec_w;
reg [DEC_SIZE-1:0] dec_r;
reg [C_S_AXI_DATA_WIDTH-1:0] reg_data_out;
integer byte_index;
integer offset_index;
assign analysis_s_axi_awready = axi_awready;
assign analysis_s_axi_wready  = axi_wready;
assign analysis_s_axi_bresp  = axi_bresp;
assign analysis_s_axi_bvalid = axi_bvalid;
assign analysis_s_axi_arready = axi_arready;
assign analysis_s_axi_rdata  = axi_rdata;
assign analysis_s_axi_rvalid = axi_rvalid;
assign analysis_s_axi_rresp  = axi_rresp;
// map input 0
assign slv_wire_array[0] = slv_reg_array[0];
assign baseiqsel = slv_wire_array[0][0];
// map input 1
assign slv_wire_array[1] = slv_reg_array[1];
assign valid_in = slv_wire_array[1][0];
// map input 2
assign slv_wire_array[2] = slv_reg_array[2];
assign swap_iq = slv_wire_array[2][0];
// map input 3
assign slv_wire_array[3] = slv_reg_array[3];
assign receivep0_scale[1:0] = slv_wire_array[3][1:0];
// map input 4
assign slv_wire_array[4] = slv_reg_array[4];
assign transmit_scale[1:0] = slv_wire_array[4][1:0];
// map input 5
assign slv_wire_array[5] = slv_reg_array[5];
assign transmitp0_sel[1:0] = slv_wire_array[5][1:0];
  initial
  begin
    slv_reg_array[0] = 32'd0;
    slv_reg_array[1] = 32'd0;
    slv_reg_array[2] = 32'd0;
    slv_reg_array[3] = 32'd0;
    slv_reg_array[4] = 32'd0;
    slv_reg_array[5] = 32'd0;
  end
  always @(axi_awaddr)
  begin
    case(axi_awaddr)
      5'd0 : dec_w = 0;
      5'd4 : dec_w = 1;
      5'd8 : dec_w = 2;
      5'd12 : dec_w = 3;
      5'd16 : dec_w = 4;
      5'd20 : dec_w = 5;
      default : dec_w = 0;
    endcase
  end
  always @(axi_araddr)
  begin
    case(axi_araddr)
      5'd0 : dec_r = 0;
      5'd4 : dec_r = 1;
      5'd8 : dec_r = 2;
      5'd12 : dec_r = 3;
      5'd16 : dec_r = 4;
      5'd20 : dec_r = 5;
      default : dec_r = 0;
    endcase
  end
  always @( posedge analysis_aclk )
  begin
    if ( analysis_aresetn == 1'b0 )
      begin
        axi_awready <= 1'b0;
        axi_awaddr <= 0;
      end
    else
      begin
        if (~axi_awready && analysis_s_axi_awvalid && analysis_s_axi_wvalid)
          begin
            axi_awready <= 1'b1;
            axi_awaddr <= analysis_s_axi_awaddr;
          end
        else
          begin
            axi_awready <= 1'b0;
          end
      end
  end
  always @( posedge analysis_aclk )
  begin
    if ( analysis_aresetn == 1'b0 )
      begin
        axi_wready <= 1'b0;
      end
    else
      begin
        if (~axi_wready && analysis_s_axi_wvalid && analysis_s_axi_awvalid)
          begin
            axi_wready <= 1'b1;
          end
        else
          begin
            axi_wready <= 1'b0;
          end
      end
  end
  assign slv_reg_wren = axi_wready && analysis_s_axi_wvalid && axi_awready && analysis_s_axi_awvalid;
  always @( posedge analysis_aclk )
  begin
    if ( analysis_aresetn == 1'b0 )
      begin
        slv_reg_array[0] = 32'd0;
        slv_reg_array[1] = 32'd0;
        slv_reg_array[2] = 32'd0;
        slv_reg_array[3] = 32'd0;
        slv_reg_array[4] = 32'd0;
        slv_reg_array[5] = 32'd0;
      end
    else begin
      if (slv_reg_wren)
        begin
          for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
            if ( analysis_s_axi_wstrb[byte_index] == 1 ) begin
              slv_reg_array[dec_w][(byte_index*8) +: 8] <= analysis_s_axi_wdata[(byte_index*8) +: 8];
            end
        end
    end
  end
  always @( posedge analysis_aclk )
  begin
    if ( analysis_aresetn == 1'b0 )
      begin
        axi_bvalid  <= 0;
        axi_bresp   <= 2'b0;
      end
    else
      begin
        if (axi_awready && analysis_s_axi_awvalid && ~axi_bvalid && axi_wready && analysis_s_axi_wvalid)
          begin
            axi_bvalid <= 1'b1;
            axi_bresp  <= 2'b0; 
          end
        else
          begin
            if (analysis_s_axi_bready && axi_bvalid)
              begin
                axi_bvalid <= 1'b0;
              end
          end
      end
  end
  always @( posedge analysis_aclk )
  begin
    if ( analysis_aresetn == 1'b0 )
      begin
        axi_arready <= 1'b0;
        axi_araddr  <= {ADDR_MSB{1'b0}};
      end
    else
      begin
        if (~axi_arready && analysis_s_axi_arvalid)
          begin
            axi_arready <= 1'b1;
            axi_araddr  <= analysis_s_axi_araddr;
          end
        else
          begin
            axi_arready <= 1'b0;
          end
      end
  end

  // AXI read response (inferred flops)
  always @( posedge analysis_aclk )
  begin
    if ( analysis_aresetn == 1'b0 )
      begin
        axi_rvalid <= 1'b0;
        axi_rresp  <= 2'b0;
      end
    else
      begin
        if (slv_reg_rden)
          begin
            axi_rvalid <= 1'b1;
            axi_rresp  <= 2'b0; 
          end
        else if (axi_rvalid && analysis_s_axi_rready)
          begin
            axi_rvalid <= 1'b0;
            axi_rresp  <= 2'b0; 
          end
      end
  end
  assign slv_reg_rden = axi_arready & analysis_s_axi_arvalid & ~axi_rvalid;
  always @(analysis_aresetn, slv_reg_rden, axi_araddr, slv_wire_array, dec_r)
  begin
    if ( analysis_aresetn == 1'b0 )
      begin
        reg_data_out <= {C_S_AXI_DATA_WIDTH{1'b0}};
      end
    else
      begin
     reg_data_out <= slv_wire_array[dec_r];
      end
  end
  // flop for AXI read data
  always @( posedge analysis_aclk )
  begin
    if ( analysis_aresetn == 1'b0 )
      begin
        axi_rdata  <= 0;
      end
    else
      begin
        if (slv_reg_rden)
          begin
            axi_rdata <= reg_data_out;
          end
      end
  end

  assign clk = analysis_aclk;

endmodule

module analysis_xladdsub (a, b, c_in, ce, clr, clk, rst, en, c_out, s);
 
 parameter core_name0= "";
 parameter a_width= 16;
 parameter signed a_bin_pt= 4;
 parameter a_arith= `xlUnsigned;
 parameter c_in_width= 16;
 parameter c_in_bin_pt= 4;
 parameter c_in_arith= `xlUnsigned;
 parameter c_out_width= 16;
 parameter c_out_bin_pt= 4;
 parameter c_out_arith= `xlUnsigned;
 parameter b_width= 8;
 parameter signed b_bin_pt= 2;
 parameter b_arith= `xlUnsigned;
 parameter s_width= 17;
 parameter s_bin_pt= 4;
 parameter s_arith= `xlUnsigned;
 parameter rst_width= 1;
 parameter rst_bin_pt= 0;
 parameter rst_arith= `xlUnsigned;
 parameter en_width= 1;
 parameter en_bin_pt= 0;
 parameter en_arith= `xlUnsigned;
 parameter full_s_width= 17;
 parameter full_s_arith= `xlUnsigned;
 parameter mode= `xlAddMode;
 parameter extra_registers= 0;
 parameter latency= 0;
 parameter quantization= `xlTruncate;
 parameter overflow= `xlWrap;
 parameter c_a_width= 16;
 parameter c_b_width= 8;
 parameter c_a_type= 1;
 parameter c_b_type= 1;
 parameter c_has_sclr= 0;
 parameter c_has_ce= 0;
 parameter c_latency= 0;
 parameter c_output_width= 17;
 parameter c_enable_rlocs= 1;
 parameter c_has_c_in= 0;
 parameter c_has_c_out= 0;
 
 input [a_width-1:0] a;
 input [b_width-1:0] b;
 input c_in, ce, clr, clk, rst, en;
 output c_out;
 output [s_width-1:0] s;
 
 parameter full_a_width = full_s_width;
 parameter full_b_width = full_s_width;
 parameter full_s_bin_pt = (a_bin_pt > b_bin_pt) ? a_bin_pt : b_bin_pt;
 
 wire [full_a_width-1:0] full_a;
 wire [full_b_width-1:0] full_b;
 wire [full_s_width-1:0] full_s;
 wire [full_s_width-1:0] core_s;
 wire [s_width-1:0] conv_s;
 wire  temp_cout;
 wire  real_a,real_b,real_s;
 wire  internal_clr;
 wire  internal_ce;
 wire  extra_reg_ce;
 wire  override;
 wire  logic1;
 wire  temp_cin;
 
 assign internal_clr = (clr | rst) & ce;
 assign internal_ce = ce & en;
 assign logic1 = 1'b1;
 assign temp_cin = (c_has_c_in) ? c_in : 1'b0;
 
 align_input # (a_width, b_bin_pt - a_bin_pt, a_arith, full_a_width)
 align_inp_a(.inp(a),.res(full_a));
 align_input # (b_width, a_bin_pt - b_bin_pt, b_arith, full_b_width)
 align_inp_b(.inp(b),.res(full_b));
 convert_type # (full_s_width, full_s_bin_pt, full_s_arith, s_width,
                 s_bin_pt, s_arith, quantization, overflow)
 conv_typ_s(.inp(core_s),.res(conv_s));
 
 generate


if (core_name0 == "analysis_c_addsub_v12_0_i0") 
     begin:comp0
analysis_c_addsub_v12_0_i0 core_instance0 ( 
         .A(full_a),
         .CLK(clk),
         .CE(internal_ce),
         .S(core_s),
         .B(full_b) 
       ); 
     end 

if (core_name0 == "analysis_c_addsub_v12_0_i1") 
     begin:comp1
analysis_c_addsub_v12_0_i1 core_instance1 ( 
         .A(full_a),
         .CLK(clk),
         .CE(internal_ce),
         .S(core_s),
         .B(full_b) 
       ); 
     end 

if (core_name0 == "analysis_c_addsub_v12_0_i2") 
     begin:comp2
analysis_c_addsub_v12_0_i2 core_instance2 ( 
         .A(full_a),
         .CLK(clk),
         .CE(internal_ce),
         .S(core_s),
         .B(full_b) 
       ); 
     end 

if (core_name0 == "analysis_c_addsub_v12_0_i3") 
     begin:comp3
analysis_c_addsub_v12_0_i3 core_instance3 ( 
         .A(full_a),
         .CLK(clk),
         .CE(internal_ce),
         .S(core_s),
         .B(full_b) 
       ); 
     end 

if (core_name0 == "analysis_c_addsub_v12_0_i4") 
     begin:comp4
analysis_c_addsub_v12_0_i4 core_instance4 ( 
         .A(full_a),
         .CLK(clk),
         .CE(internal_ce),
         .S(core_s),
         .B(full_b) 
       ); 
     end 

endgenerate 
 
 
 generate
   if (extra_registers > 0)
   begin:latency_test
     
     if (c_latency > 1)
     begin:override_test
       synth_reg # (1, c_latency)
         override_pipe (
           .i(logic1),
           .ce(internal_ce),
           .clr(internal_clr),
           .clk(clk),
           .o(override));
       assign extra_reg_ce = ce & en & override;
     end // override_test
 
     if ((c_latency == 0) || (c_latency == 1))
     begin:no_override
       assign extra_reg_ce = ce & en;
     end // no_override
 
     synth_reg # (s_width, extra_registers)
       extra_reg (
         .i(conv_s),
         .ce(extra_reg_ce),
         .clr(internal_clr),
         .clk(clk),
         .o(s));
 
     if (c_has_c_out == 1)
     begin:cout_test
       synth_reg # (1, extra_registers)
         c_out_extra_reg (
           .i(temp_cout),
           .ce(extra_reg_ce),
           .clr(internal_clr),
           .clk(clk),
           .o(c_out));
     end // cout_test
     
   end // latency_test
 endgenerate
 
 generate
   if ((latency == 0) || (extra_registers == 0))
   begin:latency_s
     assign s = conv_s;
   end // latency_s
 endgenerate
 
 generate
   if (((latency == 0) || (extra_registers == 0)) &&
       (c_has_c_out == 1))
   begin:latency0
     assign c_out = temp_cout;
   end // latency0
 endgenerate
 
 generate
   if (c_has_c_out == 0)
   begin:tie_dangling_cout
     assign c_out = 0;
   end // tie_dangling_cout
 endgenerate
 
 endmodule

module analysis_xlcounter_free  (ce, clr, clk, op, up, load, din, en, rst);
 
 parameter core_name0= "";
 parameter op_width= 5;
 parameter op_arith= `xlSigned;
 
 input ce, clr, clk;
 input up, load;
 input [op_width-1:0] din;
 input en, rst;
 output [op_width-1:0] op;
 
 parameter [(8*op_width)-1:0] oneStr = { op_width{"1"}}; 
 
 wire  core_sinit;
 wire  core_ce;
 wire [op_width-1:0] op_net;
 
    assign core_ce = ce & en;
    assign core_sinit = (clr | rst) & ce;
    assign op = op_net;
 
 generate



if (core_name0 == "analysis_c_counter_binary_v12_0_i0") 
     begin:comp0
analysis_c_counter_binary_v12_0_i0 core_instance0 ( 
        .CLK(clk),
        .CE(core_ce),
        .SINIT(core_sinit),
        .Q(op_net) 
       ); 
     end 

if (core_name0 == "analysis_c_counter_binary_v12_0_i1") 
     begin:comp1
analysis_c_counter_binary_v12_0_i1 core_instance1 ( 
        .CLK(clk),
        .CE(core_ce),
        .SINIT(core_sinit),
        .Q(op_net) 
       ); 
     end 

endgenerate 
 endmodule
module analysis_xlcounter_limit (ce, clr, clk, op, up, en, rst);
 
 parameter core_name0= "";
 parameter op_width= 5;
 parameter op_arith= `xlSigned;
 parameter cnt_63_48 = 0;
 parameter cnt_47_32 = 0;
 parameter cnt_31_16 = 0;
 parameter cnt_15_0  = 0;
 parameter count_limited= 0;
 
    input  ce, clr, clk;
    input rst, en;  
    input up;
    output [op_width-1:0] op;
 
 parameter [63:0] cnt_to = { cnt_63_48[15:0], cnt_47_32[15:0], cnt_31_16[15:0], cnt_15_0[15:0]};
 parameter [(8*op_width)-1:0] oneStr = { op_width{"1"}}; 
    
 reg op_thresh0;
 wire core_sinit, core_ce;
 wire rst_overrides_en;
 wire [op_width-1:0] op_net;
 
    assign op = op_net;
    assign core_ce = ce & en;
    assign rst_overrides_en = rst | en;
    
 generate
 
    if (count_limited == 1)
      begin :limit
 	always @(op_net)
 	  begin:eq_cnt_to
 	     op_thresh0 = (op_net == cnt_to[op_width-1:0])? 1'b1 : 1'b0;
 	  end
         assign core_sinit = (op_thresh0 | clr | rst) & ce & rst_overrides_en;
      end
    if (count_limited == 0)
      begin :no_limit
 	assign core_sinit = (clr | rst) & ce & rst_overrides_en;
      end



if (core_name0 == "analysis_c_counter_binary_v12_0_i1") 
     begin:comp0
analysis_c_counter_binary_v12_0_i1 core_instance0 ( 
        .CLK(clk),
        .CE(core_ce),
        .SINIT(core_sinit),
        .Q(op_net) 
       ); 
     end 

if (core_name0 == "analysis_c_counter_binary_v12_0_i0") 
     begin:comp1
analysis_c_counter_binary_v12_0_i0 core_instance1 ( 
        .CLK(clk),
        .CE(core_ce),
        .SINIT(core_sinit),
        .Q(op_net) 
       ); 
     end 

endgenerate
 
 endmodule

