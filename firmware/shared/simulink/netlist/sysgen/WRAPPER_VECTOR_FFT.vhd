-- 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
use work.COMPLEX_FIXED_PKG.all;

entity WRAPPER_VECTOR_FFT is
  generic(SSR:INTEGER:=8;
          N:INTEGER:=512;
          L2N:INTEGER:=9; -- L2N must be set equal to log2(N)!!!
          I_high:INTEGER:=0;
          I_low:INTEGER:=-15;
          W_high:INTEGER:=1;
          W_low:INTEGER:=-17;
          O_high:INTEGER:=0;
          O_low:INTEGER:=-15;
          ROUNDING:BOOLEAN:=TRUE;
          BRAM_THRESHOLD:INTEGER:=512;
          USE_CB:BOOLEAN:=FALSE;
          DSP48E:INTEGER:=2); -- use 1 for DSP48E1 and 2 for DSP48E2
  port(CLK:in STD_LOGIC;
       CE:in STD_LOGIC:='1'; -- not used, for SysGen only
       I:in STD_LOGIC_VECTOR(2*SSR*(I_high-I_low+1)-1 downto 0);
       VI:in STD_LOGIC;
       SI:in STD_LOGIC_VECTOR(L2N-1 downto 0):=(L2N-1 downto 0=>'0'); -- can be left unconnected if internal scaling is not used, must be a (LOG2(N)-1 downto 0) port
       O:out STD_LOGIC_VECTOR(2*SSR*(O_high-O_low+1)-1 downto 0);
       VO:out STD_LOGIC;
       SO:out STD_LOGIC_VECTOR(L2N-1 downto 0)); -- can be left unconnected if internal overflow is not possible, must be a (LOG2(N)-1 downto 0) port
end WRAPPER_VECTOR_FFT;

architecture WRAPPER of WRAPPER_VECTOR_FFT is 
-- resize SFIXED and convert to STD_LOGIC_VECTOR
  function SFIXED_TO_SLV_RESIZE(I:SFIXED;hi,lo:INTEGER) return STD_LOGIC_VECTOR is
    variable O:STD_LOGIC_VECTOR(hi-lo downto 0);
  begin
    for K in O'range loop
      if K<I'low-lo then
        O(K):='0';
      elsif K<I'length then
        O(K):=I(K+lo);
      else
        O(K):=I(I'high);
      end if;
    end loop;
    return O;
  end;
-- convert STD_LOGIC_VECTOR to SFIXED and resize 
  function SLV_TO_SFIXED_RESIZE(I:STD_LOGIC_VECTOR;hi,lo:INTEGER;ofs:INTEGER:=0) return SFIXED is
    variable O:SFIXED(hi downto lo);
  begin
    for K in O'range loop
      if K<I'low+lo+ofs then
        O(K):='0';
      elsif K-lo-ofs<I'length then
        O(K):=I(K-lo-ofs);
      else
        O(K):=I(I'high);
      end if;
    end loop;
    return O;
  end;

  signal II:CFIXED_VECTOR(SSR*2*(I_high+1)-1 downto SSR*2*I_low);
  signal VII:BOOLEAN;
  signal SII:UNSIGNED(SI'range);
  signal OO:CFIXED_VECTOR(SSR*2*(O_high+1)-1 downto SSR*2*O_low);
  signal VOO:BOOLEAN;
  signal SOO:UNSIGNED(SO'range);
begin
  II<=CFIXED_VECTOR(I);
  VII<=VI='1';
  SII<=UNSIGNED(SI);
  pf:entity work.VECTOR_FFT generic map(SSR=>SSR,
                                              N=>N,
                                              I_high=>I_high,
                                              I_low=>I_low,
                                              W_high=>W_high,
                                              W_low=>W_low,
                                              O_high=>O_high,
                                              O_low=>O_low,
                                              ROUNDING=>ROUNDING,
                                              BRAM_THRESHOLD=>BRAM_THRESHOLD,
                                              USE_CB=>USE_CB,
                                              DSP48E=>DSP48E)        -- 1 for DSP48E1, 2 for DSP48E2
                                  port map(CLK=>CLK,
                                           I=>II,
                                           VI=>VII,
                                           SI=>SII,
                                           O=>OO,
                                           VO=>VOO,
                                           SO=>SOO); 
  O<=STD_LOGIC_VECTOR(OO);
  VO<='1' when VOO else '0';
  SO<=STD_LOGIC_VECTOR(SOO);
end WRAPPER;
