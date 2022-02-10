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
         receive_vo1            : out std_logic_vector(0 downto 0);
         receive_vo2            : out std_logic_vector(0 downto 0);
         evenimag               : out std_logic_vector(255 downto 0);
         evenreal               : out std_logic_vector(255 downto 0);
         oddimag                : out std_logic_vector(255 downto 0);
         oddreal                : out std_logic_vector(255 downto 0);
         ifft_opvalid           : out std_logic_vector(0 downto 0);
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
   constant DEBUG_INDEX_C      : natural := 1;
   constant NUM_AXIL_MASTERS_C : natural := 2;

   constant AXIL_CONFIG_C : AxiLiteCrossbarMasterConfigArray(NUM_AXIL_MASTERS_C-1 downto 0) := genAxiLiteConfig(NUM_AXIL_MASTERS_C, AXIL_BASE_ADDR_G, 28, 24);

   signal axilReadMasters  : AxiLiteReadMasterArray(NUM_AXIL_MASTERS_C-1 downto 0);
   signal axilReadSlaves   : AxiLiteReadSlaveArray(NUM_AXIL_MASTERS_C-1 downto 0)  := (others => AXI_LITE_READ_SLAVE_EMPTY_DECERR_C);
   signal axilWriteMasters : AxiLiteWriteMasterArray(NUM_AXIL_MASTERS_C-1 downto 0);
   signal axilWriteSlaves  : AxiLiteWriteSlaveArray(NUM_AXIL_MASTERS_C-1 downto 0) := (others => AXI_LITE_WRITE_SLAVE_EMPTY_DECERR_C);

   signal dspReadMaster  : AxiLiteReadMasterType;
   signal dspReadSlave   : AxiLiteReadSlaveType;
   signal dspWriteMaster : AxiLiteWriteMasterType;
   signal dspWriteSlave  : AxiLiteWriteSlaveType;

   signal dspDebug : Slv256Array(3 downto 0) := (others => (others => '0'));
   signal dspRstL  : sl;

begin

   dspRstL <= not(dspRst);

   -- Loopback unused channels
   dspDac(7 downto 2) <= dspAdc(7 downto 2);

   U_AxiLiteAsync : entity surf.AxiLiteAsync
      generic map (
         TPD_G           => TPD_G,
         COMMON_CLK_G    => false,
         NUM_ADDR_BITS_G => 32)
      port map (
         -- Slave Interface
         sAxiClk         => axilClk,
         sAxiClkRst      => axilRst,
         sAxiReadMaster  => axilReadMaster,
         sAxiReadSlave   => axilReadSlave,
         sAxiWriteMaster => axilWriteMaster,
         sAxiWriteSlave  => axilWriteSlave,
         -- Master Interface
         mAxiClk         => dspClk,
         mAxiClkRst      => dspRst,
         mAxiReadMaster  => dspReadMaster,
         mAxiReadSlave   => dspReadSlave,
         mAxiWriteMaster => dspWriteMaster,
         mAxiWriteSlave  => dspWriteSlave);

   U_XBAR : entity surf.AxiLiteCrossbar
      generic map (
         TPD_G              => TPD_G,
         NUM_SLAVE_SLOTS_G  => 1,
         NUM_MASTER_SLOTS_G => NUM_AXIL_MASTERS_C,
         MASTERS_CONFIG_G   => AXIL_CONFIG_C)
      port map (
         axiClk              => dspClk,
         axiClkRst           => dspRst,
         sAxiWriteMasters(0) => dspWriteMaster,
         sAxiWriteSlaves(0)  => dspWriteSlave,
         sAxiReadMasters(0)  => dspReadMaster,
         sAxiReadSlaves(0)   => dspReadSlave,
         mAxiWriteMasters    => axilWriteMasters,
         mAxiWriteSlaves     => axilWriteSlaves,
         mAxiReadMasters     => axilReadMasters,
         mAxiReadSlaves      => axilReadSlaves);

   U_analysis : analysis_0
      port map (
         -- Clock and Reset
         clk                    => dspClk,
         reset(0)               => dspRst,
         valid_in(0)            => '1',
         -- ADC Interface
         adc_real               => dspAdc(0),
         adc_imag               => dspAdc(1),
         -- DAC Interface
         dacreal                => dspDac(0),
         dacimag                => dspDac(1),
         -- Debug Interface
         evenreal               => dspDebug(0),
         evenimag               => dspDebug(1),
         oddreal                => dspDebug(2),
         oddimag                => dspDebug(3),
         -- AXI-Lite interface
         analysis_aresetn       => dspRstL,
         analysis_s_axi_awaddr  => axilWriteMasters(ANALYSIS_INDEX_C).awaddr(11 downto 0),
         analysis_s_axi_awvalid => axilWriteMasters(ANALYSIS_INDEX_C).awvalid,
         analysis_s_axi_awready => axilWriteSlaves(ANALYSIS_INDEX_C).awready,
         analysis_s_axi_wdata   => axilWriteMasters(ANALYSIS_INDEX_C).wdata,
         analysis_s_axi_wstrb   => axilWriteMasters(ANALYSIS_INDEX_C).wstrb,
         analysis_s_axi_wvalid  => axilWriteMasters(ANALYSIS_INDEX_C).wvalid,
         analysis_s_axi_wready  => axilWriteSlaves(ANALYSIS_INDEX_C).wready,
         analysis_s_axi_bresp   => axilWriteSlaves(ANALYSIS_INDEX_C).bresp,
         analysis_s_axi_bvalid  => axilWriteSlaves(ANALYSIS_INDEX_C).bvalid,
         analysis_s_axi_bready  => axilWriteMasters(ANALYSIS_INDEX_C).bready,
         analysis_s_axi_araddr  => axilReadMasters(ANALYSIS_INDEX_C).araddr(11 downto 0),
         analysis_s_axi_arvalid => axilReadMasters(ANALYSIS_INDEX_C).arvalid,
         analysis_s_axi_arready => axilReadSlaves(ANALYSIS_INDEX_C).arready,
         analysis_s_axi_rdata   => axilReadSlaves(ANALYSIS_INDEX_C).rdata,
         analysis_s_axi_rresp   => axilReadSlaves(ANALYSIS_INDEX_C).rresp,
         analysis_s_axi_rvalid  => axilReadSlaves(ANALYSIS_INDEX_C).rvalid,
         analysis_s_axi_rready  => axilReadMasters(ANALYSIS_INDEX_C).rready);

   U_DebugRingBuffer : entity axi_soc_ultra_plus_core.AppRingBuffer
      generic map (
         TPD_G            => TPD_G,
         EN_ADC_BUFF_G    => true,      -- Debug path
         EN_DAC_BUFF_G    => false,     -- DAC not used
         NUM_ADC_CH_G     => 4,         -- Mapping debug to ADC ports
         NUM_DAC_CH_G     => 1,         -- Unused
         RAM_ADDR_WIDTH_G => 10,
         AXIL_BASE_ADDR_G => AXIL_CONFIG_C(DEBUG_INDEX_C).baseAddr)
      port map (
         -- DMA Interface (dmaClk domain)
         dmaClk          => dmaClk,
         dmaRst          => dmaRst,
         dmaIbMaster     => dmaIbMaster,
         dmaIbSlave      => dmaIbSlave,
         -- ADC/DAC Interface (dspClk domain)
         dspClk          => dspClk,
         dspRst          => dspRst,
         dspAdc          => dspDebug,
         dspDac          => (others => (others => '0')),
         -- AXI-Lite Interface (axilClk domain)
         axilClk         => axilClk,
         axilRst         => axilRst,
         axilReadMaster  => axilReadMasters(DEBUG_INDEX_C),
         axilReadSlave   => axilReadSlaves(DEBUG_INDEX_C),
         axilWriteMaster => axilWriteMasters(DEBUG_INDEX_C),
         axilWriteSlave  => axilWriteSlaves(DEBUG_INDEX_C));

end mapping;
