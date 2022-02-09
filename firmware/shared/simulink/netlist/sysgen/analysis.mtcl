proc generate {drv_handle} {
    xdefine_include_file $drv_handle "xparameters.h" "analysis" "NUM_INSTANCES" "DEVICE_ID" "C_ANALYSIS_S_AXI_BASEADDR" "C_ANALYSIS_S_AXI_HIGHADDR" 
    xdefine_config_file $drv_handle "analysis_g.c" "analysis" "DEVICE_ID" "C_ANALYSIS_S_AXI_BASEADDR" 
    xdefine_canonical_xpars $drv_handle "xparameters.h" "analysis" "DEVICE_ID" "C_ANALYSIS_S_AXI_BASEADDR" "C_ANALYSIS_S_AXI_HIGHADDR" 

}