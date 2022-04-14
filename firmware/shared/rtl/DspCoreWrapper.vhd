-------------------------------------------------------------------------------
-- Company    : SLAC National Accelerator Laboratory
-------------------------------------------------------------------------------
-- Description: DspCoreWrapper Module
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

entity DspCoreWrapper is
   generic (
      TPD_G            : time := 1 ns;
      AXIL_BASE_ADDR_G : slv(31 downto 0));
   port (
      -- DMA Interface (dmaClk domain)
      dmaClk          : in  sl;
      dmaRst          : in  sl;
      dmaIbMaster     : out AxiStreamMasterType;
      dmaIbSlave      : in  AxiStreamSlaveType;
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
end DspCoreWrapper;

architecture mapping of DspCoreWrapper is

   component analysis_0
      port (
         adc_imag               : in  std_logic_vector(255 downto 0);
         adc_real               : in  std_logic_vector(255 downto 0);
         reset                  : in  std_logic_vector(0 downto 0);
         valid_in               : in  std_logic_vector(0 downto 0);
         evenimag_in            : in  std_logic_vector(255 downto 0);
         evenreal_in            : in  std_logic_vector(255 downto 0);
         oddimag_in             : in  std_logic_vector(255 downto 0);
         oddreal_in             : in  std_logic_vector(255 downto 0);
         stream_en_in           : in  std_logic_vector(0 downto 0);
         clk                    : in  std_logic;
         analysis_aresetn       : in  std_logic;
         analysis_s_axi_awaddr  : in  std_logic_vector(11 downto 0);
         analysis_s_axi_awvalid : in  std_logic;
         analysis_s_axi_wdata   : in  std_logic_vector(31 downto 0);
         analysis_s_axi_wstrb   : in  std_logic_vector(3 downto 0);
         analysis_s_axi_wvalid  : in  std_logic;
         analysis_s_axi_bready  : in  std_logic;
         analysis_s_axi_araddr  : in  std_logic_vector(11 downto 0);
         analysis_s_axi_arvalid : in  std_logic;
         analysis_s_axi_rready  : in  std_logic;
         debug_en_out           : out std_logic_vector(0 downto 0);
         evenimag_out           : out std_logic_vector(255 downto 0);
         evenreal_out           : out std_logic_vector(255 downto 0);
         oddimag_out            : out std_logic_vector(255 downto 0);
         oddreal_out            : out std_logic_vector(255 downto 0);
         stream_en_out          : out std_logic_vector(0 downto 0);
         tevenimag              : out std_logic_vector(255 downto 0);
         tevenreal              : out std_logic_vector(255 downto 0);
         toddimag               : out std_logic_vector(255 downto 0);
         toddreal               : out std_logic_vector(255 downto 0);
         dacimag                : out std_logic_vector(255 downto 0);
         dacreal                : out std_logic_vector(255 downto 0);
         analysis_s_axi_awready : out std_logic;
         analysis_s_axi_wready  : out std_logic;
         analysis_s_axi_bresp   : out std_logic_vector(1 downto 0);
         analysis_s_axi_bvalid  : out std_logic;
         analysis_s_axi_arready : out std_logic;
         analysis_s_axi_rdata   : out std_logic_vector(31 downto 0);
         analysis_s_axi_rresp   : out std_logic_vector(1 downto 0);
         analysis_s_axi_rvalid  : out std_logic
         );
   end component;

   constant ANALYSIS_INDEX_C   : natural := 0;
   constant RING_BUFF_INDEX_C  : natural := 1;
   constant DEBUG_INDEX_C      : natural := 2;
   constant NUM_AXIL_MASTERS_C : natural := 3;

   constant AXIL_CONFIG_C : AxiLiteCrossbarMasterConfigArray(NUM_AXIL_MASTERS_C-1 downto 0) := genAxiLiteConfig(NUM_AXIL_MASTERS_C, AXIL_BASE_ADDR_G, 24, 20);

   signal axilReadMasters  : AxiLiteReadMasterArray(NUM_AXIL_MASTERS_C-1 downto 0);
   signal axilReadSlaves   : AxiLiteReadSlaveArray(NUM_AXIL_MASTERS_C-1 downto 0)  := (others => AXI_LITE_READ_SLAVE_EMPTY_DECERR_C);
   signal axilWriteMasters : AxiLiteWriteMasterArray(NUM_AXIL_MASTERS_C-1 downto 0);
   signal axilWriteSlaves  : AxiLiteWriteSlaveArray(NUM_AXIL_MASTERS_C-1 downto 0) := (others => AXI_LITE_WRITE_SLAVE_EMPTY_DECERR_C);

   signal dspReadMaster  : AxiLiteReadMasterType;
   signal dspReadSlave   : AxiLiteReadSlaveType;
   signal dspWriteMaster : AxiLiteWriteMasterType;
   signal dspWriteSlave  : AxiLiteWriteSlaveType;

   signal debugRxAddr : slv(10 downto 0) := (others => '0');
   signal debugTxAddr : slv(10 downto 0) := (others => '0');
   signal debugDelay  : slv(3 downto 0)  := (others => '0');

   signal startRxMarker : sl                      := '0';
   signal freqRxBandVec : Slv256Array(3 downto 0) := (others => (others => '0'));

   signal startTxMarker : sl                      := '0';
   signal freqTxBandVec : Slv256Array(3 downto 0) := (others => (others => '0'));

   signal dspRstL     : sl := '1';
   signal rstDspCore  : sl := '0';
   signal debugRxTest : sl := '0';

begin

   -- Loopback unused channels
   dspDac(7 downto 2) <= dspAdc(7 downto 2);

   U_RstPipeline : entity surf.RstPipeline
      generic map(
         TPD_G     => TPD_G,
         INV_RST_G => true)             -- Invert RESET
      port map(
         clk    => dspClk,
         rstIn  => dspRst,
         rstOut => dspRstL);

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

   U_AxiLiteAsync : entity surf.AxiLiteAsync
      generic map (
         TPD_G           => TPD_G,
         COMMON_CLK_G    => false,
         NUM_ADDR_BITS_G => 12)
      port map (
         -- Slave Interface
         sAxiClk         => axilClk,
         sAxiClkRst      => axilRst,
         sAxiReadMaster  => axilReadMasters(ANALYSIS_INDEX_C),
         sAxiReadSlave   => axilReadSlaves(ANALYSIS_INDEX_C),
         sAxiWriteMaster => axilWriteMasters(ANALYSIS_INDEX_C),
         sAxiWriteSlave  => axilWriteSlaves(ANALYSIS_INDEX_C),
         -- Master Interface
         mAxiClk         => dspClk,
         mAxiClkRst      => dspRst,
         mAxiReadMaster  => dspReadMaster,
         mAxiReadSlave   => dspReadSlave,
         mAxiWriteMaster => dspWriteMaster,
         mAxiWriteSlave  => dspWriteSlave);

   U_analysis : analysis_0
      port map (
         -- Clock and Reset
         clk                    => dspClk,
         reset(0)               => rstDspCore,
         valid_in(0)            => '1',
         -- ADC Interface
         adc_real               => dspAdc(0),
         adc_imag               => dspAdc(1),
         -- DAC Interface
         dacreal                => dspDac(0),
         dacimag                => dspDac(1),
         -- Freq Band Outbound (RX) Interface
         stream_en_out(0)       => startRxMarker,  -- CH=0 when HIGH
         evenreal_out           => freqRxBandVec(0),
         evenimag_out           => freqRxBandVec(1),
         oddreal_out            => freqRxBandVec(2),
         oddimag_out            => freqRxBandVec(3),
         -- Freq Band Inbound (TX) Interface
         stream_en_in(0)        => startTxMarker,  -- CH=0 when HIGH
         evenreal_in            => freqTxBandVec(0),
         evenimag_in            => freqTxBandVec(1),
         oddreal_in             => freqTxBandVec(2),
         oddimag_in             => freqTxBandVec(3),
         -- AXI-Lite interface
         analysis_aresetn       => dspRstL,
         analysis_s_axi_awaddr  => dspWriteMaster.awaddr(11 downto 0),
         analysis_s_axi_awvalid => dspWriteMaster.awvalid,
         analysis_s_axi_awready => dspWriteSlave.awready,
         analysis_s_axi_wdata   => dspWriteMaster.wdata,
         analysis_s_axi_wstrb   => dspWriteMaster.wstrb,
         analysis_s_axi_wvalid  => dspWriteMaster.wvalid,
         analysis_s_axi_wready  => dspWriteSlave.wready,
         analysis_s_axi_bresp   => dspWriteSlave.bresp,
         analysis_s_axi_bvalid  => dspWriteSlave.bvalid,
         analysis_s_axi_bready  => dspWriteMaster.bready,
         analysis_s_axi_araddr  => dspReadMaster.araddr(11 downto 0),
         analysis_s_axi_arvalid => dspReadMaster.arvalid,
         analysis_s_axi_arready => dspReadSlave.arready,
         analysis_s_axi_rdata   => dspReadSlave.rdata,
         analysis_s_axi_rresp   => dspReadSlave.rresp,
         analysis_s_axi_rvalid  => dspReadSlave.rvalid,
         analysis_s_axi_rready  => dspReadMaster.rready);

   U_Loopback : entity surf.SlvDelay
      generic map (
         TPD_G        => TPD_G,
         SRL_EN_G     => false,
         REG_OUTPUT_G => false,
         DELAY_G      => 15,
         WIDTH_G      => (4*256+1))
      port map (
         clk                          => dspClk,
         rst                          => rstDspCore,
         delay                        => debugDelay,
         din(256*0+255 downto 256*0)  => freqRxBandVec(0),
         din(256*1+255 downto 256*1)  => freqRxBandVec(1),
         din(256*2+255 downto 256*2)  => freqRxBandVec(2),
         din(256*3+255 downto 256*3)  => freqRxBandVec(3),
         din(4*256+0)                 => startRxMarker,
         dout(256*0+255 downto 256*0) => freqTxBandVec(0),
         dout(256*1+255 downto 256*1) => freqTxBandVec(1),
         dout(256*2+255 downto 256*2) => freqTxBandVec(2),
         dout(256*3+255 downto 256*3) => freqTxBandVec(3),
         dout(4*256+0)                => startTxMarker);

   U_RingBuffer : entity work.DspCoreRingBuffer
      generic map (
         TPD_G            => TPD_G,
         AXIL_BASE_ADDR_G => AXIL_CONFIG_C(RING_BUFF_INDEX_C).baseAddr)
      port map (
         -- DMA Interface (dmaClk domain)
         dmaClk          => dmaClk,
         dmaRst          => dmaRst,
         dmaIbMaster     => dmaIbMaster,
         dmaIbSlave      => dmaIbSlave,
         -- Debug Interface (dspClk domain)
         dspClk          => dspClk,
         dspRst          => dspRst,
         rstDspCore      => rstDspCore,
         startRxMarker   => startRxMarker,
         debugRxAddr     => debugRxAddr,
         freqRxBandVec   => freqRxBandVec,
         startTxMarker   => startTxMarker,
         debugTxAddr     => debugTxAddr,
         freqTxBandVec   => freqTxBandVec,
         -- AXI-Lite interface (axilClk domain)
         axilClk         => axilClk,
         axilRst         => axilRst,
         axilReadMaster  => axilReadMasters(RING_BUFF_INDEX_C),
         axilReadSlave   => axilReadSlaves(RING_BUFF_INDEX_C),
         axilWriteMaster => axilWriteMasters(RING_BUFF_INDEX_C),
         axilWriteSlave  => axilWriteSlaves(RING_BUFF_INDEX_C));

   U_DebugReg : entity work.DspCoreDebugReg
      generic map (
         TPD_G => TPD_G)
      port map (
         -- Debugging Interface (dspClk domain)
         dspClk          => dspClk,
         dspRst          => dspRst,
         rstDspCore      => rstDspCore,
         debugRxAddr     => debugRxAddr,
         debugTxAddr     => debugTxAddr,
         debugDelay      => debugDelay,
         -- AXI-Lite Interface (axilClk domain)
         axilClk         => axilClk,
         axilRst         => axilRst,
         axilReadMaster  => axilReadMasters(DEBUG_INDEX_C),
         axilReadSlave   => axilReadSlaves(DEBUG_INDEX_C),
         axilWriteMaster => axilWriteMasters(DEBUG_INDEX_C),
         axilWriteSlave  => axilWriteSlaves(DEBUG_INDEX_C));

end mapping;
