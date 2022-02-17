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
      TPD_G     : time     := 1 ns;
      NUM_DBG_G : positive := 4);
   port (
      -- Clock and Reset
      dspClk          : in  sl;
      dspRst          : in  sl;
      -- Debugging Interface
      dspDebug        : in  Slv256Array(NUM_DBG_G-1 downto 0);
      rstDspCore      : out sl;
      -- AXI-Lite Interface
      axilReadMaster  : in  AxiLiteReadMasterType;
      axilReadSlave   : out AxiLiteReadSlaveType;
      axilWriteMaster : in  AxiLiteWriteMasterType;
      axilWriteSlave  : out AxiLiteWriteSlaveType);
end DspCoreDebugReg;

architecture rtl of DspCoreDebugReg is

   type RegType is record
      rstDspCore     : sl;
      axilReadSlave  : AxiLiteReadSlaveType;
      axilWriteSlave : AxiLiteWriteSlaveType;
   end record RegType;

   constant REG_INIT_C : RegType := (
      rstDspCore     => '0',
      axilReadSlave  => AXI_LITE_READ_SLAVE_INIT_C,
      axilWriteSlave => AXI_LITE_WRITE_SLAVE_INIT_C);

   signal r   : RegType := REG_INIT_C;
   signal rin : RegType;

begin

   comb : process (axilReadMaster, axilWriteMaster, dspDebug, dspRst, r) is
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

      for i in 0 to NUM_DBG_G-1 loop
         axiSlaveRegisterR(axilEp, toSlv(32*i, 12), 0, dspDebug(i));
      end loop;

      axiSlaveRegister(axilEp, x"FFC", 0, v.rstDspCore);

      -- Close the transaction
      axiSlaveDefault(axilEp, v.axilWriteSlave, v.axilReadSlave, AXI_RESP_DECERR_C);

      -- Outputs
      axilReadSlave  <= r.axilReadSlave;
      axilWriteSlave <= r.axilWriteSlave;
      rstDspCore     <= r.rstDspCore;

      -- Reset
      if (dspRst = '1') then
         v := REG_INIT_C;
      end if;

      -- Register the variable for next clock cycle
      rin <= v;

   end process comb;

   seq : process (dspClk) is
   begin
      if (rising_edge(dspClk)) then
         r <= rin after TPD_G;
      end if;
   end process seq;

end architecture rtl;
