# Load RUCKUS environment and library
source -quiet $::env(RUCKUS_DIR)/vivado_proc.tcl

# Load submodule code
loadRuckusTcl $::env(TOP_DIR)/submodules/surf
loadRuckusTcl $::env(TOP_DIR)/submodules/axi-soc-ultra-plus-core/hardware/XilinxZcu208

# Load RTL code
loadSource -dir  "$::DIR_PATH/rtl"

# Load IP cores
loadIpCore -dir "$::DIR_PATH/ip"

# Load SYSGEN .ZIP output file
if { [get_ips analysis_0] eq ""  } {

   # Load the IP core .ZIP into the Vivado project
   loadZipIpCore  -repo_path $::env(IP_REPO) -dir "$::DIR_PATH/simulink/netlist/ip"

   # Add analysis IP core to my Vivado project
   create_ip -name analysis -vendor SLAC -library SysGen -version 1.0 -module_name analysis_0

   # Update target language
   set_property target_language Verilog [current_project]
}

# Updating the impl_1 strategy
set_property strategy Performance_ExplorePostRoutePhysOpt [get_runs impl_1]
