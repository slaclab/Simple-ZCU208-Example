-- 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
-----------------------------------------------------------------------------------------------
-- ? Copyright 2018 Xilinx, Inc. All rights reserved.
-- This file contains confidential and proprietary information of Xilinx, Inc. and is
-- protected under U.S. and international copyright and other intellectual property laws.
-----------------------------------------------------------------------------------------------
--
-- Disclaimer:
--         This disclaimer is not a license and does not grant any rights to the materials
--         distributed herewith. Except as otherwise provided in a valid license issued to you
--         by Xilinx, and to the maximum extent permitted by applicable law: (1) THESE MATERIALS
--         ARE MADE AVAILABLE "AS IS" AND WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL
--         WARRANTIES AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING BUT NOT LIMITED
--         TO WARRANTIES OF MERCHANTABILITY, NON-INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR
--         PURPOSE; and (2) Xilinx shall not be liable (whether in contract or tort, including
--         negligence, or under any other theory of liability) for any loss or damage of any
--         kind or nature related to, arising under or in connection with these materials,
--         including for any direct, or any indirect, special, incidental, or consequential
--         loss or damage (including loss of data, profits, goodwill, or any type of loss or
--         damage suffered as a result of any action brought by a third party) even if such
--         damage or loss was reasonably foreseeable or Xilinx had been advised of the
--         possibility of the same.
--
-- CRITICAL APPLICATIONS
--         Xilinx products are not designed or intended to be fail-safe, or for use in any
--         application requiring fail-safe performance, such as life-support or safety devices
--         or systems, Class III medical devices, nuclear facilities, applications related to
--         the deployment of airbags, or any other applications that could lead to death,
--         personal injury, or severe property or environmental damage (individually and
--         collectively, "Critical Applications"). Customer assumes the sole risk and
--         liability of any use of Xilinx products in Critical Applications, subject only to
--         applicable laws and regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE AT ALL TIMES. 
--
--         Contact:    e-mail  catalinb@xilinx.com - this design is not supported by Xilinx
--                     Worldwide Technical Support (WTS), for support please contact the author
--   ____  ____
--  /   /\/   /
-- /___/  \  /             Vendor:               Xilinx Inc.
-- \   \   \/              Version:              0.14
--  \   \                  Filename:             VECTOR_FFT.vhd
--  /   /                  Date Last Modified:   9 Mar 2018
-- /___/   /\              Date Created:         
-- \   \  /  \
--  \___\/\___\
-- 
-- Device:          Any UltraScale Xilinx FPGA
-- Author:          Catalin Baetoniu
-- Entity Name:     VECTOR_FFT
-- Purpose:         Arbitrary Size Systolic FFT - any size N, any SSR (powers of 2 only)
--
-- Revision History: 
-- Revision 0.14    2018-Mar-09 Version with workarounds for Vivado Simulator limited VHDL-2008 support
-------------------------------------------------------------------------------- 
--
-- Module Description: Top Level Test Module for SYSTOLIC_FFT
--
-------------------------------------------------------------------------------- 
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

use work.COMPLEX_FIXED_PKG.all;

entity VECTOR_FFT is
  generic(SSR:INTEGER:=8;--4;
          N:INTEGER:=16384;--8192;--4096;--1024;
          I_high:INTEGER:=0;
          I_low:INTEGER:=-17;
          W_high:INTEGER:=1;
          W_low:INTEGER:=-17;
          O_high:INTEGER:=0;
          O_low:INTEGER:=-17;
          ROUNDING:BOOLEAN:=TRUE;
          BRAM_THRESHOLD:INTEGER:=512;
          USE_CB:BOOLEAN:=FALSE;
          DSP48E:INTEGER:=2); -- use 1 for DSP48E1 and 2 for DSP48E2
  port(CLK:in STD_LOGIC;
--2008       I:in CFIXED_VECTOR(0 to RADIX-1)(RE(I_high downto I_low),IM(I_high downto I_low));
       I:in CFIXED_VECTOR(SSR*2*(I_high-I_low+1)-1 downto 0);
       VI:in BOOLEAN;
       SI:in UNSIGNED(LOG2(N)-1 downto 0);
--2008       O:out CFIXED_VECTOR(0 to RADIX-1)(RE(O_high downto O_low),IM(O_high downto O_low));
       O:out CFIXED_VECTOR(SSR*2*(O_high-O_low+1)-1 downto 0);
       VO:out BOOLEAN;
       SO:out UNSIGNED(LOG2(N)-1 downto 0));
end VECTOR_FFT;

architecture TEST of VECTOR_FFT is
  function TO_SFIXED(S:STD_LOGIC_VECTOR;I:SFIXED) return SFIXED is
    variable R:SFIXED(I'range);
  begin
    for K in 0 to R'length-1 loop
      R(R'low+K):=S(S'low+K);
    end loop;
    return R;
  end;
  
  function TO_STD_LOGIC_VECTOR(S:SFIXED) return STD_LOGIC_VECTOR is
    variable R:STD_LOGIC_VECTOR(S'length-1 downto 0);
  begin
    for K in 0 to R'length-1 loop
      R(R'low+K):=S(S'low+K);
    end loop;
    return R;
  end;
  
--2008  signal II:CFIXED_VECTOR(I'range)(RE(I_high downto I_low),IM(I_high downto I_low));
  signal II:CFIXED_VECTOR(I'range);
  signal V,VOFFT,VODS:BOOLEAN;
  signal S,SFFT,SODS:UNSIGNED(SI'range);
--2008  signal OFFT,ODS:CFIXED_VECTOR(O'range)(RE(O_high downto O_low),IM(O_high downto O_low));
  signal OFFT,ODS:CFIXED_VECTOR(O'range);
begin
  u0:entity work.INPUT_SWAP generic map(N=>N,
                                       SSR=>SSR, --93
                                       BRAM_THRESHOLD=>BRAM_THRESHOLD,
                                       USE_CB=>USE_CB)
                           port map(CLK=>CLK,
                                    I=>I,
                                    VI=>VI,
                                    SI=>SI,
                                    O=>II,
                                    VO=>V,
                                    SO=>S);

  u1:entity work.SYSTOLIC_FFT generic map(N=>N,
                                         SSR=>SSR, --93
                                         W_high=>W_high,
                                         W_low=>W_low,
                                         ROUNDING=>ROUNDING,
                                         BRAM_THRESHOLD=>BRAM_THRESHOLD,
                                         DSP48E=>DSP48E)
                             port map(CLK=>CLK,
                                      I=>II,
                                      VI=>V,
                                      SI=>S,
                                      O=>OFFT,
                                      VO=>VOFFT,
                                      SO=>SFFT);

  u2:entity work.DSN generic map(N=>N,
                                 SSR=>SSR, --93
                                 BRAM_THRESHOLD=>BRAM_THRESHOLD)
                     port map(CLK=>CLK,
                              I=>OFFT,
                              VI=>VOFFT,
                              SI=>SFFT,
                              O=>O,
                              VO=>VO,
                              SO=>SO);  
--  O<=OFFT;
--  VO<=VOFFT;
--  SO<=SFFT;
end TEST;
