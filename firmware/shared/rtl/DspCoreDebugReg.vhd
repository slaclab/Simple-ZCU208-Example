-------------------------------------------------------------------------------
-- Company    : SLAC National Accelerator Laboratory
-------------------------------------------------------------------------------
-- Description: Creates AXI accessible registers containing configuration
-- information.
-------------------------------------------------------------------------------
-- This file is part of 'SLAC Firmware Standard Library'.
-- It is subject to the license terms in the LICENSE.txt file found in the
-- top-level directory of this distribution and at:
--    https://confluence.slac.stanford.edu/display/ppareg/LICENSE.html.
-- No part of 'SLAC Firmware Standard Library', including this file,
-- may be copied, modified, propagated, or distributed except according to
-- the terms contained in the LICENSE.txt file.
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

library surf;
use surf.StdRtlPkg.all;
use surf.AxiLitePkg.all;

entity DspCoreDebugReg is
   generic (
      TPD_G : time := 1 ns);
   port (
      -- Debugging Interface (dspClk domain)
      dspClk          : in  sl;
      dspRst          : in  sl;
      rstDspCore      : out sl;
      debugRxAddr     : out slv(10 downto 0);
      debugTxAddr     : out slv(10 downto 0);
      debugDelay      : out slv(3 downto 0);
      -- AXI-Lite Interface (axilClk domain)
      axilClk         : in  sl;
      axilRst         : in  sl;
      axilReadMaster  : in  AxiLiteReadMasterType;
      axilReadSlave   : out AxiLiteReadSlaveType;
      axilWriteMaster : in  AxiLiteWriteMasterType;
      axilWriteSlave  : out AxiLiteWriteSlaveType);
end DspCoreDebugReg;

architecture rtl of DspCoreDebugReg is

   type RegType is record
      rxMarkerSel    : sl;
      rstDspCore     : sl;
      debugRxAddr    : slv(10 downto 0);
      debugTxAddr    : slv(10 downto 0);
      debugDelay     : slv(3 downto 0);
      axilReadSlave  : AxiLiteReadSlaveType;
      axilWriteSlave : AxiLiteWriteSlaveType;
   end record RegType;

   constant REG_INIT_C : RegType := (
      rxMarkerSel    => '0',
      rstDspCore     => '0',
      debugRxAddr    => (others => '0'),
      debugTxAddr    => (others => '0'),
      debugDelay     => x"8",
      axilReadSlave  => AXI_LITE_READ_SLAVE_INIT_C,
      axilWriteSlave => AXI_LITE_WRITE_SLAVE_INIT_C);

   signal r   : RegType := REG_INIT_C;
   signal rin : RegType;

   signal resetDspCore : sl;

begin

   comb : process (axilReadMaster, axilRst, axilWriteMaster, r) is
      variable v      : RegType;
      variable axilEp : AxiLiteEndpointType;
   begin
      -- Latch the current value
      v := r;

      ------------------------
      -- AXI-Lite Transactions
      ------------------------

      -- Determine the transaction type
      axiSlaveWaitTxn(axilEp, axilWriteMaster, axilReadMaster, v.axilWriteSlave, v.axilReadSlave);

      axiSlaveRegister(axilEp, x"00", 0, v.rstDspCore);
      axiSlaveRegister(axilEp, x"04", 0, v.debugRxAddr);
      axiSlaveRegister(axilEp, x"08", 0, v.debugTxAddr);
      axiSlaveRegister(axilEp, x"0C", 0, v.debugDelay);

      -- Close the transaction
      axiSlaveDefault(axilEp, v.axilWriteSlave, v.axilReadSlave, AXI_RESP_DECERR_C);

      -- Outputs
      axilReadSlave  <= r.axilReadSlave;
      axilWriteSlave <= r.axilWriteSlave;

      -- Reset
      if (axilRst = '1') then
         v := REG_INIT_C;
      end if;

      -- Register the variable for next clock cycle
      rin <= v;

   end process comb;

   seq : process (axilClk) is
   begin
      if (rising_edge(axilClk)) then
         r <= rin after TPD_G;
      end if;
   end process seq;

   U_RstPipeline : entity surf.RstPipeline
      generic map(
         TPD_G     => TPD_G,
         INV_RST_G => false)
      port map(
         clk    => dspClk,
         rstIn  => resetDspCore,
         rstOut => rstDspCore);

   U_rstDspCore : entity surf.Synchronizer
      generic map(
         TPD_G => TPD_G)
      port map(
         clk     => dspClk,
         dataIn  => r.rstDspCore,
         dataOut => resetDspCore);

   U_debugRxAddr : entity surf.SynchronizerVector
      generic map(
         TPD_G   => TPD_G,
         WIDTH_G => 11)
      port map(
         clk     => dspClk,
         dataIn  => r.debugRxAddr,
         dataOut => debugRxAddr);

   U_debugTxAddr : entity surf.SynchronizerVector
      generic map(
         TPD_G   => TPD_G,
         WIDTH_G => 11)
      port map(
         clk     => dspClk,
         dataIn  => r.debugTxAddr,
         dataOut => debugTxAddr);

   U_debugDelay : entity surf.SynchronizerVector
      generic map(
         TPD_G   => TPD_G,
         WIDTH_G => 4)
      port map(
         clk     => dspClk,
         dataIn  => r.debugDelay,
         dataOut => debugDelay);

end architecture rtl;
