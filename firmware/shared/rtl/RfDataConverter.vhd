-------------------------------------------------------------------------------
-- Company    : SLAC National Accelerator Laboratory
-------------------------------------------------------------------------------
-- Description: RfDataConverter Module
-------------------------------------------------------------------------------
-- This file is part of 'Simple-ZCU208-Example'.
-- It is subject to the license terms in the LICENSE.txt file found in the
-- top-level directory of this distribution and at:
--    https://confluence.slac.stanford.edu/display/ppareg/LICENSE.html.
-- No part of 'Simple-ZCU208-Example', including this file,
-- may be copied, modified, propagated, or distributed except according to
-- the terms contained in the LICENSE.txt file.
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

library surf;
use surf.StdRtlPkg.all;
use surf.AxiStreamPkg.all;
use surf.AxiLitePkg.all;
use surf.SsiPkg.all;

library work;
use work.AppPkg.all;

library axi_soc_ultra_plus_core;
use axi_soc_ultra_plus_core.AxiSocUltraPlusPkg.all;

entity RfDataConverter is
   generic (
      TPD_G            : time := 1 ns;
      AXIL_BASE_ADDR_G : slv(31 downto 0));
   port (
      -- RF DATA CONVERTER Ports
      adcClkP         : in  sl;
      adcClkN         : in  sl;
      adcP            : in  slv(7 downto 0);
      adcN            : in  slv(7 downto 0);
      dacClkP         : in  sl;
      dacClkN         : in  sl;
      dacP            : out slv(7 downto 0);
      dacN            : out slv(7 downto 0);
      sysRefP         : in  sl;
      sysRefN         : in  sl;
      -- ADC/DAC Interface (dspClk domain)
      dspClk          : out sl;
      dspRst          : out sl;
      dspAdc          : out Slv256Array(7 downto 0);
      dspDac          : in  Slv256Array(7 downto 0);
      -- AXI-Lite Interface (axilClk domain)
      axilClk         : in  sl;
      axilRst         : in  sl;
      axilWriteMaster : in  AxiLiteWriteMasterType;
      axilWriteSlave  : out AxiLiteWriteSlaveType;
      axilReadMaster  : in  AxiLiteReadMasterType;
      axilReadSlave   : out AxiLiteReadSlaveType);
end RfDataConverter;

architecture mapping of RfDataConverter is

   component RfDataConverterIpCore
      port (
         adc2_clk_p      : in  std_logic;
         adc2_clk_n      : in  std_logic;
         clk_adc0        : out std_logic;
         clk_adc1        : out std_logic;
         clk_adc2        : out std_logic;
         clk_adc3        : out std_logic;
         dac0_clk_p      : in  std_logic;
         dac0_clk_n      : in  std_logic;
         clk_dac0        : out std_logic;
         clk_dac1        : out std_logic;
         clk_dac2        : out std_logic;
         clk_dac3        : out std_logic;
         s_axi_aclk      : in  std_logic;
         s_axi_aresetn   : in  std_logic;
         s_axi_awaddr    : in  std_logic_vector(17 downto 0);
         s_axi_awvalid   : in  std_logic;
         s_axi_awready   : out std_logic;
         s_axi_wdata     : in  std_logic_vector(31 downto 0);
         s_axi_wstrb     : in  std_logic_vector(3 downto 0);
         s_axi_wvalid    : in  std_logic;
         s_axi_wready    : out std_logic;
         s_axi_bresp     : out std_logic_vector(1 downto 0);
         s_axi_bvalid    : out std_logic;
         s_axi_bready    : in  std_logic;
         s_axi_araddr    : in  std_logic_vector(17 downto 0);
         s_axi_arvalid   : in  std_logic;
         s_axi_arready   : out std_logic;
         s_axi_rdata     : out std_logic_vector(31 downto 0);
         s_axi_rresp     : out std_logic_vector(1 downto 0);
         s_axi_rvalid    : out std_logic;
         s_axi_rready    : in  std_logic;
         irq             : out std_logic;
         sysref_in_p     : in  std_logic;
         sysref_in_n     : in  std_logic;
         vin0_01_p       : in  std_logic;
         vin0_01_n       : in  std_logic;
         vin0_23_p       : in  std_logic;
         vin0_23_n       : in  std_logic;
         vin1_01_p       : in  std_logic;
         vin1_01_n       : in  std_logic;
         vin1_23_p       : in  std_logic;
         vin1_23_n       : in  std_logic;
         vin2_01_p       : in  std_logic;
         vin2_01_n       : in  std_logic;
         vin2_23_p       : in  std_logic;
         vin2_23_n       : in  std_logic;
         vin3_01_p       : in  std_logic;
         vin3_01_n       : in  std_logic;
         vin3_23_p       : in  std_logic;
         vin3_23_n       : in  std_logic;
         vout00_p        : out std_logic;
         vout00_n        : out std_logic;
         vout02_p        : out std_logic;
         vout02_n        : out std_logic;
         vout10_p        : out std_logic;
         vout10_n        : out std_logic;
         vout12_p        : out std_logic;
         vout12_n        : out std_logic;
         vout20_p        : out std_logic;
         vout20_n        : out std_logic;
         vout22_p        : out std_logic;
         vout22_n        : out std_logic;
         vout30_p        : out std_logic;
         vout30_n        : out std_logic;
         vout32_p        : out std_logic;
         vout32_n        : out std_logic;
         m0_axis_aresetn : in  std_logic;
         m0_axis_aclk    : in  std_logic;
         m00_axis_tdata  : out std_logic_vector(191 downto 0);
         m00_axis_tvalid : out std_logic;
         m00_axis_tready : in  std_logic;
         m02_axis_tdata  : out std_logic_vector(191 downto 0);
         m02_axis_tvalid : out std_logic;
         m02_axis_tready : in  std_logic;
         m1_axis_aresetn : in  std_logic;
         m1_axis_aclk    : in  std_logic;
         m10_axis_tdata  : out std_logic_vector(191 downto 0);
         m10_axis_tvalid : out std_logic;
         m10_axis_tready : in  std_logic;
         m12_axis_tdata  : out std_logic_vector(191 downto 0);
         m12_axis_tvalid : out std_logic;
         m12_axis_tready : in  std_logic;
         m2_axis_aresetn : in  std_logic;
         m2_axis_aclk    : in  std_logic;
         m20_axis_tdata  : out std_logic_vector(191 downto 0);
         m20_axis_tvalid : out std_logic;
         m20_axis_tready : in  std_logic;
         m22_axis_tdata  : out std_logic_vector(191 downto 0);
         m22_axis_tvalid : out std_logic;
         m22_axis_tready : in  std_logic;
         m3_axis_aresetn : in  std_logic;
         m3_axis_aclk    : in  std_logic;
         m30_axis_tdata  : out std_logic_vector(191 downto 0);
         m30_axis_tvalid : out std_logic;
         m30_axis_tready : in  std_logic;
         m32_axis_tdata  : out std_logic_vector(191 downto 0);
         m32_axis_tvalid : out std_logic;
         m32_axis_tready : in  std_logic;
         s0_axis_aresetn : in  std_logic;
         s0_axis_aclk    : in  std_logic;
         s00_axis_tdata  : in  std_logic_vector(255 downto 0);
         s00_axis_tvalid : in  std_logic;
         s00_axis_tready : out std_logic;
         s02_axis_tdata  : in  std_logic_vector(255 downto 0);
         s02_axis_tvalid : in  std_logic;
         s02_axis_tready : out std_logic;
         s1_axis_aresetn : in  std_logic;
         s1_axis_aclk    : in  std_logic;
         s10_axis_tdata  : in  std_logic_vector(255 downto 0);
         s10_axis_tvalid : in  std_logic;
         s10_axis_tready : out std_logic;
         s12_axis_tdata  : in  std_logic_vector(255 downto 0);
         s12_axis_tvalid : in  std_logic;
         s12_axis_tready : out std_logic;
         s2_axis_aresetn : in  std_logic;
         s2_axis_aclk    : in  std_logic;
         s20_axis_tdata  : in  std_logic_vector(255 downto 0);
         s20_axis_tvalid : in  std_logic;
         s20_axis_tready : out std_logic;
         s22_axis_tdata  : in  std_logic_vector(255 downto 0);
         s22_axis_tvalid : in  std_logic;
         s22_axis_tready : out std_logic;
         s3_axis_aresetn : in  std_logic;
         s3_axis_aclk    : in  std_logic;
         s30_axis_tdata  : in  std_logic_vector(255 downto 0);
         s30_axis_tvalid : in  std_logic;
         s30_axis_tready : out std_logic;
         s32_axis_tdata  : in  std_logic_vector(255 downto 0);
         s32_axis_tvalid : in  std_logic;
         s32_axis_tready : out std_logic
         );
   end component;

   signal rfdcAdc   : Slv192Array(7 downto 0) := (others => (others => '0'));
   signal rfdcValid : slv(7 downto 0)         := (others => '0');
   signal rfdcDac   : Slv256Array(7 downto 0) := (others => (others => '0'));

   signal adc      : Slv192Array(7 downto 0) := (others => (others => '0'));
   signal adcValid : slv(7 downto 0)         := (others => '0');

   signal refClk   : sl := '0';
   signal axilRstL : sl := '0';

   signal rfdcClk  : sl := '0';
   signal rfdcRst  : sl := '1';
   signal rfdcRstL : sl := '0';

   signal dspClock  : sl := '0';
   signal dspReset  : sl := '1';
   signal dspResetL : sl := '0';

begin

   U_IpCore : RfDataConverterIpCore
      port map (
         -- Clock Ports
         adc2_clk_p      => adcClkP,
         adc2_clk_n      => adcClkN,
         clk_adc0        => refClk,
         clk_adc1        => open,
         clk_adc2        => open,
         clk_adc3        => open,
         dac0_clk_p      => dacClkP,
         dac0_clk_n      => dacClkN,
         clk_dac0        => open,
         clk_dac1        => open,
         clk_dac2        => open,
         clk_dac3        => open,
         -- AXI-Lite Ports
         s_axi_aclk      => axilClk,
         s_axi_aresetn   => axilRstL,
         s_axi_awaddr    => axilWriteMaster.awaddr(17 downto 0),
         s_axi_awvalid   => axilWriteMaster.awvalid,
         s_axi_awready   => axilWriteSlave.awready,
         s_axi_wdata     => axilWriteMaster.wdata,
         s_axi_wstrb     => axilWriteMaster.wstrb,
         s_axi_wvalid    => axilWriteMaster.wvalid,
         s_axi_wready    => axilWriteSlave.wready,
         s_axi_bresp     => axilWriteSlave.bresp,
         s_axi_bvalid    => axilWriteSlave.bvalid,
         s_axi_bready    => axilWriteMaster.bready,
         s_axi_araddr    => axilReadMaster.araddr(17 downto 0),
         s_axi_arvalid   => axilReadMaster.arvalid,
         s_axi_arready   => axilReadSlave.arready,
         s_axi_rdata     => axilReadSlave.rdata,
         s_axi_rresp     => axilReadSlave.rresp,
         s_axi_rvalid    => axilReadSlave.rvalid,
         s_axi_rready    => axilReadMaster.rready,
         -- Misc. Ports
         irq             => open,
         sysref_in_p     => sysRefP,
         sysref_in_n     => sysRefN,
         -- ADC Ports
         vin0_01_p       => adcP(0),
         vin0_01_n       => adcN(0),
         vin0_23_p       => adcP(1),
         vin0_23_n       => adcN(1),
         vin1_01_p       => adcP(2),
         vin1_01_n       => adcN(2),
         vin1_23_p       => adcP(3),
         vin1_23_n       => adcN(3),
         vin2_01_p       => adcP(4),
         vin2_01_n       => adcN(4),
         vin2_23_p       => adcP(5),
         vin2_23_n       => adcN(5),
         vin3_01_p       => adcP(6),
         vin3_01_n       => adcN(6),
         vin3_23_p       => adcP(7),
         vin3_23_n       => adcN(7),
         -- DAC Ports
         vout00_p        => dacP(0),
         vout00_n        => dacN(0),
         vout02_p        => dacP(1),
         vout02_n        => dacN(1),
         vout10_p        => dacP(2),
         vout10_n        => dacN(2),
         vout12_p        => dacP(3),
         vout12_n        => dacN(3),
         vout20_p        => dacP(4),
         vout20_n        => dacN(4),
         vout22_p        => dacP(5),
         vout22_n        => dacN(5),
         vout30_p        => dacP(6),
         vout30_n        => dacN(6),
         vout32_p        => dacP(7),
         vout32_n        => dacN(7),
         -- ADC[1:0] AXI Stream Interface
         m0_axis_aresetn => rfdcRstL,
         m0_axis_aclk    => rfdcClk,
         m00_axis_tdata  => rfdcAdc(0),
         m00_axis_tvalid => rfdcValid(0),
         m00_axis_tready => '1',
         m02_axis_tdata  => rfdcAdc(1),
         m02_axis_tvalid => rfdcValid(1),
         m02_axis_tready => '1',
         -- ADC[3:2] AXI Stream Interface
         m1_axis_aresetn => rfdcRstL,
         m1_axis_aclk    => rfdcClk,
         m10_axis_tdata  => rfdcAdc(2),
         m10_axis_tvalid => rfdcValid(2),
         m10_axis_tready => '1',
         m12_axis_tdata  => rfdcAdc(3),
         m12_axis_tvalid => rfdcValid(3),
         m12_axis_tready => '1',
         -- ADC[5:4] AXI Stream Interface
         m2_axis_aresetn => rfdcRstL,
         m2_axis_aclk    => rfdcClk,
         m20_axis_tdata  => rfdcAdc(4),
         m20_axis_tvalid => rfdcValid(4),
         m20_axis_tready => '1',
         m22_axis_tdata  => rfdcAdc(5),
         m22_axis_tvalid => rfdcValid(5),
         m22_axis_tready => '1',
         -- ADC[7:6] AXI Stream Interface
         m3_axis_aresetn => rfdcRstL,
         m3_axis_aclk    => rfdcClk,
         m30_axis_tdata  => rfdcAdc(6),
         m30_axis_tvalid => rfdcValid(6),
         m30_axis_tready => '1',
         m32_axis_tdata  => rfdcAdc(7),
         m32_axis_tvalid => rfdcValid(7),
         m32_axis_tready => '1',
         -- DAC[1:0] AXI Stream Interface
         s0_axis_aresetn => dspResetL,
         s0_axis_aclk    => dspClock,
         s00_axis_tdata  => rfdcDac(0),
         s00_axis_tvalid => '1',
         s00_axis_tready => open,
         s02_axis_tdata  => rfdcDac(1),
         s02_axis_tvalid => '1',
         s02_axis_tready => open,
         -- DAC[3:2] AXI Stream Interface
         s1_axis_aresetn => dspResetL,
         s1_axis_aclk    => dspClock,
         s10_axis_tdata  => rfdcDac(2),
         s10_axis_tvalid => '1',
         s10_axis_tready => open,
         s12_axis_tdata  => rfdcDac(3),
         s12_axis_tvalid => '1',
         s12_axis_tready => open,
         -- DAC[5:4] AXI Stream Interface
         s2_axis_aresetn => dspResetL,
         s2_axis_aclk    => dspClock,
         s20_axis_tdata  => rfdcDac(4),
         s20_axis_tvalid => '1',
         s20_axis_tready => open,
         s22_axis_tdata  => rfdcDac(5),
         s22_axis_tvalid => '1',
         s22_axis_tready => open,
         -- DAC[7:6] AXI Stream Interface
         s3_axis_aresetn => dspResetL,
         s3_axis_aclk    => dspClock,
         s30_axis_tdata  => rfdcDac(6),
         s30_axis_tvalid => '1',
         s30_axis_tready => open,
         s32_axis_tdata  => rfdcDac(7),
         s32_axis_tvalid => '1',
         s32_axis_tready => open);

   U_Pll : entity surf.ClockManagerUltraScale
      generic map(
         TPD_G             => TPD_G,
         TYPE_G            => "PLL",
         INPUT_BUFG_G      => false,
         FB_BUFG_G         => true,
         RST_IN_POLARITY_G => '1',
         NUM_CLOCKS_G      => 2,
         -- MMCM attributes
         CLKIN_PERIOD_G    => 3.2,      -- 312.5 MHz
         CLKFBOUT_MULT_G   => 4,        -- 1.25 GHz = 4 x 312.5 MHz
         CLKOUT0_DIVIDE_G  => 3,        -- 416.667 MHz = 1.25GHz/3
         CLKOUT1_DIVIDE_G  => 4)        -- 312.5 MHz = 1.25GHz/4
      port map(
         -- Clock Input
         clkIn     => refClk,
         rstIn     => axilRst,
         -- Clock Outputs
         clkOut(0) => rfdcClk,
         clkOut(1) => dspClock,
         -- Reset Outputs
         rstOut(0) => rfdcRst,
         rstOut(1) => dspReset);

   axilRstL  <= not(axilRst);
   rfdcRstL  <= not(rfdcRst);
   dspResetL <= not(dspReset);

   dspClk <= dspClock;
   dspRst <= dspReset;

   process(rfdcClk)
   begin
      -- Help with making timing
      if rising_edge(rfdcClk) then
         adc      <= rfdcAdc   after TPD_G;
         adcValid <= rfdcValid after TPD_G;
      end if;
   end process;

   process(dspClock)
   begin
      -- Help with making timing
      if rising_edge(dspClock) then
         rfdcDac <= dspDac after TPD_G;
      end if;
   end process;

   GEN_VEC :
   for i in 7 downto 0 generate

      --------------
      -- ADC Gearbox
      --------------
      U_Gearbox_ADC : entity surf.AsyncGearbox
         generic map (
            TPD_G              => TPD_G,
            SLAVE_WIDTH_G      => 192,
            MASTER_WIDTH_G     => 256,
            EN_EXT_CTRL_G      => false,
            -- Async FIFO generics
            FIFO_MEMORY_TYPE_G => "block",
            FIFO_ADDR_WIDTH_G  => 8)
         port map (
            -- Slave Interface
            slaveClk    => rfdcClk,
            slaveRst    => rfdcRst,
            slaveData   => adc(i),
            slaveValid  => adcValid(i),
            slaveReady  => open,
            -- Master Interface
            masterClk   => dspClock,
            masterRst   => dspReset,
            masterData  => dspAdc(i),
            masterValid => open,
            masterReady => '1');

   end generate GEN_VEC;

end mapping;
