# Simple-ZCU208-Example

Reference RFSoC ADC/DAC application for the SLAC SoC platform on the Xilinx ZCU208 evaluation board (`xczu48dr-fsvg1517-2-e`).

**Application docs:** https://slaclab.github.io/Simple-ZCU208-Example/

**Shared workflow docs (clone, FW build, Yocto, SD card, Rogue install/launch, remote bitstream update):** https://slaclab.github.io/axi-soc-ultra-plus-core/

## Board-specific deltas

- **Target directory:** `firmware/targets/SimpleZcu208Example/`
- **Default DHCP IP convention:** `10.0.0.10` (used in remote-update and GUI launch examples on the docs site)
- **Board:** Xilinx ZCU208 evaluation board; FPGA part: `XCZU48DR-FSVG1517-2-E`; firmware version: `v3.0.0.0` (`PRJ_VERSION = 0x03000000`)
- **Conda env (SLAC AFS):** `rogue_v6.6.1`
- **SD boot mode:** `Mode SW2 [4:1] = 1110` (switch OFF = 1 = High; ON = 0 = Low)
- **ZCU208-specific Yocto notes:** none beyond the shared procedure (the bare-metal-vs-Docker, build-output redirection, host-package prereqs all live on the hub).
