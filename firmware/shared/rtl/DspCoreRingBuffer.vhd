-------------------------------------------------------------------------------
-- Company    : SLAC National Accelerator Laboratory
-------------------------------------------------------------------------------
-- Description: DspCoreRingBuffer Module
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
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

library surf;
use surf.StdRtlPkg.all;
use surf.AxiStreamPkg.all;
use surf.AxiLitePkg.all;
use surf.SsiPkg.all;

library work;
use work.AppPkg.all;

library axi_soc_ultra_plus_core;
use axi_soc_ultra_plus_core.AxiSocUltraPlusPkg.all;

entity DspCoreRingBuffer is
   generic (
      TPD_G            : time := 1 ns;
      AXIL_BASE_ADDR_G : slv(31 downto 0));
   port (
      -- DMA Interface (dmaClk domain)
      dmaClk          : in  sl;
      dmaRst          : in  sl;
      dmaIbMaster     : out AxiStreamMasterType;
      dmaIbSlave      : in  AxiStreamSlaveType;
      -- Debug Interface (dspClk domain)
      dspClk          : in  sl;
      dspRst          : in  sl;
      rstDspCore      : in  sl;
      startRxMarker   : in  sl;
      debugRxAddr     : in  slv(10 downto 0);
      freqRxBandVec   : in  Slv256Array(3 downto 0);
      startTxMarker   : in  sl;
      debugTxAddr     : in  slv(10 downto 0);
      freqTxBandVec   : in  Slv256Array(3 downto 0);
      -- AXI-Lite Interface (axilClk domain)
      axilClk         : in  sl;
      axilRst         : in  sl;
      axilWriteMaster : in  AxiLiteWriteMasterType;
      axilWriteSlave  : out AxiLiteWriteSlaveType;
      axilReadMaster  : in  AxiLiteReadMasterType;
      axilReadSlave   : out AxiLiteReadSlaveType);
end DspCoreRingBuffer;

architecture mapping of DspCoreRingBuffer is

   constant NUM_AXIL_MASTERS_C : natural := 3;

   constant AXIL_CONFIG_C : AxiLiteCrossbarMasterConfigArray(NUM_AXIL_MASTERS_C-1 downto 0) := genAxiLiteConfig(NUM_AXIL_MASTERS_C, AXIL_BASE_ADDR_G, 20, 16);

   signal axilReadMasters  : AxiLiteReadMasterArray(NUM_AXIL_MASTERS_C-1 downto 0);
   signal axilReadSlaves   : AxiLiteReadSlaveArray(NUM_AXIL_MASTERS_C-1 downto 0)  := (others => AXI_LITE_READ_SLAVE_EMPTY_DECERR_C);
   signal axilWriteMasters : AxiLiteWriteMasterArray(NUM_AXIL_MASTERS_C-1 downto 0);
   signal axilWriteSlaves  : AxiLiteWriteSlaveArray(NUM_AXIL_MASTERS_C-1 downto 0) := (others => AXI_LITE_WRITE_SLAVE_EMPTY_DECERR_C);

   signal axisMasters : AxiStreamMasterArray(1 downto 0) := (others => AXI_STREAM_MASTER_INIT_C);
   signal axisSlaves  : AxiStreamSlaveArray(1 downto 0)  := (others => AXI_STREAM_SLAVE_FORCE_C);

   signal axisMaster : AxiStreamMasterType := AXI_STREAM_MASTER_INIT_C;
   signal axisSlave  : AxiStreamSlaveType  := AXI_STREAM_SLAVE_FORCE_C;

   signal debugRxMarker : sl               := '0';
   signal debugRxValid  : sl               := '0';
   signal debugRxValue  : slv(31 downto 0) := (others => '0');

   signal debugTxMarker : sl               := '0';
   signal debugTxValid  : sl               := '0';
   signal debugTxValue  : slv(31 downto 0) := (others => '0');

   signal debugRxBandDly : Slv256Array(3 downto 0) := (others => (others => '0'));
   signal debugTxBandDly : Slv256Array(3 downto 0) := (others => (others => '0'));

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

   U_debugRxMarker : entity surf.SlvDelay
      generic map (
         TPD_G        => TPD_G,
         SRL_EN_G     => false,
         REG_OUTPUT_G => false,
         DELAY_G      => 63,
         WIDTH_G      => 1)
      port map (
         clk     => dspClk,
         rst     => rstDspCore,
         delay   => debugRxAddr(10 downto 5),
         din(0)  => startRxMarker,
         dout(0) => debugRxMarker);

   U_debugTxMarker : entity surf.SlvDelay
      generic map (
         TPD_G        => TPD_G,
         SRL_EN_G     => false,
         REG_OUTPUT_G => false,
         DELAY_G      => 63,
         WIDTH_G      => 1)
      port map (
         clk     => dspClk,
         rst     => rstDspCore,
         delay   => debugTxAddr(10 downto 5),
         din(0)  => startTxMarker,
         dout(0) => debugTxMarker);

   process(dspClk)
      variable idx : natural;
   begin
      if rising_edge(dspClk) then
         -- Add 1 cycle delay to phase align with debug markers
         debugRxBandDly <= freqRxBandVec after TPD_G;
         debugTxBandDly <= freqTxBandVec after TPD_G;
      end if;
   end process;

   process(debugRxAddr, dspClk)
      variable idx : natural;
   begin
      idx := conv_integer(debugRxAddr(4 downto 1));
      if rising_edge(dspClk) then
         debugRxValid <= debugRxMarker after TPD_G;
         -- Check of even channel
         if (debugRxAddr(0) = '0') then
            debugRxValue(15 downto 0)  <= debugRxBandDly(0)(16*idx+15 downto 16*idx) after TPD_G;
            debugRxValue(31 downto 16) <= debugRxBandDly(1)(16*idx+15 downto 16*idx) after TPD_G;
         -- Else odd channel
         else
            debugRxValue(15 downto 0)  <= debugRxBandDly(2)(16*idx+15 downto 16*idx) after TPD_G;
            debugRxValue(31 downto 16) <= debugRxBandDly(3)(16*idx+15 downto 16*idx) after TPD_G;
         end if;
      end if;
   end process;

   process(debugTxAddr, dspClk)
      variable idx : natural;
   begin
      idx := conv_integer(debugTxAddr(4 downto 1));
      if rising_edge(dspClk) then
         debugTxValid <= debugTxMarker after TPD_G;
         -- Check of even channel
         if (debugTxAddr(0) = '0') then
            debugTxValue(15 downto 0)  <= debugTxBandDly(0)(16*idx+15 downto 16*idx) after TPD_G;
            debugTxValue(31 downto 16) <= debugTxBandDly(1)(16*idx+15 downto 16*idx) after TPD_G;
         -- Else odd channel
         else
            debugTxValue(15 downto 0)  <= debugTxBandDly(2)(16*idx+15 downto 16*idx) after TPD_G;
            debugTxValue(31 downto 16) <= debugTxBandDly(3)(16*idx+15 downto 16*idx) after TPD_G;
         end if;
      end if;
   end process;

   U_RxRingBuffer : entity surf.AxiStreamRingBuffer
      generic map (
         TPD_G               => TPD_G,
         SYNTH_MODE_G        => "xpm",
         DATA_BYTES_G        => (32/8),
         RAM_ADDR_WIDTH_G    => 10,
         AXI_STREAM_CONFIG_G => DMA_AXIS_CONFIG_C)
      port map (
         -- Data to store in ring buffer (dataClk domain)
         dataClk         => dspClk,
         dataValid       => debugRxValid,
         dataValue       => debugRxValue,
         -- AXI-Lite interface (axilClk domain)
         axilClk         => axilClk,
         axilRst         => axilRst,
         axilReadMaster  => axilReadMasters(0),
         axilReadSlave   => axilReadSlaves(0),
         axilWriteMaster => axilWriteMasters(0),
         axilWriteSlave  => axilWriteSlaves(0),
         -- AXI-Stream Interface (axilClk domain)
         axisClk         => dmaClk,
         axisRst         => dmaRst,
         axisMaster      => axisMasters(0),
         axisSlave       => axisSlaves(0));

   U_TxRingBuffer : entity surf.AxiStreamRingBuffer
      generic map (
         TPD_G               => TPD_G,
         SYNTH_MODE_G        => "xpm",
         DATA_BYTES_G        => (32/8),
         RAM_ADDR_WIDTH_G    => 10,
         AXI_STREAM_CONFIG_G => DMA_AXIS_CONFIG_C)
      port map (
         -- Data to store in ring buffer (dataClk domain)
         dataClk         => dspClk,
         dataValid       => debugTxValid,
         dataValue       => debugTxValue,
         -- AXI-Lite interface (axilClk domain)
         axilClk         => axilClk,
         axilRst         => axilRst,
         axilReadMaster  => axilReadMasters(1),
         axilReadSlave   => axilReadSlaves(1),
         axilWriteMaster => axilWriteMasters(1),
         axilWriteSlave  => axilWriteSlaves(1),
         -- AXI-Stream Interface (axilClk domain)
         axisClk         => dmaClk,
         axisRst         => dmaRst,
         axisMaster      => axisMasters(1),
         axisSlave       => axisSlaves(1));

   U_Mux : entity surf.AxiStreamMux
      generic map (
         TPD_G         => TPD_G,
         NUM_SLAVES_G  => 2,
         PIPE_STAGES_G => 1)
      port map (
         -- Clock and reset
         axisClk      => dmaClk,
         axisRst      => dmaRst,
         -- Slaves
         sAxisMasters => axisMasters,
         sAxisSlaves  => axisSlaves,
         -- Master
         mAxisMaster  => axisMaster,
         mAxisSlave   => axisSlave);

   U_RateLimiter : entity surf.AxiStreamFrameRateLimiter
      generic map (
         TPD_G              => TPD_G,
         AXIS_CLK_FREQ_G    => DMA_CLK_FREQ_C,
         DEFAULT_MAX_RATE_G => 4)       -- 2 Hz per channel
      port map (
         -- AXI Stream Interface (axisClk domain)
         axisClk         => dmaClk,
         axisRst         => dmaRst,
         sAxisMaster     => axisMaster,
         sAxisSlave      => axisSlave,
         mAxisMaster     => dmaIbMaster,
         mAxisSlave      => dmaIbSlave,
         -- AXI-Lite Interface (axilClk domain)
         axilClk         => axilClk,
         axilRst         => axilRst,
         axilReadMaster  => axilReadMasters(2),
         axilReadSlave   => axilReadSlaves(2),
         axilWriteMaster => axilWriteMasters(2),
         axilWriteSlave  => axilWriteSlaves(2));

end mapping;
