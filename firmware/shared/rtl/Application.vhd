-------------------------------------------------------------------------------
-- Company    : SLAC National Accelerator Laboratory
-------------------------------------------------------------------------------
-- Description: Application Module
-------------------------------------------------------------------------------
-- This file is part of 'SPACE SMURF RFSOC'.
-- It is subject to the license terms in the LICENSE.txt file found in the
-- top-level directory of this distribution and at:
--    https://confluence.slac.stanford.edu/display/ppareg/LICENSE.html.
-- No part of 'SPACE SMURF RFSOC', including this file,
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

entity Application is
   generic (
      TPD_G            : time := 1 ns;
      AXIL_BASE_ADDR_G : slv(31 downto 0));
   port (
      -- DMA Interface (dmaClk domain)
      dmaClk          : in  sl;
      dmaRst          : in  sl;
      dmaIbMasters    : out AxiStreamMasterArray(1 downto 0);
      dmaIbSlaves     : in  AxiStreamSlaveArray(1 downto 0);
      -- ADC/DAC Interface (dspClk domain)
      dspClk          : in  sl;
      dspRst          : in  sl;
      dspAdc          : in  Slv256Array(7 downto 0);
      dspDac          : out Slv256Array(7 downto 0);
      -- AXI-Lite Interface (axilClk domain)
      axilClk         : in  sl;
      axilRst         : in  sl;
      axilWriteMaster : in  AxiLiteWriteMasterType;
      axilWriteSlave  : out AxiLiteWriteSlaveType;
      axilReadMaster  : in  AxiLiteReadMasterType;
      axilReadSlave   : out AxiLiteReadSlaveType);
end Application;

architecture mapping of Application is

   constant NUM_ADC_CH_C     : positive := 8;
   constant NUM_DAC_CH_C     : positive := 8;
   constant RAM_ADDR_WIDTH_C : positive := 10;

   constant RING_INDEX_C       : natural := 0;
   constant DAC_SIG_INDEX_C    : natural := 1;
   constant DSP_CORE_INDEX_C   : natural := 2;
   constant ADC_SIG_INDEX_C    : natural := 3;
   constant NUM_AXIL_MASTERS_C : natural := 4;

   constant AXIL_CONFIG_C : AxiLiteCrossbarMasterConfigArray(NUM_AXIL_MASTERS_C-1 downto 0) := genAxiLiteConfig(NUM_AXIL_MASTERS_C, AXIL_BASE_ADDR_G, 28, 24);

   signal axilReadMasters  : AxiLiteReadMasterArray(NUM_AXIL_MASTERS_C-1 downto 0);
   signal axilReadSlaves   : AxiLiteReadSlaveArray(NUM_AXIL_MASTERS_C-1 downto 0)  := (others => AXI_LITE_READ_SLAVE_EMPTY_DECERR_C);
   signal axilWriteMasters : AxiLiteWriteMasterArray(NUM_AXIL_MASTERS_C-1 downto 0);
   signal axilWriteSlaves  : AxiLiteWriteSlaveArray(NUM_AXIL_MASTERS_C-1 downto 0) := (others => AXI_LITE_WRITE_SLAVE_EMPTY_DECERR_C);

   signal adc : Slv256Array(7 downto 0) := (others => (others => '0'));
   signal dac : Slv256Array(7 downto 0) := (others => (others => '0'));

   signal dspOut : Slv256Array(7 downto 0) := (others => (others => '0'));

begin

   U_XBAR : entity surf.AxiLiteCrossbar
      generic map (
         TPD_G              => TPD_G,
         NUM_SLAVE_SLOTS_G  => 1,
         NUM_MASTER_SLOTS_G => NUM_AXIL_MASTERS_C,
         MASTERS_CONFIG_G   => AXIL_CONFIG_C)
      port map (
         axiClk              => axilClk,
         axiClkRst           => axilRst,
         sAxiWriteMasters(0) => axilWriteMaster,
         sAxiWriteSlaves(0)  => axilWriteSlave,
         sAxiReadMasters(0)  => axilReadMaster,
         sAxiReadSlaves(0)   => axilReadSlave,
         mAxiWriteMasters    => axilWriteMasters,
         mAxiWriteSlaves     => axilWriteSlaves,
         mAxiReadMasters     => axilReadMasters,
         mAxiReadSlaves      => axilReadSlaves);

   U_AdcSigGen : entity axi_soc_ultra_plus_core.DacSigGen
      generic map (
         TPD_G              => TPD_G,
         NUM_CH_G           => 8,
         RAM_ADDR_WIDTH_G   => RAM_ADDR_WIDTH_C,
         SAMPLE_PER_CYCLE_G => 16,
         AXIL_BASE_ADDR_G   => AXIL_CONFIG_C(ADC_SIG_INDEX_C).baseAddr)
      port map (
         -- DAC Interface (dspClk domain)
         dspClk          => dspClk,
         dspRst          => dspRst,
         dspDacIn        => dspAdc,
         dspDacOut       => adc,
         -- AXI-Lite Interface (axilClk domain)
         axilClk         => axilClk,
         axilRst         => axilRst,
         axilReadMaster  => axilReadMasters(ADC_SIG_INDEX_C),
         axilReadSlave   => axilReadSlaves(ADC_SIG_INDEX_C),
         axilWriteMaster => axilWriteMasters(ADC_SIG_INDEX_C),
         axilWriteSlave  => axilWriteSlaves(ADC_SIG_INDEX_C));

   U_DspCoreWrapper : entity work.DspCoreWrapper
      generic map (
         TPD_G            => TPD_G,
         AXIL_BASE_ADDR_G => AXIL_CONFIG_C(DSP_CORE_INDEX_C).baseAddr)
      port map (
         -- DMA Interface (dmaClk domain)
         dmaClk          => dmaClk,
         dmaRst          => dmaRst,
         dmaIbMaster     => dmaIbMasters(1),
         dmaIbSlave      => dmaIbSlaves(1),
         -- ADC/DAC Interface (dspClk domain)
         dspClk          => dspClk,
         dspRst          => dspRst,
         dspAdc          => adc,
         dspDac          => dspOut,
         -- AXI-Lite Interface (axilClk domain)
         axilClk         => axilClk,
         axilRst         => axilRst,
         axilReadMaster  => axilReadMasters(DSP_CORE_INDEX_C),
         axilReadSlave   => axilReadSlaves(DSP_CORE_INDEX_C),
         axilWriteMaster => axilWriteMasters(DSP_CORE_INDEX_C),
         axilWriteSlave  => axilWriteSlaves(DSP_CORE_INDEX_C));

   U_DacSigGen : entity axi_soc_ultra_plus_core.DacSigGen
      generic map (
         TPD_G              => TPD_G,
         NUM_CH_G           => 8,
         RAM_ADDR_WIDTH_G   => RAM_ADDR_WIDTH_C,
         SAMPLE_PER_CYCLE_G => 16,
         AXIL_BASE_ADDR_G   => AXIL_CONFIG_C(DAC_SIG_INDEX_C).baseAddr)
      port map (
         -- DAC Interface (dspClk domain)
         dspClk          => dspClk,
         dspRst          => dspRst,
         dspDacIn        => dspOut,
         dspDacOut       => dac,
         -- AXI-Lite Interface (axilClk domain)
         axilClk         => axilClk,
         axilRst         => axilRst,
         axilReadMaster  => axilReadMasters(DAC_SIG_INDEX_C),
         axilReadSlave   => axilReadSlaves(DAC_SIG_INDEX_C),
         axilWriteMaster => axilWriteMasters(DAC_SIG_INDEX_C),
         axilWriteSlave  => axilWriteSlaves(DAC_SIG_INDEX_C));

   U_AppRingBuffer : entity axi_soc_ultra_plus_core.AppRingBuffer
      generic map (
         TPD_G            => TPD_G,
         EN_ADC_BUFF_G    => true,
         EN_DAC_BUFF_G    => true,
         NUM_ADC_CH_G     => NUM_ADC_CH_C,
         NUM_DAC_CH_G     => NUM_DAC_CH_C,
         RAM_ADDR_WIDTH_G => RAM_ADDR_WIDTH_C,
         AXIL_BASE_ADDR_G => AXIL_CONFIG_C(RING_INDEX_C).baseAddr)
      port map (
         -- DMA Interface (dmaClk domain)
         dmaClk          => dmaClk,
         dmaRst          => dmaRst,
         dmaIbMaster     => dmaIbMasters(0),
         dmaIbSlave      => dmaIbSlaves(0),
         -- ADC/DAC Interface (dspClk domain)
         dspClk          => dspClk,
         dspRst          => dspRst,
         dspAdc          => adc,
         dspDac          => dac,
         -- AXI-Lite Interface (axilClk domain)
         axilClk         => axilClk,
         axilRst         => axilRst,
         axilReadMaster  => axilReadMasters(RING_INDEX_C),
         axilReadSlave   => axilReadSlaves(RING_INDEX_C),
         axilWriteMaster => axilWriteMasters(RING_INDEX_C),
         axilWriteSlave  => axilWriteSlaves(RING_INDEX_C));

   dspDac <= dac;

end mapping;
