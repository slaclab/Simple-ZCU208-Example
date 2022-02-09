-- 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
-----------------------------------------------------------------------------------------------
-- © Copyright 2018 Xilinx, Inc. All rights reserved.
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
--  \   \                  Filename:             COMPLEX_FIXED_PKG.vhd
--  /   /                  Date Last Modified:   16 Apr 2018
-- /___/   /\              Date Created:         
-- \   \  /  \
--  \___\/\___\
-- 
-- Device:          Any UltraScale Xilinx FPGA
-- Author:          Catalin Baetoniu
-- Package Name:    COMPLEX_FIXED_PKG
-- Purpose:         Arbitrary Size Systolic FFT - any size N, any SSR (powers of 2 only)
--
-- Revision History: 
-- Revision 0.14    2018-April-16  Version with workarounds for Vivado Simulator limited VHDL-2008 support
-------------------------------------------------------------------------------- 
--
-- Module Description: Unconstrained Size Vectors and Matrices of Complex Arbitrary Precision Fixed Point Numbers
--
-------------------------------------------------------------------------------- 
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
use ieee.math_complex.all;

package COMPLEX_FIXED_PKG is
  type BOOLEAN_VECTOR is array(NATURAL range <>) of BOOLEAN;
  type INTEGER_VECTOR is array(NATURAL range <>) of INTEGER;
  type REAL_VECTOR is array(NATURAL range <>) of REAL;
--2008  type UNSIGNED_VECTOR is array(NATURAL range <>) of UNSIGNED;
  type COMPLEX_VECTOR is array(INTEGER range <>) of COMPLEX;

  type SFIXED is array(INTEGER range <>) of STD_LOGIC; -- arbitrary precision fixed point signed number, like SIGNED but lower bound can be negative
--2008  type SFIXED_VECTOR is array(INTEGER range <>) of SFIXED; -- unconstrained array of SFIXED
--2008  type CFIXED is record RE,IM:SFIXED; end record; -- arbitrary precision fixed point complex signed number
--2008  type CFIXED_VECTOR is array(INTEGER range <>) of CFIXED; -- unconstrained array of CFIXED
--2008  type CFIXED_MATRIX is array(INTEGER range <>) of CFIXED_VECTOR; -- unconstrained array of CFIXED_VECTOR
  type SFIXED_VECTOR is array(INTEGER range <>) of STD_LOGIC; -- unconstrained array of SFIXED, vector size must be given by a separate generic
  type CFIXED is array(INTEGER range <>) of STD_LOGIC; -- arbitrary precision fixed point complex signed number, CFIXED'low is always even and CFIXED'high is always odd
  type CFIXED_VECTOR is array(INTEGER range <>) of STD_LOGIC; -- unconstrained array of CFIXED, vector size must be given by a separate generic

--  function ELEMENT(X:CFIXED;K,N:INTEGER) return CFIXED; -- returns the CFIXED range for X(K)
--  function RE(X:CFIXED;K,N:INTEGER) return SFIXED; -- returns the CFIXED range for X(K).RE
--  function IM(X:CFIXED;K,N:INTEGER) return SFIXED; -- returns the CFIXED range for X(K).IM
  
  function MIN(A,B:INTEGER) return INTEGER;
  function MIN(A,B,C:INTEGER) return INTEGER;
  function MIN(A,B,C,D:INTEGER) return INTEGER;
  function MED(A,B,C:INTEGER) return INTEGER;
  function MAX(A,B:INTEGER) return INTEGER;
  function MAX(A,B,C:INTEGER) return INTEGER;
  function MAX(A,B,C,D:INTEGER) return INTEGER;
  function "+"(X,Y:SFIXED) return SFIXED; -- full precision add with SFIXED(MAX(X'high,Y'high)+1 downto MIN(X'low,Y'low)) result
  function "-"(X,Y:SFIXED) return SFIXED; -- full precision subtract with SFIXED(MAX(X'high,Y'high)+1 downto MIN(X'low,Y'low)) result
  function "-"(X:SFIXED) return SFIXED; -- full precision negate with SFIXED(X'high+1 downto X'low) result
  function "*"(X,Y:SFIXED) return SFIXED; -- full precision multiply with SFIXED(X'high+Y'high+1 downto X'low+Y'low) result
  function "*"(X:SFIXED;Y:STD_LOGIC) return SFIXED; -- multiply by 0 or 1 with SFIXED(X'high downto X'low) result
  function RESIZE(X:SFIXED;H,L:INTEGER) return SFIXED; -- resizes X and returns SFIXED(H downto L)
  function RESIZE(X:SFIXED;HL:SFIXED) return SFIXED; -- resizes X to match HL and returns SFIXED(HL'high downto HL'low)
  function SHIFT_RIGHT(X:SFIXED;N:INTEGER) return SFIXED; -- returns SFIXED(X'high-N downto X'low-N) result
  function SHIFT_LEFT(X:SFIXED;N:INTEGER) return SFIXED; -- returns SFIXED(X'high+N downto X'low+N) result
  function TO_SFIXED(R:REAL;H,L:INTEGER) return SFIXED; -- returns SFIXED(H downto L) result
  function TO_SFIXED(R:REAL;HL:SFIXED) return SFIXED; -- returns SFIXED(HL'high downto HL'low) result
  function TO_REAL(S:SFIXED) return REAL; -- returns REAL result
--  function ELEMENT(X:SFIXED_VECTOR;K,N:INTEGER) return SFIXED; -- returns element K out of an N-size array X

  function RE(X:CFIXED) return SFIXED; -- returns SFIXED(X'high/2 downto X'low/2) result
--  procedure vRE(X:out CFIXED;S:SFIXED); -- use when X is a variable, X'low is always even and X'high is always odd
--  procedure RE(signal X:out CFIXED;S:SFIXED); -- use when X is a signal, X'low is always even and X'high is always odd
  function IM(X:CFIXED) return SFIXED; -- returns SFIXED(X'high/2 downto X'low/2) result
--  procedure vIM(X:out CFIXED;S:SFIXED); -- use when X is a variable, X'low is always even and X'high is always odd
--  procedure IM(signal X:out CFIXED;S:SFIXED); -- use when X is a signal, X'low is always even and X'high is always odd
  function "+"(X,Y:CFIXED) return CFIXED; -- full precision add with CFIXED(MAX(X'high,Y'high)+2 downto MIN(X'low,Y'low)) result
  function "-"(X,Y:CFIXED) return CFIXED; -- full precision subtract with CFIXED(MAX(X'high,Y'high)+2 downto MIN(X'low,Y'low)) result
  function "*"(X,Y:CFIXED) return CFIXED; -- full precision multiply with CFIXED(X'high+Y'high+2 downto X'low+Y'low) result
  function "*"(X:CFIXED;Y:SFIXED) return CFIXED; -- full precision multiply with CFIXED(X'high+Y'high downto X'low+Y'low) result
  function "*"(X:SFIXED;Y:CFIXED) return CFIXED;
  function RESIZE(X:CFIXED;H,L:INTEGER) return CFIXED; -- resizes X and returns CFIXED(H downto L)
  function RESIZE(X:CFIXED;HL:CFIXED) return CFIXED; -- resizes X to match HL and returns CFIXED(HL'high downto HL'low)
  function PLUS_i_TIMES(X:CFIXED) return CFIXED; -- returns CFIXED(X'high+2 downto X'low) result
  function "-"(X:CFIXED) return CFIXED; -- full precision negate with CFIXED(X'high+2 downto X'low) result
  function MINUS_i_TIMES(X:CFIXED) return CFIXED; -- returns CFIXED(X'high+2 downto X'low) result
  function X_PLUS_i_TIMES_Y(X,Y:CFIXED;RND:CFIXED) return CFIXED; -- returns CFIXED(MAX(X'high,Y'high)+2 downto MIN(X'low,Y'low)) result
  function X_MINUS_i_TIMES_Y(X,Y:CFIXED;RND:CFIXED) return CFIXED; -- returns CFIXED(MAX(X'high,Y'high)+2 downto MIN(X'low,Y'low)) result
  function SWAP(X:CFIXED) return CFIXED; -- returns CFIXED(X'high downto X'low) result
  function CONJ(X:CFIXED) return CFIXED; -- returns CFIXED(X'high+2 downto X'low) result
  function SHIFT_RIGHT(X:CFIXED;N:INTEGER) return CFIXED; -- returns CFIXED(X'high-N downto X'low-N) result
  function SHIFT_LEFT(X:CFIXED;N:INTEGER) return CFIXED; -- returns CFIXED(X'high+N downto X'low+N) result
  function TO_CFIXED(R,I:REAL;H,L:INTEGER) return CFIXED; -- returns CFIXED(H downto L) result
  function TO_CFIXED(R,I:REAL;HL:CFIXED) return CFIXED; -- returns CFIXED(HL'high downto HL'low) result
  function TO_CFIXED(C:COMPLEX;HL:CFIXED) return CFIXED; -- returns CFIXED(RE(HL.RE'high downto HL.RE'low),IM(RE(HL.IM'high downto HL.IM'low)) result
  function TO_CFIXED(R,I:SFIXED) return CFIXED; -- returns CFIXED(2*MAX(R'high,I'high)+1 downto 2*MIN(R'low,I'low)) result
  function TO_COMPLEX(C:CFIXED) return COMPLEX; -- returns COMPLEX result
  function TO_CFIXED_VECTOR(C:COMPLEX_VECTOR;HL:CFIXED) return CFIXED_VECTOR; -- returns CFIXED_VECTOR(RE(HL.RE'high downto HL.RE'low),IM(RE(HL.IM'high downto HL.IM'low)) result
  function TO_COMPLEX_VECTOR(C:CFIXED_VECTOR;N:INTEGER) return COMPLEX_VECTOR; -- returns COMPLEX_VECTOR result
  function "*"(R:REAL;C:COMPLEX_VECTOR) return COMPLEX_VECTOR; -- returns R*C

  function ELEMENT(X:CFIXED_VECTOR;K,N:INTEGER) return CFIXED; -- returns element K out of an N-size array X
  procedure vELEMENT(X:out CFIXED_VECTOR;K,N:INTEGER;C:CFIXED); -- use when X is a variable, set element K out of an N-size array X to C
  procedure ELEMENT(signal X:out CFIXED_VECTOR;K,N:INTEGER;C:CFIXED); -- use when X is a signal, set element K out of an N-size array X to C

  function LOG2(N:INTEGER) return INTEGER; -- returns ceil(log2(N))
end COMPLEX_FIXED_PKG;

package body COMPLEX_FIXED_PKG is
--  function ELEMENT(X:CFIXED;K,N:INTEGER) return CFIXED is -- returns the CFIXED range for X(K)
--    variable O:CFIXED(X'length/N*(K+1)-1+X'low/N downto X'length/N*K+X'low/N);
--  begin
--    return O;
--  end;
  
--  function RE(X:CFIXED;K,N:INTEGER) return SFIXED is -- returns the CFIXED range for X(K).RE
--  begin
--    return RE(ELEMENT(X,K,N));
--  end;
  
--  function IM(X:CFIXED;K,N:INTEGER) return SFIXED is -- returns the CFIXED range for X(K).IM
--  begin
--    return IM(ELEMENT(X,K,N));
--  end;
  
  function MIN(A,B:INTEGER) return INTEGER is
  begin
    if A<B then
      return A;
    else
      return B;
    end if;
  end;
  
  function MIN(A,B,C:INTEGER) return INTEGER is
  begin
    return MIN(MIN(A,B),C);
  end;
  
  function MIN(A,B,C,D:INTEGER) return INTEGER is
  begin
    return MIN(MIN(A,B),MIN(C,D));
  end;
  
  function MED(A,B,C:INTEGER) return INTEGER is
  begin
    return MAX(MIN(A,B),MIN(MAX(A,B),C));
  end;
  
  function MAX(A,B:INTEGER) return INTEGER is
  begin
    if A>B then
      return A;
    else
      return B;
    end if;
  end;
  
  function MAX(A,B,C:INTEGER) return INTEGER is
  begin
    return MAX(MAX(A,B),C);
  end;
  
  function MAX(A,B,C,D:INTEGER) return INTEGER is
  begin
    return MAX(MAX(A,B),MAX(C,D));
  end;
  
  function "+"(X,Y:SFIXED) return SFIXED is
    variable SX,SY,SR:SIGNED(MAX(X'high,Y'high)+1-MIN(X'low,Y'low) downto 0);
    variable R:SFIXED(MAX(X'high,Y'high)+1 downto MIN(X'low,Y'low));
  begin
    for K in SX'range loop
      if K<X'low-Y'low then
        SX(K):='0';           -- zero pad X LSBs
      elsif K>X'high-R'low then
        SX(K):=X(X'high);     -- sign extend X MSBs
      else
        SX(K):=X(R'low+K);
      end if;
    end loop;
    for K in SY'range loop
      if K<Y'low-X'low then
        SY(K):='0';           -- zero pad Y LSBs
      elsif K>Y'high-R'low then
        SY(K):=Y(Y'high);     -- sign extend Y MSBs
      else
        SY(K):=Y(R'low+K);
      end if;
    end loop;
    SR:=SX+SY; -- SIGNED addition
    for K in SR'range loop
      R(R'low+K):=SR(K);
    end loop;
    return R;
  end;
  
  function "-"(X,Y:SFIXED) return SFIXED is
    variable SX,SY,SR:SIGNED(MAX(X'high,Y'high)+1-MIN(X'low,Y'low) downto 0);
    variable R:SFIXED(MAX(X'high,Y'high)+1 downto MIN(X'low,Y'low));
  begin
    for K in SX'range loop
      if K<X'low-Y'low then
        SX(K):='0';           -- zero pad X LSBs
      elsif K>X'high-R'low then
        SX(K):=X(X'high);     -- sign extend X MSBs
      else
        SX(K):=X(R'low+K);
      end if;
    end loop;
    for K in SY'range loop
      if K<Y'low-X'low then
        SY(K):='0';           -- zero pad Y LSBs
      elsif K>Y'high-R'low then
        SY(K):=Y(Y'high);     -- sign extend Y MSBs
      else
        SY(K):=Y(R'low+K);
      end if;
    end loop;
    SR:=SX-SY; -- SIGNED subtraction
    for K in SR'range loop
      R(R'low+K):=SR(K);
    end loop;
    return R;
  end;
  
  function "-"(X:SFIXED) return SFIXED is
    variable SX:SIGNED(X'high-X'low downto 0);
    variable SR:SIGNED(X'high-X'low+1 downto 0);
    variable R:SFIXED(X'high+1 downto X'low);
  begin
    for K in SX'range loop
      SX(K):=X(X'low+K);
    end loop;
    SR:=-RESIZE(SX,SR'length); -- SIGNED negation
    for K in SR'range loop
      R(R'low+K):=SR(K);
    end loop;
    return R;
  end;
  
  function "*"(X,Y:SFIXED) return SFIXED is
    variable SX:SIGNED(X'high-X'low downto 0);
    variable SY:SIGNED(Y'high-Y'low downto 0);
    variable SR:SIGNED(SX'high+SY'high+1 downto 0);
    variable R:SFIXED(X'high+Y'high+1 downto X'low+Y'low);
  begin
    for K in SX'range loop
      SX(K):=X(X'low+K);
    end loop;
    for K in SY'range loop
      SY(K):=Y(Y'low+K);
    end loop;
    SR:=SX*SY; -- SIGNED multiplication
    for K in SR'range loop
      R(R'low+K):=SR(K);
    end loop;
    return R;
  end;
  
  function "*"(X:SFIXED;Y:STD_LOGIC) return SFIXED is
  begin
    if Y='1' then
      return X;
    else
      return TO_SFIXED(0.0,X);
    end if;
  end;
  
  function RESIZE(X:SFIXED;H,L:INTEGER) return SFIXED is
    variable R:SFIXED(H downto L);
  begin
    for K in R'range loop
      if K<X'low then
        R(K):='0';           -- zero pad X LSBs
      elsif K>X'high then
        R(K):=X(X'high);     -- sign extend X MSBs
      else
        R(K):=X(K);
      end if;
    end loop;
    return R;
  end;
  
  function RESIZE(X:SFIXED;HL:SFIXED) return SFIXED is
  begin
    return RESIZE(X,HL'high,HL'low);
  end;
  
  function SHIFT_RIGHT(X:SFIXED;N:INTEGER) return SFIXED is
    variable R:SFIXED(X'high-N downto X'low-N);
  begin
    for K in R'range loop
      R(K):=X(K+N);
    end loop;
    return R;
  end;
  
  function SHIFT_LEFT(X:SFIXED;N:INTEGER) return SFIXED is
    variable R:SFIXED(X'high+N downto X'low+N);
  begin
    for K in R'range loop
      R(K):=X(K-N);
    end loop;
    return R;
  end;

  function TO_SFIXED(R:REAL;H,L:INTEGER) return SFIXED is
    variable RR:REAL;
    variable V:SFIXED(H downto L);
  begin
    assert (R<2.0**H) and (R>=-2.0**H) report "TO_SFIXED vector truncation!" severity warning;
    if R<0.0 then
      V(V'high):='1';
      RR:=R+2.0**V'high;
    else
      V(V'high):='0';
      RR:=R;
    end if;
    for K in V'high-1 downto V'low loop
      if RR>=2.0**K then
        V(K):='1';
        RR:=RR-2.0**K;
      else
        V(K):='0';
      end if;
    end loop;
    return V;
  end;
  
  function TO_SFIXED(R:REAL;HL:SFIXED) return SFIXED is
  begin
    return TO_SFIXED(R,HL'high,HL'low);
  end;

  function TO_REAL(S:SFIXED) return REAL is
    variable R:REAL;
  begin
    R:=0.0;
    for K in S'range loop
      if K=S'high then
        if S(K)='1' then
          R:=R-2.0**K;
        end if;
      else
        if S(K)='1' then
          R:=R+2.0**K;
        end if;
      end if;
    end loop;
    return R;
  end;

--  function ELEMENT(X:SFIXED_VECTOR;K,N:INTEGER) return SFIXED is -- X'low and X'length are always multiples of N
--    variable R:SFIXED(X'length/N-1+X'low/N downto X'low/N);
--  begin
--    R:=SFIXED(X((K+1)*R'length-1+X'low downto K*R'length+X'low));
--    return R; -- element K out of N of X
--  end;

  function RE(X:CFIXED) return SFIXED is -- X'low is always even and X'high is always odd
    variable R:SFIXED((X'high+1)/2-1 downto X'low/2);
  begin
    R:=SFIXED(X(R'length-1+X'low downto X'low));
    return R; --lower half of X
  end;

--  procedure vRE(X:out CFIXED;S:SFIXED) is -- X'low is always even and X'high is always odd
--  begin
--    X(S'length-1+X'low downto X'low):=CFIXED(S); -- set lower half of X
--  end;

--  procedure RE(signal X:out CFIXED;S:SFIXED) is -- X'low is always even and X'high is always odd
--  begin
--    X(S'length-1+X'low downto X'low)<=CFIXED(S); -- set lower half of X
--  end;

  function IM(X:CFIXED) return SFIXED is -- X'low is always even and X'high is always odd
    variable R:SFIXED((X'high+1)/2-1 downto X'low/2);
  begin
    R:=SFIXED(X(X'high downto R'length+X'low));
    return R; --upper half of X
  end;

--  procedure vIM(X:out CFIXED;S:SFIXED) is -- X'low is always even and X'high is always odd
--  begin
--    X(X'high downto S'length+X'low):=CFIXED(S); -- set upper half of X
--  end;

--  procedure IM(signal X:out CFIXED;S:SFIXED) is -- X'low is always even and X'high is always odd
--  begin
--    X(X'high downto S'length+X'low)<=CFIXED(S); -- set upper half of X
--  end;

  function "+"(X,Y:CFIXED) return CFIXED is
  begin
    return TO_CFIXED(RE(X)+RE(Y),IM(X)+IM(Y));
  end;
  
  function "-"(X,Y:CFIXED) return CFIXED is
  begin
    return TO_CFIXED(RE(X)-RE(Y),IM(X)-IM(Y));
  end;
  
  function "*"(X,Y:CFIXED) return CFIXED is
  begin
    return TO_CFIXED(RE(X)*RE(Y)-IM(X)*IM(Y),RE(X)*IM(Y)+IM(X)*RE(Y));
  end;

  function "*"(X:CFIXED;Y:SFIXED) return CFIXED is
  begin
    return TO_CFIXED(RE(X)*Y,IM(X)*Y);
  end;

  function "*"(X:SFIXED;Y:CFIXED) return CFIXED is
  begin
    return TO_CFIXED(X*RE(Y),X*IM(Y));
  end;

  function RESIZE(X:CFIXED;H,L:INTEGER) return CFIXED is
  begin
    return TO_CFIXED(RESIZE(RE(X),H,L),RESIZE(IM(X),H,L));
  end;
  
  function RESIZE(X:CFIXED;HL:CFIXED) return CFIXED is
  begin
    return RESIZE(X,HL'high/2,HL'low/2);
  end;
  
  function PLUS_i_TIMES(X:CFIXED) return CFIXED is
  begin
    return TO_CFIXED(-IM(X),RE(X));
  end;
  
  function "-"(X:CFIXED) return CFIXED is
  begin
    return TO_CFIXED(-RE(X),-IM(X));
  end;
  
  function MINUS_i_TIMES(X:CFIXED) return CFIXED is
  begin
    return TO_CFIXED(IM(X),-RE(X));
  end;
  
  function X_PLUS_i_TIMES_Y(X,Y:CFIXED;RND:CFIXED) return CFIXED is
  begin
    return TO_CFIXED(RE(X)-IM(Y)+RE(RND),IM(X)+RE(Y)+IM(RND));
  end;
  
  function X_MINUS_i_TIMES_Y(X,Y:CFIXED;RND:CFIXED) return CFIXED is
  begin
    return TO_CFIXED(RE(X)+IM(Y)+RE(RND),IM(X)-RE(Y)+IM(RND));
  end;
  
  function SWAP(X:CFIXED) return CFIXED is
  begin
    return TO_CFIXED(IM(X),RE(X));
  end;
  
  function CONJ(X:CFIXED) return CFIXED is
  begin
    return TO_CFIXED(RE(X),-IM(X));
  end;
  
  function SHIFT_RIGHT(X:CFIXED;N:INTEGER) return CFIXED is
  begin
    return TO_CFIXED(SHIFT_RIGHT(RE(X),N),SHIFT_RIGHT(IM(X),N));
  end;
  
  function SHIFT_LEFT(X:CFIXED;N:INTEGER) return CFIXED is
  begin
    return TO_CFIXED(SHIFT_LEFT(RE(X),N),SHIFT_LEFT(IM(X),N));
  end;

  function TO_CFIXED(R,I:REAL;H,L:INTEGER) return CFIXED is
  begin
    return TO_CFIXED(TO_SFIXED(R,H,L),TO_SFIXED(I,H,L));
  end;
  
  function TO_CFIXED(R,I:REAL;HL:CFIXED) return CFIXED is
  begin
    return TO_CFIXED(R,I,HL'high/2,HL'low/2);
  end;

  function TO_CFIXED(C:COMPLEX;HL:CFIXED) return CFIXED is
  begin
    return TO_CFIXED(C.RE,C.IM,HL);
  end;
  
  function TO_CFIXED(R,I:SFIXED) return CFIXED is
    constant H:INTEGER:=MAX(R'high,I'high);
    constant L:INTEGER:=MIN(R'low,I'low);
    variable C:CFIXED(2*H+1 downto 2*L);
  begin
    C:=CFIXED(RESIZE(I,H,L))&CFIXED(RESIZE(R,H,L));
    return C; -- I&R
  end;

  function ELEMENT(X:CFIXED_VECTOR;K,N:INTEGER) return CFIXED is -- X'low and X'length are always multiples of N
    variable R:CFIXED(X'length/N-1+X'low/N downto X'low/N);
  begin
    R:=CFIXED(X((K+1)*R'length-1+X'low downto K*R'length+X'low));
    return R; -- element K out of N of X
  end;

  procedure vELEMENT(X:out CFIXED_VECTOR;K,N:INTEGER;C:CFIXED) is -- X'low and X'length are always multiples of N
  begin
    X((K+1)*C'length-1+X'low downto K*C'length+X'low):=CFIXED_VECTOR(C); -- element K out of N of X
  end;

  procedure ELEMENT(signal X:out CFIXED_VECTOR;K,N:INTEGER;C:CFIXED) is -- X'low and X'length are always multiples of N
  begin
    X((K+1)*C'length-1+X'low downto K*C'length+X'low)<=CFIXED_VECTOR(C); -- element K out of N of X
  end;

  function TO_COMPLEX(C:CFIXED) return COMPLEX is
    variable R:COMPLEX;
  begin
    R.RE:=TO_REAL(RE(C));
    R.IM:=TO_REAL(IM(C));
    return R;
  end;
  
  function TO_CFIXED_VECTOR(C:COMPLEX_VECTOR;HL:CFIXED) return CFIXED_VECTOR is
    variable R:CFIXED_VECTOR(C'length*(HL'high+1)-1 downto C'length*HL'low);
  begin
    for K in C'range loop
      R((K-C'low+1)*HL'length-1+R'low downto (K-C'low)*HL'length+R'low):=CFIXED_VECTOR(TO_CFIXED(C(K),HL));
    end loop;
    return R;
  end;

  function TO_COMPLEX_VECTOR(C:CFIXED_VECTOR;N:INTEGER) return COMPLEX_VECTOR is
    variable R:COMPLEX_VECTOR(0 to N-1);
  begin
    for K in 0 to N-1 loop
      R(K):=TO_COMPLEX(ELEMENT(C,K,N));
    end loop;
    return R;
  end;

  function "*"(R:REAL;C:COMPLEX_VECTOR) return COMPLEX_VECTOR is
    variable X:COMPLEX_VECTOR(C'range);
  begin
    for K in C'range loop
      X(K):=R*C(K);
    end loop;
    return X;
  end;

  function LOG2(N:INTEGER) return INTEGER is
    variable TEMP:INTEGER;
    variable RESULT:INTEGER;
  begin
    TEMP:=N;
    RESULT:=0;
    while TEMP>1 loop
      RESULT:=RESULT+1;
      TEMP:=(TEMP+1)/2;
    end loop;  
    return RESULT; 
  end; 
end COMPLEX_FIXED_PKG;
