# Note: This file is produced automatically, and will be overwritten the next
# time you press "Generate" in System Generator. 
#


namespace eval ::xilinx::dsp::planaheaddriver {
	set Compilation {IP Catalog}
	set CompilationFlow {IP}
	set CreateInterfaceDocument {on}
	set DSPDevice {xczu28dr}
	set DSPFamily {zynquplus}
	set DSPPackage {ffvg1517}
	set DSPSpeed {-1-e}
	set FPGAClockPeriod 3.2
	set GenerateTestBench 0
	set HDLLanguage {verilog}
	set IPOOCCacheRootPath {/u/re/lilima/.Xilinx/Sysgen/SysgenVivado/lnx64.o/ip}
	set IP_Auto_Infer {1}
	set IP_Categories_Text {System Generator for DSP}
	set IP_Common_Repos {0}
	set IP_Description {}
	set IP_Dir {}
	set IP_Library_Text {SysGen}
	set IP_LifeCycle_Menu {1}
	set IP_Logo {sysgen_icon_100.png}
	set IP_Name {analysis}
	set IP_Revision {274797657}
	set IP_Socket_IP {0}
	set IP_Socket_IP_Proj_Path {}
	set IP_Vendor_Text {SLAC}
	set IP_Version_Text {1.0}
	set ImplStrategyName {Vivado Implementation Defaults}
	set PostProjectCreationProc {dsp_package_for_vivado_ip_integrator}
	set Project {analysis}
	set ProjectFiles {
		{{conv_pkg.v}}
		{{synth_reg.v}}
		{{synth_reg_w_init.v}}
		{{convert_type.v}}
		{{xlclockdriver_rd.v}}
		{{vivado_ip.tcl}}
		{{COMPLEX_FIXED_PKG.vhd}}
		{{BDELAY.vhd}}
		{{UDELAY.vhd}}
		{{SDELAY.vhd}}
		{{CDELAY.vhd}}
		{{CB.vhd}}
		{{BFS.vhd}}
		{{CBFS.vhd}}
		{{CSA3.vhd}}
		{{DSP48E2GW.vhd}}
		{{CKCM.vhd}}
		{{ADDSUB.vhd}}
		{{TABLE.vhd}}
		{{CM3.vhd}}
		{{CM3FFT.vhd}}
		{{PARFFT.vhd}}
		{{INPUT_SWAP.vhd}}
		{{SYSTOLIC_FFT.vhd}}
		{{DS.vhd}}
		{{DSN.vhd}}
		{{VECTOR_FFT.vhd}}
		{{WRAPPER_VECTOR_FFT.vhd}}
		{{xpm_6af9bc_vivado.mem}}
		{{xpm_24d188_vivado.mem}}
		{{xpm_3cbabb_vivado.mem}}
		{{xpm_aadf07_vivado.mem}}
		{{xpm_acacb6_vivado.mem}}
		{{xpm_a62482_vivado.mem}}
		{{xpm_a021b5_vivado.mem}}
		{{xpm_9ccc7a_vivado.mem}}
		{{xpm_cf9f3b_vivado.mem}}
		{{xpm_9ae983_vivado.mem}}
		{{xpm_3b06d5_vivado.mem}}
		{{xpm_654d55_vivado.mem}}
		{{xpm_6a398c_vivado.mem}}
		{{xpm_6c4192_vivado.mem}}
		{{xpm_c5b671_vivado.mem}}
		{{xpm_eefc97_vivado.mem}}
		{{xpm_fb924d_vivado.mem}}
		{{xpm_5bb645_vivado.mem}}
		{{xpm_519982_vivado.mem}}
		{{xpm_928991_vivado.mem}}
		{{xpm_335da7_vivado.mem}}
		{{xpm_c45b4b_vivado.mem}}
		{{xpm_714f51_vivado.mem}}
		{{xpm_d16ba3_vivado.mem}}
		{{xpm_26e937_vivado.mem}}
		{{xpm_5d70c1_vivado.mem}}
		{{xpm_357966_vivado.mem}}
		{{xpm_aea5c0_vivado.mem}}
		{{xpm_ceeff7_vivado.mem}}
		{{xpm_c556c3_vivado.mem}}
		{{xpm_ee687c_vivado.mem}}
		{{xpm_1477e8_vivado.mem}}
		{{xpm_12c55d_vivado.mem}}
		{{xpm_90e3a2_vivado.mem}}
		{{xpm_58068c_vivado.mem}}
		{{xpm_b135db_vivado.mem}}
		{{xpm_37f6c1_vivado.mem}}
		{{xpm_adbc8f_vivado.mem}}
		{{xpm_9350eb_vivado.mem}}
		{{xpm_282f1d_vivado.mem}}
		{{xpm_67cc19_vivado.mem}}
		{{xpm_955d63_vivado.mem}}
		{{xpm_c879f2_vivado.mem}}
		{{xpm_df32a7_vivado.mem}}
		{{xpm_06386f_vivado.mem}}
		{{xpm_0f7f0f_vivado.mem}}
		{{xpm_b01104_vivado.mem}}
		{{xpm_4510fc_vivado.mem}}
		{{xpm_d30ba1_vivado.mem}}
		{{xpm_8d9762_vivado.mem}}
		{{xpm_f69f26_vivado.mem}}
		{{xpm_a1514d_vivado.mem}}
		{{xpm_b1d2dc_vivado.mem}}
		{{xpm_0c8f21_vivado.mem}}
		{{xpm_305ecd_vivado.mem}}
		{{xpm_129634_vivado.mem}}
		{{xpm_e233d4_vivado.mem}}
		{{xpm_ae2f33_vivado.mem}}
		{{xpm_7ec761_vivado.mem}}
		{{xpm_2f4659_vivado.mem}}
		{{xpm_f4f701_vivado.mem}}
		{{xpm_dd2058_vivado.mem}}
		{{xpm_f04b4a_vivado.mem}}
		{{xpm_f4a68c_vivado.mem}}
		{{xpm_432f3b_vivado.mem}}
		{{xpm_b2f0cf_vivado.mem}}
		{{xpm_d367c0_vivado.mem}}
		{{xpm_91ea6b_vivado.mem}}
		{{xpm_d34913_vivado.mem}}
		{{xpm_aeacc3_vivado.mem}}
		{{xpm_68b4cb_vivado.mem}}
		{{xpm_f9f900_vivado.mem}}
		{{xpm_f5aecb_vivado.mem}}
		{{xpm_4dad40_vivado.mem}}
		{{xpm_3e26d9_vivado.mem}}
		{{xpm_5858d3_vivado.mem}}
		{{xpm_beb8d6_vivado.mem}}
		{{xpm_bbb6db_vivado.mem}}
		{{xpm_12afbb_vivado.mem}}
		{{xpm_f6955d_vivado.mem}}
		{{xpm_3e4e6b_vivado.mem}}
		{{xpm_095144_vivado.mem}}
		{{xpm_f89fe6_vivado.mem}}
		{{xpm_8d3b4c_vivado.mem}}
		{{xpm_6e14b3_vivado.mem}}
		{{xpm_b6c3b6_vivado.mem}}
		{{xpm_9d45ce_vivado.mem}}
		{{xpm_7b1ad3_vivado.mem}}
		{{xpm_8b8d54_vivado.mem}}
		{{xpm_db2336_vivado.mem}}
		{{xpm_e09291_vivado.mem}}
		{{xpm_052149_vivado.mem}}
		{{xpm_8cfaf4_vivado.mem}}
		{{xpm_d3eab6_vivado.mem}}
		{{xpm_f4befb_vivado.mem}}
		{{xpm_d2499e_vivado.mem}}
		{{xpm_83efb9_vivado.mem}}
		{{xpm_36b395_vivado.mem}}
		{{xpm_6ac61c_vivado.mem}}
		{{xpm_e627a0_vivado.mem}}
		{{xpm_65821e_vivado.mem}}
		{{xpm_70ae09_vivado.mem}}
		{{xpm_3fab2e_vivado.mem}}
		{{xpm_e7ab36_vivado.mem}}
		{{xpm_a0e9a7_vivado.mem}}
		{{xpm_65eff5_vivado.mem}}
		{{xpm_4734f9_vivado.mem}}
		{{xpm_faa0ac_vivado.mem}}
		{{xpm_5ff36e_vivado.mem}}
		{{xpm_72e7df_vivado.mem}}
		{{xpm_fbbac6_vivado.mem}}
		{{xpm_987e53_vivado.mem}}
		{{xpm_16c3c0_vivado.mem}}
		{{xpm_d96284_vivado.mem}}
		{{xpm_74c081_vivado.mem}}
		{{xpm_ca1c19_vivado.mem}}
		{{xpm_46bcd0_vivado.mem}}
		{{xpm_1f2f36_vivado.mem}}
		{{xpm_2a48e9_vivado.mem}}
		{{xpm_5b6ac6_vivado.mem}}
		{{xpm_b61353_vivado.mem}}
		{{xpm_b0f458_vivado.mem}}
		{{xpm_b0aae7_vivado.mem}}
		{{xpm_4b4415_vivado.mem}}
		{{xpm_976ba7_vivado.mem}}
		{{xpm_370acb_vivado.mem}}
		{{xpm_3db7fc_vivado.mem}}
		{{xpm_8f1dfe_vivado.mem}}
		{{xpm_625d9e_vivado.mem}}
		{{xpm_79fc91_vivado.mem}}
		{{xpm_dfe4a9_vivado.mem}}
		{{xpm_5414e3_vivado.mem}}
		{{xpm_592ede_vivado.mem}}
		{{xpm_3eed54_vivado.mem}}
		{{xpm_6e2084_vivado.mem}}
		{{xpm_1dc83c_vivado.mem}}
		{{xpm_5558ac_vivado.mem}}
		{{xpm_2dd594_vivado.mem}}
		{{xpm_9bcf7b_vivado.mem}}
		{{xpm_bf3820_vivado.mem}}
		{{xpm_f1692a_vivado.mem}}
		{{xpm_ff6551_vivado.mem}}
		{{xpm_d18af6_vivado.mem}}
		{{xpm_9d4d1f_vivado.mem}}
		{{xpm_eccf81_vivado.mem}}
		{{xpm_c4c49f_vivado.mem}}
		{{analysis_entity_declarations.v}}
		{{analysis.v}}
		{{analysis_clock.xdc}}
		{{analysis.xdc}}
		{{analysis.htm}}
	}
	set SimPeriod 3.2e-09
	set SimTime 5.24288e-05
	set SimulationTime {52632.00000000 ns}
	set SynthStrategyName {Vivado Synthesis Defaults}
	set SynthesisTool {Vivado}
	set TargetDir {/afs/slac.stanford.edu/u/re/lilima/projects/Smurf/RFSoC_dev/Simple-ZCU208-Example/firmware/shared/simulink/RTchain_netlist}
	set TopLevelModule {analysis}
	set TopLevelSimulinkHandle 2.00012
	set TopLevelPortInterface {}
	dict set TopLevelPortInterface gatewayin15_x0 Name {gatewayin15_x0}
	dict set TopLevelPortInterface gatewayin15_x0 Type Fix_16_0
	dict set TopLevelPortInterface gatewayin15_x0 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayin15_x0 BinaryPoint 0
	dict set TopLevelPortInterface gatewayin15_x0 Width 16
	dict set TopLevelPortInterface gatewayin15_x0 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_signal_to_adclanes_receive_real_gatewayin15.dat}
	dict set TopLevelPortInterface gatewayin15_x0 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/Signal to ADCLanes/receive_real/GatewayIn15}
	dict set TopLevelPortInterface gatewayin15_x0 Direction in
	dict set TopLevelPortInterface gatewayin15_x0 Period 1
	dict set TopLevelPortInterface gatewayin15_x0 Interface 0
	dict set TopLevelPortInterface gatewayin15_x0 InterfaceName {}
	dict set TopLevelPortInterface gatewayin15_x0 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayin15_x0 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayin15_x0 Locs {}
	dict set TopLevelPortInterface gatewayin15_x0 IOStandard {}
	dict set TopLevelPortInterface gatewayin14_x0 Name {gatewayin14_x0}
	dict set TopLevelPortInterface gatewayin14_x0 Type Fix_16_0
	dict set TopLevelPortInterface gatewayin14_x0 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayin14_x0 BinaryPoint 0
	dict set TopLevelPortInterface gatewayin14_x0 Width 16
	dict set TopLevelPortInterface gatewayin14_x0 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_signal_to_adclanes_receive_real_gatewayin14.dat}
	dict set TopLevelPortInterface gatewayin14_x0 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/Signal to ADCLanes/receive_real/GatewayIn14}
	dict set TopLevelPortInterface gatewayin14_x0 Direction in
	dict set TopLevelPortInterface gatewayin14_x0 Period 1
	dict set TopLevelPortInterface gatewayin14_x0 Interface 0
	dict set TopLevelPortInterface gatewayin14_x0 InterfaceName {}
	dict set TopLevelPortInterface gatewayin14_x0 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayin14_x0 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayin14_x0 Locs {}
	dict set TopLevelPortInterface gatewayin14_x0 IOStandard {}
	dict set TopLevelPortInterface gatewayin13_x0 Name {gatewayin13_x0}
	dict set TopLevelPortInterface gatewayin13_x0 Type Fix_16_0
	dict set TopLevelPortInterface gatewayin13_x0 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayin13_x0 BinaryPoint 0
	dict set TopLevelPortInterface gatewayin13_x0 Width 16
	dict set TopLevelPortInterface gatewayin13_x0 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_signal_to_adclanes_receive_real_gatewayin13.dat}
	dict set TopLevelPortInterface gatewayin13_x0 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/Signal to ADCLanes/receive_real/GatewayIn13}
	dict set TopLevelPortInterface gatewayin13_x0 Direction in
	dict set TopLevelPortInterface gatewayin13_x0 Period 1
	dict set TopLevelPortInterface gatewayin13_x0 Interface 0
	dict set TopLevelPortInterface gatewayin13_x0 InterfaceName {}
	dict set TopLevelPortInterface gatewayin13_x0 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayin13_x0 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayin13_x0 Locs {}
	dict set TopLevelPortInterface gatewayin13_x0 IOStandard {}
	dict set TopLevelPortInterface gatewayin12_x0 Name {gatewayin12_x0}
	dict set TopLevelPortInterface gatewayin12_x0 Type Fix_16_0
	dict set TopLevelPortInterface gatewayin12_x0 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayin12_x0 BinaryPoint 0
	dict set TopLevelPortInterface gatewayin12_x0 Width 16
	dict set TopLevelPortInterface gatewayin12_x0 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_signal_to_adclanes_receive_real_gatewayin12.dat}
	dict set TopLevelPortInterface gatewayin12_x0 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/Signal to ADCLanes/receive_real/GatewayIn12}
	dict set TopLevelPortInterface gatewayin12_x0 Direction in
	dict set TopLevelPortInterface gatewayin12_x0 Period 1
	dict set TopLevelPortInterface gatewayin12_x0 Interface 0
	dict set TopLevelPortInterface gatewayin12_x0 InterfaceName {}
	dict set TopLevelPortInterface gatewayin12_x0 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayin12_x0 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayin12_x0 Locs {}
	dict set TopLevelPortInterface gatewayin12_x0 IOStandard {}
	dict set TopLevelPortInterface gatewayin11_x0 Name {gatewayin11_x0}
	dict set TopLevelPortInterface gatewayin11_x0 Type Fix_16_0
	dict set TopLevelPortInterface gatewayin11_x0 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayin11_x0 BinaryPoint 0
	dict set TopLevelPortInterface gatewayin11_x0 Width 16
	dict set TopLevelPortInterface gatewayin11_x0 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_signal_to_adclanes_receive_real_gatewayin11.dat}
	dict set TopLevelPortInterface gatewayin11_x0 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/Signal to ADCLanes/receive_real/GatewayIn11}
	dict set TopLevelPortInterface gatewayin11_x0 Direction in
	dict set TopLevelPortInterface gatewayin11_x0 Period 1
	dict set TopLevelPortInterface gatewayin11_x0 Interface 0
	dict set TopLevelPortInterface gatewayin11_x0 InterfaceName {}
	dict set TopLevelPortInterface gatewayin11_x0 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayin11_x0 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayin11_x0 Locs {}
	dict set TopLevelPortInterface gatewayin11_x0 IOStandard {}
	dict set TopLevelPortInterface gatewayin10_x0 Name {gatewayin10_x0}
	dict set TopLevelPortInterface gatewayin10_x0 Type Fix_16_0
	dict set TopLevelPortInterface gatewayin10_x0 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayin10_x0 BinaryPoint 0
	dict set TopLevelPortInterface gatewayin10_x0 Width 16
	dict set TopLevelPortInterface gatewayin10_x0 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_signal_to_adclanes_receive_real_gatewayin10.dat}
	dict set TopLevelPortInterface gatewayin10_x0 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/Signal to ADCLanes/receive_real/GatewayIn10}
	dict set TopLevelPortInterface gatewayin10_x0 Direction in
	dict set TopLevelPortInterface gatewayin10_x0 Period 1
	dict set TopLevelPortInterface gatewayin10_x0 Interface 0
	dict set TopLevelPortInterface gatewayin10_x0 InterfaceName {}
	dict set TopLevelPortInterface gatewayin10_x0 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayin10_x0 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayin10_x0 Locs {}
	dict set TopLevelPortInterface gatewayin10_x0 IOStandard {}
	dict set TopLevelPortInterface gatewayin9_x0 Name {gatewayin9_x0}
	dict set TopLevelPortInterface gatewayin9_x0 Type Fix_16_0
	dict set TopLevelPortInterface gatewayin9_x0 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayin9_x0 BinaryPoint 0
	dict set TopLevelPortInterface gatewayin9_x0 Width 16
	dict set TopLevelPortInterface gatewayin9_x0 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_signal_to_adclanes_receive_real_gatewayin9.dat}
	dict set TopLevelPortInterface gatewayin9_x0 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/Signal to ADCLanes/receive_real/GatewayIn9}
	dict set TopLevelPortInterface gatewayin9_x0 Direction in
	dict set TopLevelPortInterface gatewayin9_x0 Period 1
	dict set TopLevelPortInterface gatewayin9_x0 Interface 0
	dict set TopLevelPortInterface gatewayin9_x0 InterfaceName {}
	dict set TopLevelPortInterface gatewayin9_x0 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayin9_x0 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayin9_x0 Locs {}
	dict set TopLevelPortInterface gatewayin9_x0 IOStandard {}
	dict set TopLevelPortInterface gatewayin8_x0 Name {gatewayin8_x0}
	dict set TopLevelPortInterface gatewayin8_x0 Type Fix_16_0
	dict set TopLevelPortInterface gatewayin8_x0 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayin8_x0 BinaryPoint 0
	dict set TopLevelPortInterface gatewayin8_x0 Width 16
	dict set TopLevelPortInterface gatewayin8_x0 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_signal_to_adclanes_receive_real_gatewayin8.dat}
	dict set TopLevelPortInterface gatewayin8_x0 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/Signal to ADCLanes/receive_real/GatewayIn8}
	dict set TopLevelPortInterface gatewayin8_x0 Direction in
	dict set TopLevelPortInterface gatewayin8_x0 Period 1
	dict set TopLevelPortInterface gatewayin8_x0 Interface 0
	dict set TopLevelPortInterface gatewayin8_x0 InterfaceName {}
	dict set TopLevelPortInterface gatewayin8_x0 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayin8_x0 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayin8_x0 Locs {}
	dict set TopLevelPortInterface gatewayin8_x0 IOStandard {}
	dict set TopLevelPortInterface gatewayin7_x0 Name {gatewayin7_x0}
	dict set TopLevelPortInterface gatewayin7_x0 Type Fix_16_0
	dict set TopLevelPortInterface gatewayin7_x0 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayin7_x0 BinaryPoint 0
	dict set TopLevelPortInterface gatewayin7_x0 Width 16
	dict set TopLevelPortInterface gatewayin7_x0 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_signal_to_adclanes_receive_real_gatewayin7.dat}
	dict set TopLevelPortInterface gatewayin7_x0 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/Signal to ADCLanes/receive_real/GatewayIn7}
	dict set TopLevelPortInterface gatewayin7_x0 Direction in
	dict set TopLevelPortInterface gatewayin7_x0 Period 1
	dict set TopLevelPortInterface gatewayin7_x0 Interface 0
	dict set TopLevelPortInterface gatewayin7_x0 InterfaceName {}
	dict set TopLevelPortInterface gatewayin7_x0 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayin7_x0 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayin7_x0 Locs {}
	dict set TopLevelPortInterface gatewayin7_x0 IOStandard {}
	dict set TopLevelPortInterface gatewayin6_x0 Name {gatewayin6_x0}
	dict set TopLevelPortInterface gatewayin6_x0 Type Fix_16_0
	dict set TopLevelPortInterface gatewayin6_x0 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayin6_x0 BinaryPoint 0
	dict set TopLevelPortInterface gatewayin6_x0 Width 16
	dict set TopLevelPortInterface gatewayin6_x0 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_signal_to_adclanes_receive_real_gatewayin6.dat}
	dict set TopLevelPortInterface gatewayin6_x0 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/Signal to ADCLanes/receive_real/GatewayIn6}
	dict set TopLevelPortInterface gatewayin6_x0 Direction in
	dict set TopLevelPortInterface gatewayin6_x0 Period 1
	dict set TopLevelPortInterface gatewayin6_x0 Interface 0
	dict set TopLevelPortInterface gatewayin6_x0 InterfaceName {}
	dict set TopLevelPortInterface gatewayin6_x0 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayin6_x0 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayin6_x0 Locs {}
	dict set TopLevelPortInterface gatewayin6_x0 IOStandard {}
	dict set TopLevelPortInterface gatewayin5_x0 Name {gatewayin5_x0}
	dict set TopLevelPortInterface gatewayin5_x0 Type Fix_16_0
	dict set TopLevelPortInterface gatewayin5_x0 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayin5_x0 BinaryPoint 0
	dict set TopLevelPortInterface gatewayin5_x0 Width 16
	dict set TopLevelPortInterface gatewayin5_x0 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_signal_to_adclanes_receive_real_gatewayin5.dat}
	dict set TopLevelPortInterface gatewayin5_x0 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/Signal to ADCLanes/receive_real/GatewayIn5}
	dict set TopLevelPortInterface gatewayin5_x0 Direction in
	dict set TopLevelPortInterface gatewayin5_x0 Period 1
	dict set TopLevelPortInterface gatewayin5_x0 Interface 0
	dict set TopLevelPortInterface gatewayin5_x0 InterfaceName {}
	dict set TopLevelPortInterface gatewayin5_x0 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayin5_x0 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayin5_x0 Locs {}
	dict set TopLevelPortInterface gatewayin5_x0 IOStandard {}
	dict set TopLevelPortInterface gatewayin4_x0 Name {gatewayin4_x0}
	dict set TopLevelPortInterface gatewayin4_x0 Type Fix_16_0
	dict set TopLevelPortInterface gatewayin4_x0 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayin4_x0 BinaryPoint 0
	dict set TopLevelPortInterface gatewayin4_x0 Width 16
	dict set TopLevelPortInterface gatewayin4_x0 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_signal_to_adclanes_receive_real_gatewayin4.dat}
	dict set TopLevelPortInterface gatewayin4_x0 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/Signal to ADCLanes/receive_real/GatewayIn4}
	dict set TopLevelPortInterface gatewayin4_x0 Direction in
	dict set TopLevelPortInterface gatewayin4_x0 Period 1
	dict set TopLevelPortInterface gatewayin4_x0 Interface 0
	dict set TopLevelPortInterface gatewayin4_x0 InterfaceName {}
	dict set TopLevelPortInterface gatewayin4_x0 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayin4_x0 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayin4_x0 Locs {}
	dict set TopLevelPortInterface gatewayin4_x0 IOStandard {}
	dict set TopLevelPortInterface gatewayin3_x0 Name {gatewayin3_x0}
	dict set TopLevelPortInterface gatewayin3_x0 Type Fix_16_0
	dict set TopLevelPortInterface gatewayin3_x0 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayin3_x0 BinaryPoint 0
	dict set TopLevelPortInterface gatewayin3_x0 Width 16
	dict set TopLevelPortInterface gatewayin3_x0 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_signal_to_adclanes_receive_real_gatewayin3.dat}
	dict set TopLevelPortInterface gatewayin3_x0 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/Signal to ADCLanes/receive_real/GatewayIn3}
	dict set TopLevelPortInterface gatewayin3_x0 Direction in
	dict set TopLevelPortInterface gatewayin3_x0 Period 1
	dict set TopLevelPortInterface gatewayin3_x0 Interface 0
	dict set TopLevelPortInterface gatewayin3_x0 InterfaceName {}
	dict set TopLevelPortInterface gatewayin3_x0 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayin3_x0 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayin3_x0 Locs {}
	dict set TopLevelPortInterface gatewayin3_x0 IOStandard {}
	dict set TopLevelPortInterface gatewayin2_x0 Name {gatewayin2_x0}
	dict set TopLevelPortInterface gatewayin2_x0 Type Fix_16_0
	dict set TopLevelPortInterface gatewayin2_x0 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayin2_x0 BinaryPoint 0
	dict set TopLevelPortInterface gatewayin2_x0 Width 16
	dict set TopLevelPortInterface gatewayin2_x0 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_signal_to_adclanes_receive_real_gatewayin2.dat}
	dict set TopLevelPortInterface gatewayin2_x0 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/Signal to ADCLanes/receive_real/GatewayIn2}
	dict set TopLevelPortInterface gatewayin2_x0 Direction in
	dict set TopLevelPortInterface gatewayin2_x0 Period 1
	dict set TopLevelPortInterface gatewayin2_x0 Interface 0
	dict set TopLevelPortInterface gatewayin2_x0 InterfaceName {}
	dict set TopLevelPortInterface gatewayin2_x0 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayin2_x0 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayin2_x0 Locs {}
	dict set TopLevelPortInterface gatewayin2_x0 IOStandard {}
	dict set TopLevelPortInterface gatewayin1_x0 Name {gatewayin1_x0}
	dict set TopLevelPortInterface gatewayin1_x0 Type Fix_16_0
	dict set TopLevelPortInterface gatewayin1_x0 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayin1_x0 BinaryPoint 0
	dict set TopLevelPortInterface gatewayin1_x0 Width 16
	dict set TopLevelPortInterface gatewayin1_x0 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_signal_to_adclanes_receive_real_gatewayin1.dat}
	dict set TopLevelPortInterface gatewayin1_x0 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/Signal to ADCLanes/receive_real/GatewayIn1}
	dict set TopLevelPortInterface gatewayin1_x0 Direction in
	dict set TopLevelPortInterface gatewayin1_x0 Period 1
	dict set TopLevelPortInterface gatewayin1_x0 Interface 0
	dict set TopLevelPortInterface gatewayin1_x0 InterfaceName {}
	dict set TopLevelPortInterface gatewayin1_x0 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayin1_x0 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayin1_x0 Locs {}
	dict set TopLevelPortInterface gatewayin1_x0 IOStandard {}
	dict set TopLevelPortInterface gatewayin0_x0 Name {gatewayin0_x0}
	dict set TopLevelPortInterface gatewayin0_x0 Type Fix_16_0
	dict set TopLevelPortInterface gatewayin0_x0 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayin0_x0 BinaryPoint 0
	dict set TopLevelPortInterface gatewayin0_x0 Width 16
	dict set TopLevelPortInterface gatewayin0_x0 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_signal_to_adclanes_receive_real_gatewayin0.dat}
	dict set TopLevelPortInterface gatewayin0_x0 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/Signal to ADCLanes/receive_real/GatewayIn0}
	dict set TopLevelPortInterface gatewayin0_x0 Direction in
	dict set TopLevelPortInterface gatewayin0_x0 Period 1
	dict set TopLevelPortInterface gatewayin0_x0 Interface 0
	dict set TopLevelPortInterface gatewayin0_x0 InterfaceName {}
	dict set TopLevelPortInterface gatewayin0_x0 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayin0_x0 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayin0_x0 Locs {}
	dict set TopLevelPortInterface gatewayin0_x0 IOStandard {}
	dict set TopLevelPortInterface gatewayin15 Name {gatewayin15}
	dict set TopLevelPortInterface gatewayin15 Type Fix_16_0
	dict set TopLevelPortInterface gatewayin15 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayin15 BinaryPoint 0
	dict set TopLevelPortInterface gatewayin15 Width 16
	dict set TopLevelPortInterface gatewayin15 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_signal_to_adclanes_receive_imag_gatewayin15.dat}
	dict set TopLevelPortInterface gatewayin15 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/Signal to ADCLanes/receive_imag/GatewayIn15}
	dict set TopLevelPortInterface gatewayin15 Direction in
	dict set TopLevelPortInterface gatewayin15 Period 1
	dict set TopLevelPortInterface gatewayin15 Interface 0
	dict set TopLevelPortInterface gatewayin15 InterfaceName {}
	dict set TopLevelPortInterface gatewayin15 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayin15 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayin15 Locs {}
	dict set TopLevelPortInterface gatewayin15 IOStandard {}
	dict set TopLevelPortInterface gatewayin14 Name {gatewayin14}
	dict set TopLevelPortInterface gatewayin14 Type Fix_16_0
	dict set TopLevelPortInterface gatewayin14 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayin14 BinaryPoint 0
	dict set TopLevelPortInterface gatewayin14 Width 16
	dict set TopLevelPortInterface gatewayin14 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_signal_to_adclanes_receive_imag_gatewayin14.dat}
	dict set TopLevelPortInterface gatewayin14 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/Signal to ADCLanes/receive_imag/GatewayIn14}
	dict set TopLevelPortInterface gatewayin14 Direction in
	dict set TopLevelPortInterface gatewayin14 Period 1
	dict set TopLevelPortInterface gatewayin14 Interface 0
	dict set TopLevelPortInterface gatewayin14 InterfaceName {}
	dict set TopLevelPortInterface gatewayin14 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayin14 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayin14 Locs {}
	dict set TopLevelPortInterface gatewayin14 IOStandard {}
	dict set TopLevelPortInterface gatewayin13 Name {gatewayin13}
	dict set TopLevelPortInterface gatewayin13 Type Fix_16_0
	dict set TopLevelPortInterface gatewayin13 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayin13 BinaryPoint 0
	dict set TopLevelPortInterface gatewayin13 Width 16
	dict set TopLevelPortInterface gatewayin13 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_signal_to_adclanes_receive_imag_gatewayin13.dat}
	dict set TopLevelPortInterface gatewayin13 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/Signal to ADCLanes/receive_imag/GatewayIn13}
	dict set TopLevelPortInterface gatewayin13 Direction in
	dict set TopLevelPortInterface gatewayin13 Period 1
	dict set TopLevelPortInterface gatewayin13 Interface 0
	dict set TopLevelPortInterface gatewayin13 InterfaceName {}
	dict set TopLevelPortInterface gatewayin13 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayin13 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayin13 Locs {}
	dict set TopLevelPortInterface gatewayin13 IOStandard {}
	dict set TopLevelPortInterface gatewayin12 Name {gatewayin12}
	dict set TopLevelPortInterface gatewayin12 Type Fix_16_0
	dict set TopLevelPortInterface gatewayin12 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayin12 BinaryPoint 0
	dict set TopLevelPortInterface gatewayin12 Width 16
	dict set TopLevelPortInterface gatewayin12 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_signal_to_adclanes_receive_imag_gatewayin12.dat}
	dict set TopLevelPortInterface gatewayin12 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/Signal to ADCLanes/receive_imag/GatewayIn12}
	dict set TopLevelPortInterface gatewayin12 Direction in
	dict set TopLevelPortInterface gatewayin12 Period 1
	dict set TopLevelPortInterface gatewayin12 Interface 0
	dict set TopLevelPortInterface gatewayin12 InterfaceName {}
	dict set TopLevelPortInterface gatewayin12 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayin12 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayin12 Locs {}
	dict set TopLevelPortInterface gatewayin12 IOStandard {}
	dict set TopLevelPortInterface gatewayin11 Name {gatewayin11}
	dict set TopLevelPortInterface gatewayin11 Type Fix_16_0
	dict set TopLevelPortInterface gatewayin11 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayin11 BinaryPoint 0
	dict set TopLevelPortInterface gatewayin11 Width 16
	dict set TopLevelPortInterface gatewayin11 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_signal_to_adclanes_receive_imag_gatewayin11.dat}
	dict set TopLevelPortInterface gatewayin11 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/Signal to ADCLanes/receive_imag/GatewayIn11}
	dict set TopLevelPortInterface gatewayin11 Direction in
	dict set TopLevelPortInterface gatewayin11 Period 1
	dict set TopLevelPortInterface gatewayin11 Interface 0
	dict set TopLevelPortInterface gatewayin11 InterfaceName {}
	dict set TopLevelPortInterface gatewayin11 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayin11 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayin11 Locs {}
	dict set TopLevelPortInterface gatewayin11 IOStandard {}
	dict set TopLevelPortInterface gatewayin10 Name {gatewayin10}
	dict set TopLevelPortInterface gatewayin10 Type Fix_16_0
	dict set TopLevelPortInterface gatewayin10 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayin10 BinaryPoint 0
	dict set TopLevelPortInterface gatewayin10 Width 16
	dict set TopLevelPortInterface gatewayin10 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_signal_to_adclanes_receive_imag_gatewayin10.dat}
	dict set TopLevelPortInterface gatewayin10 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/Signal to ADCLanes/receive_imag/GatewayIn10}
	dict set TopLevelPortInterface gatewayin10 Direction in
	dict set TopLevelPortInterface gatewayin10 Period 1
	dict set TopLevelPortInterface gatewayin10 Interface 0
	dict set TopLevelPortInterface gatewayin10 InterfaceName {}
	dict set TopLevelPortInterface gatewayin10 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayin10 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayin10 Locs {}
	dict set TopLevelPortInterface gatewayin10 IOStandard {}
	dict set TopLevelPortInterface gatewayin9 Name {gatewayin9}
	dict set TopLevelPortInterface gatewayin9 Type Fix_16_0
	dict set TopLevelPortInterface gatewayin9 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayin9 BinaryPoint 0
	dict set TopLevelPortInterface gatewayin9 Width 16
	dict set TopLevelPortInterface gatewayin9 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_signal_to_adclanes_receive_imag_gatewayin9.dat}
	dict set TopLevelPortInterface gatewayin9 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/Signal to ADCLanes/receive_imag/GatewayIn9}
	dict set TopLevelPortInterface gatewayin9 Direction in
	dict set TopLevelPortInterface gatewayin9 Period 1
	dict set TopLevelPortInterface gatewayin9 Interface 0
	dict set TopLevelPortInterface gatewayin9 InterfaceName {}
	dict set TopLevelPortInterface gatewayin9 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayin9 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayin9 Locs {}
	dict set TopLevelPortInterface gatewayin9 IOStandard {}
	dict set TopLevelPortInterface gatewayin8 Name {gatewayin8}
	dict set TopLevelPortInterface gatewayin8 Type Fix_16_0
	dict set TopLevelPortInterface gatewayin8 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayin8 BinaryPoint 0
	dict set TopLevelPortInterface gatewayin8 Width 16
	dict set TopLevelPortInterface gatewayin8 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_signal_to_adclanes_receive_imag_gatewayin8.dat}
	dict set TopLevelPortInterface gatewayin8 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/Signal to ADCLanes/receive_imag/GatewayIn8}
	dict set TopLevelPortInterface gatewayin8 Direction in
	dict set TopLevelPortInterface gatewayin8 Period 1
	dict set TopLevelPortInterface gatewayin8 Interface 0
	dict set TopLevelPortInterface gatewayin8 InterfaceName {}
	dict set TopLevelPortInterface gatewayin8 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayin8 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayin8 Locs {}
	dict set TopLevelPortInterface gatewayin8 IOStandard {}
	dict set TopLevelPortInterface gatewayin7 Name {gatewayin7}
	dict set TopLevelPortInterface gatewayin7 Type Fix_16_0
	dict set TopLevelPortInterface gatewayin7 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayin7 BinaryPoint 0
	dict set TopLevelPortInterface gatewayin7 Width 16
	dict set TopLevelPortInterface gatewayin7 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_signal_to_adclanes_receive_imag_gatewayin7.dat}
	dict set TopLevelPortInterface gatewayin7 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/Signal to ADCLanes/receive_imag/GatewayIn7}
	dict set TopLevelPortInterface gatewayin7 Direction in
	dict set TopLevelPortInterface gatewayin7 Period 1
	dict set TopLevelPortInterface gatewayin7 Interface 0
	dict set TopLevelPortInterface gatewayin7 InterfaceName {}
	dict set TopLevelPortInterface gatewayin7 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayin7 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayin7 Locs {}
	dict set TopLevelPortInterface gatewayin7 IOStandard {}
	dict set TopLevelPortInterface gatewayin6 Name {gatewayin6}
	dict set TopLevelPortInterface gatewayin6 Type Fix_16_0
	dict set TopLevelPortInterface gatewayin6 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayin6 BinaryPoint 0
	dict set TopLevelPortInterface gatewayin6 Width 16
	dict set TopLevelPortInterface gatewayin6 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_signal_to_adclanes_receive_imag_gatewayin6.dat}
	dict set TopLevelPortInterface gatewayin6 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/Signal to ADCLanes/receive_imag/GatewayIn6}
	dict set TopLevelPortInterface gatewayin6 Direction in
	dict set TopLevelPortInterface gatewayin6 Period 1
	dict set TopLevelPortInterface gatewayin6 Interface 0
	dict set TopLevelPortInterface gatewayin6 InterfaceName {}
	dict set TopLevelPortInterface gatewayin6 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayin6 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayin6 Locs {}
	dict set TopLevelPortInterface gatewayin6 IOStandard {}
	dict set TopLevelPortInterface gatewayin5 Name {gatewayin5}
	dict set TopLevelPortInterface gatewayin5 Type Fix_16_0
	dict set TopLevelPortInterface gatewayin5 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayin5 BinaryPoint 0
	dict set TopLevelPortInterface gatewayin5 Width 16
	dict set TopLevelPortInterface gatewayin5 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_signal_to_adclanes_receive_imag_gatewayin5.dat}
	dict set TopLevelPortInterface gatewayin5 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/Signal to ADCLanes/receive_imag/GatewayIn5}
	dict set TopLevelPortInterface gatewayin5 Direction in
	dict set TopLevelPortInterface gatewayin5 Period 1
	dict set TopLevelPortInterface gatewayin5 Interface 0
	dict set TopLevelPortInterface gatewayin5 InterfaceName {}
	dict set TopLevelPortInterface gatewayin5 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayin5 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayin5 Locs {}
	dict set TopLevelPortInterface gatewayin5 IOStandard {}
	dict set TopLevelPortInterface gatewayin4 Name {gatewayin4}
	dict set TopLevelPortInterface gatewayin4 Type Fix_16_0
	dict set TopLevelPortInterface gatewayin4 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayin4 BinaryPoint 0
	dict set TopLevelPortInterface gatewayin4 Width 16
	dict set TopLevelPortInterface gatewayin4 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_signal_to_adclanes_receive_imag_gatewayin4.dat}
	dict set TopLevelPortInterface gatewayin4 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/Signal to ADCLanes/receive_imag/GatewayIn4}
	dict set TopLevelPortInterface gatewayin4 Direction in
	dict set TopLevelPortInterface gatewayin4 Period 1
	dict set TopLevelPortInterface gatewayin4 Interface 0
	dict set TopLevelPortInterface gatewayin4 InterfaceName {}
	dict set TopLevelPortInterface gatewayin4 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayin4 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayin4 Locs {}
	dict set TopLevelPortInterface gatewayin4 IOStandard {}
	dict set TopLevelPortInterface gatewayin3 Name {gatewayin3}
	dict set TopLevelPortInterface gatewayin3 Type Fix_16_0
	dict set TopLevelPortInterface gatewayin3 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayin3 BinaryPoint 0
	dict set TopLevelPortInterface gatewayin3 Width 16
	dict set TopLevelPortInterface gatewayin3 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_signal_to_adclanes_receive_imag_gatewayin3.dat}
	dict set TopLevelPortInterface gatewayin3 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/Signal to ADCLanes/receive_imag/GatewayIn3}
	dict set TopLevelPortInterface gatewayin3 Direction in
	dict set TopLevelPortInterface gatewayin3 Period 1
	dict set TopLevelPortInterface gatewayin3 Interface 0
	dict set TopLevelPortInterface gatewayin3 InterfaceName {}
	dict set TopLevelPortInterface gatewayin3 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayin3 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayin3 Locs {}
	dict set TopLevelPortInterface gatewayin3 IOStandard {}
	dict set TopLevelPortInterface gatewayin2 Name {gatewayin2}
	dict set TopLevelPortInterface gatewayin2 Type Fix_16_0
	dict set TopLevelPortInterface gatewayin2 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayin2 BinaryPoint 0
	dict set TopLevelPortInterface gatewayin2 Width 16
	dict set TopLevelPortInterface gatewayin2 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_signal_to_adclanes_receive_imag_gatewayin2.dat}
	dict set TopLevelPortInterface gatewayin2 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/Signal to ADCLanes/receive_imag/GatewayIn2}
	dict set TopLevelPortInterface gatewayin2 Direction in
	dict set TopLevelPortInterface gatewayin2 Period 1
	dict set TopLevelPortInterface gatewayin2 Interface 0
	dict set TopLevelPortInterface gatewayin2 InterfaceName {}
	dict set TopLevelPortInterface gatewayin2 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayin2 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayin2 Locs {}
	dict set TopLevelPortInterface gatewayin2 IOStandard {}
	dict set TopLevelPortInterface gatewayin1 Name {gatewayin1}
	dict set TopLevelPortInterface gatewayin1 Type Fix_16_0
	dict set TopLevelPortInterface gatewayin1 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayin1 BinaryPoint 0
	dict set TopLevelPortInterface gatewayin1 Width 16
	dict set TopLevelPortInterface gatewayin1 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_signal_to_adclanes_receive_imag_gatewayin1.dat}
	dict set TopLevelPortInterface gatewayin1 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/Signal to ADCLanes/receive_imag/GatewayIn1}
	dict set TopLevelPortInterface gatewayin1 Direction in
	dict set TopLevelPortInterface gatewayin1 Period 1
	dict set TopLevelPortInterface gatewayin1 Interface 0
	dict set TopLevelPortInterface gatewayin1 InterfaceName {}
	dict set TopLevelPortInterface gatewayin1 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayin1 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayin1 Locs {}
	dict set TopLevelPortInterface gatewayin1 IOStandard {}
	dict set TopLevelPortInterface gatewayin0 Name {gatewayin0}
	dict set TopLevelPortInterface gatewayin0 Type Fix_16_0
	dict set TopLevelPortInterface gatewayin0 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayin0 BinaryPoint 0
	dict set TopLevelPortInterface gatewayin0 Width 16
	dict set TopLevelPortInterface gatewayin0 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_signal_to_adclanes_receive_imag_gatewayin0.dat}
	dict set TopLevelPortInterface gatewayin0 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/Signal to ADCLanes/receive_imag/GatewayIn0}
	dict set TopLevelPortInterface gatewayin0 Direction in
	dict set TopLevelPortInterface gatewayin0 Period 1
	dict set TopLevelPortInterface gatewayin0 Interface 0
	dict set TopLevelPortInterface gatewayin0 InterfaceName {}
	dict set TopLevelPortInterface gatewayin0 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayin0 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayin0 Locs {}
	dict set TopLevelPortInterface gatewayin0 IOStandard {}
	dict set TopLevelPortInterface valid1_dealy Name {valid1_dealy}
	dict set TopLevelPortInterface valid1_dealy Type UFix_10_0
	dict set TopLevelPortInterface valid1_dealy ArithmeticType xlUnsigned
	dict set TopLevelPortInterface valid1_dealy BinaryPoint 0
	dict set TopLevelPortInterface valid1_dealy Width 10
	dict set TopLevelPortInterface valid1_dealy DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_valid1_dealy.dat}
	dict set TopLevelPortInterface valid1_dealy IconText {valid1_dealy}
	dict set TopLevelPortInterface valid1_dealy Direction in
	dict set TopLevelPortInterface valid1_dealy Period 1
	dict set TopLevelPortInterface valid1_dealy Interface 0
	dict set TopLevelPortInterface valid1_dealy InterfaceName {}
	dict set TopLevelPortInterface valid1_dealy InterfaceString {DATA}
	dict set TopLevelPortInterface valid1_dealy ClockDomain {analysis}
	dict set TopLevelPortInterface valid1_dealy Locs {}
	dict set TopLevelPortInterface valid1_dealy IOStandard {}
	dict set TopLevelPortInterface valid_in Name {valid_in}
	dict set TopLevelPortInterface valid_in Type Bool
	dict set TopLevelPortInterface valid_in ArithmeticType xlUnsigned
	dict set TopLevelPortInterface valid_in BinaryPoint 0
	dict set TopLevelPortInterface valid_in Width 1
	dict set TopLevelPortInterface valid_in DatFile {receivetransmitchai_jan31st2022_analysis_analysis_valid_in.dat}
	dict set TopLevelPortInterface valid_in IconText {valid_in}
	dict set TopLevelPortInterface valid_in Direction in
	dict set TopLevelPortInterface valid_in Period 1
	dict set TopLevelPortInterface valid_in Interface 0
	dict set TopLevelPortInterface valid_in InterfaceName {}
	dict set TopLevelPortInterface valid_in InterfaceString {DATA}
	dict set TopLevelPortInterface valid_in ClockDomain {analysis}
	dict set TopLevelPortInterface valid_in Locs {}
	dict set TopLevelPortInterface valid_in IOStandard {}
	dict set TopLevelPortInterface swap_iq Name {swap_iq}
	dict set TopLevelPortInterface swap_iq Type Bool
	dict set TopLevelPortInterface swap_iq ArithmeticType xlUnsigned
	dict set TopLevelPortInterface swap_iq BinaryPoint 0
	dict set TopLevelPortInterface swap_iq Width 1
	dict set TopLevelPortInterface swap_iq DatFile {receivetransmitchai_jan31st2022_analysis_analysis_swap_iq.dat}
	dict set TopLevelPortInterface swap_iq IconText {swap_iq}
	dict set TopLevelPortInterface swap_iq Direction in
	dict set TopLevelPortInterface swap_iq Period 128
	dict set TopLevelPortInterface swap_iq Interface 0
	dict set TopLevelPortInterface swap_iq InterfaceName {}
	dict set TopLevelPortInterface swap_iq InterfaceString {DATA}
	dict set TopLevelPortInterface swap_iq ClockDomain {analysis}
	dict set TopLevelPortInterface swap_iq Locs {}
	dict set TopLevelPortInterface swap_iq IOStandard {}
	dict set TopLevelPortInterface reset Name {reset}
	dict set TopLevelPortInterface reset Type Bool
	dict set TopLevelPortInterface reset ArithmeticType xlUnsigned
	dict set TopLevelPortInterface reset BinaryPoint 0
	dict set TopLevelPortInterface reset Width 1
	dict set TopLevelPortInterface reset DatFile {receivetransmitchai_jan31st2022_analysis_analysis_reset.dat}
	dict set TopLevelPortInterface reset IconText {reset}
	dict set TopLevelPortInterface reset Direction in
	dict set TopLevelPortInterface reset Period 1
	dict set TopLevelPortInterface reset Interface 0
	dict set TopLevelPortInterface reset InterfaceName {}
	dict set TopLevelPortInterface reset InterfaceString {DATA}
	dict set TopLevelPortInterface reset ClockDomain {analysis}
	dict set TopLevelPortInterface reset Locs {}
	dict set TopLevelPortInterface reset IOStandard {}
	dict set TopLevelPortInterface receivep0_scale Name {receivep0_scale}
	dict set TopLevelPortInterface receivep0_scale Type UFix_2_0
	dict set TopLevelPortInterface receivep0_scale ArithmeticType xlUnsigned
	dict set TopLevelPortInterface receivep0_scale BinaryPoint 0
	dict set TopLevelPortInterface receivep0_scale Width 2
	dict set TopLevelPortInterface receivep0_scale DatFile {receivetransmitchai_jan31st2022_analysis_analysis_receivep0_scale.dat}
	dict set TopLevelPortInterface receivep0_scale IconText {receivep0_scale}
	dict set TopLevelPortInterface receivep0_scale Direction in
	dict set TopLevelPortInterface receivep0_scale Period 128
	dict set TopLevelPortInterface receivep0_scale Interface 0
	dict set TopLevelPortInterface receivep0_scale InterfaceName {}
	dict set TopLevelPortInterface receivep0_scale InterfaceString {DATA}
	dict set TopLevelPortInterface receivep0_scale ClockDomain {analysis}
	dict set TopLevelPortInterface receivep0_scale Locs {}
	dict set TopLevelPortInterface receivep0_scale IOStandard {}
	dict set TopLevelPortInterface overflow_reset Name {overflow_reset}
	dict set TopLevelPortInterface overflow_reset Type Bool
	dict set TopLevelPortInterface overflow_reset ArithmeticType xlUnsigned
	dict set TopLevelPortInterface overflow_reset BinaryPoint 0
	dict set TopLevelPortInterface overflow_reset Width 1
	dict set TopLevelPortInterface overflow_reset DatFile {receivetransmitchai_jan31st2022_analysis_analysis_overflow_reset.dat}
	dict set TopLevelPortInterface overflow_reset IconText {overflow_reset}
	dict set TopLevelPortInterface overflow_reset Direction in
	dict set TopLevelPortInterface overflow_reset Period 128
	dict set TopLevelPortInterface overflow_reset Interface 0
	dict set TopLevelPortInterface overflow_reset InterfaceName {}
	dict set TopLevelPortInterface overflow_reset InterfaceString {DATA}
	dict set TopLevelPortInterface overflow_reset ClockDomain {analysis}
	dict set TopLevelPortInterface overflow_reset Locs {}
	dict set TopLevelPortInterface overflow_reset IOStandard {}
	dict set TopLevelPortInterface transmit_scale Name {transmit_scale}
	dict set TopLevelPortInterface transmit_scale Type UFix_2_0
	dict set TopLevelPortInterface transmit_scale ArithmeticType xlUnsigned
	dict set TopLevelPortInterface transmit_scale BinaryPoint 0
	dict set TopLevelPortInterface transmit_scale Width 2
	dict set TopLevelPortInterface transmit_scale DatFile {receivetransmitchai_jan31st2022_analysis_analysis_transmit_scale.dat}
	dict set TopLevelPortInterface transmit_scale IconText {Transmit_scale}
	dict set TopLevelPortInterface transmit_scale Direction in
	dict set TopLevelPortInterface transmit_scale Period 128
	dict set TopLevelPortInterface transmit_scale Interface 0
	dict set TopLevelPortInterface transmit_scale InterfaceName {}
	dict set TopLevelPortInterface transmit_scale InterfaceString {DATA}
	dict set TopLevelPortInterface transmit_scale ClockDomain {analysis}
	dict set TopLevelPortInterface transmit_scale Locs {}
	dict set TopLevelPortInterface transmit_scale IOStandard {}
	dict set TopLevelPortInterface transmitp0_sel Name {transmitp0_sel}
	dict set TopLevelPortInterface transmitp0_sel Type UFix_2_0
	dict set TopLevelPortInterface transmitp0_sel ArithmeticType xlUnsigned
	dict set TopLevelPortInterface transmitp0_sel BinaryPoint 0
	dict set TopLevelPortInterface transmitp0_sel Width 2
	dict set TopLevelPortInterface transmitp0_sel DatFile {receivetransmitchai_jan31st2022_analysis_analysis_transmitp0_sel.dat}
	dict set TopLevelPortInterface transmitp0_sel IconText {TransmitP0_sel}
	dict set TopLevelPortInterface transmitp0_sel Direction in
	dict set TopLevelPortInterface transmitp0_sel Period 128
	dict set TopLevelPortInterface transmitp0_sel Interface 0
	dict set TopLevelPortInterface transmitp0_sel InterfaceName {}
	dict set TopLevelPortInterface transmitp0_sel InterfaceString {DATA}
	dict set TopLevelPortInterface transmitp0_sel ClockDomain {analysis}
	dict set TopLevelPortInterface transmitp0_sel Locs {}
	dict set TopLevelPortInterface transmitp0_sel IOStandard {}
	dict set TopLevelPortInterface receive_vo1 Name {receive_vo1}
	dict set TopLevelPortInterface receive_vo1 Type Bool
	dict set TopLevelPortInterface receive_vo1 ArithmeticType xlUnsigned
	dict set TopLevelPortInterface receive_vo1 BinaryPoint 0
	dict set TopLevelPortInterface receive_vo1 Width 1
	dict set TopLevelPortInterface receive_vo1 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_vo1.dat}
	dict set TopLevelPortInterface receive_vo1 IconText {receive_vo1}
	dict set TopLevelPortInterface receive_vo1 Direction out
	dict set TopLevelPortInterface receive_vo1 Period 1
	dict set TopLevelPortInterface receive_vo1 Interface 0
	dict set TopLevelPortInterface receive_vo1 InterfaceName {}
	dict set TopLevelPortInterface receive_vo1 InterfaceString {DATA}
	dict set TopLevelPortInterface receive_vo1 ClockDomain {analysis}
	dict set TopLevelPortInterface receive_vo1 Locs {}
	dict set TopLevelPortInterface receive_vo1 IOStandard {}
	dict set TopLevelPortInterface receive_vo2 Name {receive_vo2}
	dict set TopLevelPortInterface receive_vo2 Type Bool
	dict set TopLevelPortInterface receive_vo2 ArithmeticType xlUnsigned
	dict set TopLevelPortInterface receive_vo2 BinaryPoint 0
	dict set TopLevelPortInterface receive_vo2 Width 1
	dict set TopLevelPortInterface receive_vo2 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_vo2.dat}
	dict set TopLevelPortInterface receive_vo2 IconText {receive_vo2}
	dict set TopLevelPortInterface receive_vo2 Direction out
	dict set TopLevelPortInterface receive_vo2 Period 1
	dict set TopLevelPortInterface receive_vo2 Interface 0
	dict set TopLevelPortInterface receive_vo2 InterfaceName {}
	dict set TopLevelPortInterface receive_vo2 InterfaceString {DATA}
	dict set TopLevelPortInterface receive_vo2 ClockDomain {analysis}
	dict set TopLevelPortInterface receive_vo2 Locs {}
	dict set TopLevelPortInterface receive_vo2 IOStandard {}
	dict set TopLevelPortInterface gatewayout0_x1 Name {gatewayout0_x1}
	dict set TopLevelPortInterface gatewayout0_x1 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout0_x1 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout0_x1 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout0_x1 Width 18
	dict set TopLevelPortInterface gatewayout0_x1 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_imout_gatewayout0.dat}
	dict set TopLevelPortInterface gatewayout0_x1 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_imout/GatewayOut0}
	dict set TopLevelPortInterface gatewayout0_x1 Direction out
	dict set TopLevelPortInterface gatewayout0_x1 Period 1
	dict set TopLevelPortInterface gatewayout0_x1 Interface 0
	dict set TopLevelPortInterface gatewayout0_x1 InterfaceName {}
	dict set TopLevelPortInterface gatewayout0_x1 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout0_x1 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout0_x1 Locs {}
	dict set TopLevelPortInterface gatewayout0_x1 IOStandard {}
	dict set TopLevelPortInterface gatewayout1_x1 Name {gatewayout1_x1}
	dict set TopLevelPortInterface gatewayout1_x1 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout1_x1 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout1_x1 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout1_x1 Width 18
	dict set TopLevelPortInterface gatewayout1_x1 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_imout_gatewayout1.dat}
	dict set TopLevelPortInterface gatewayout1_x1 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_imout/GatewayOut1}
	dict set TopLevelPortInterface gatewayout1_x1 Direction out
	dict set TopLevelPortInterface gatewayout1_x1 Period 1
	dict set TopLevelPortInterface gatewayout1_x1 Interface 0
	dict set TopLevelPortInterface gatewayout1_x1 InterfaceName {}
	dict set TopLevelPortInterface gatewayout1_x1 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout1_x1 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout1_x1 Locs {}
	dict set TopLevelPortInterface gatewayout1_x1 IOStandard {}
	dict set TopLevelPortInterface gatewayout2_x1 Name {gatewayout2_x1}
	dict set TopLevelPortInterface gatewayout2_x1 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout2_x1 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout2_x1 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout2_x1 Width 18
	dict set TopLevelPortInterface gatewayout2_x1 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_imout_gatewayout2.dat}
	dict set TopLevelPortInterface gatewayout2_x1 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_imout/GatewayOut2}
	dict set TopLevelPortInterface gatewayout2_x1 Direction out
	dict set TopLevelPortInterface gatewayout2_x1 Period 1
	dict set TopLevelPortInterface gatewayout2_x1 Interface 0
	dict set TopLevelPortInterface gatewayout2_x1 InterfaceName {}
	dict set TopLevelPortInterface gatewayout2_x1 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout2_x1 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout2_x1 Locs {}
	dict set TopLevelPortInterface gatewayout2_x1 IOStandard {}
	dict set TopLevelPortInterface gatewayout3_x1 Name {gatewayout3_x1}
	dict set TopLevelPortInterface gatewayout3_x1 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout3_x1 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout3_x1 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout3_x1 Width 18
	dict set TopLevelPortInterface gatewayout3_x1 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_imout_gatewayout3.dat}
	dict set TopLevelPortInterface gatewayout3_x1 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_imout/GatewayOut3}
	dict set TopLevelPortInterface gatewayout3_x1 Direction out
	dict set TopLevelPortInterface gatewayout3_x1 Period 1
	dict set TopLevelPortInterface gatewayout3_x1 Interface 0
	dict set TopLevelPortInterface gatewayout3_x1 InterfaceName {}
	dict set TopLevelPortInterface gatewayout3_x1 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout3_x1 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout3_x1 Locs {}
	dict set TopLevelPortInterface gatewayout3_x1 IOStandard {}
	dict set TopLevelPortInterface gatewayout4_x1 Name {gatewayout4_x1}
	dict set TopLevelPortInterface gatewayout4_x1 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout4_x1 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout4_x1 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout4_x1 Width 18
	dict set TopLevelPortInterface gatewayout4_x1 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_imout_gatewayout4.dat}
	dict set TopLevelPortInterface gatewayout4_x1 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_imout/GatewayOut4}
	dict set TopLevelPortInterface gatewayout4_x1 Direction out
	dict set TopLevelPortInterface gatewayout4_x1 Period 1
	dict set TopLevelPortInterface gatewayout4_x1 Interface 0
	dict set TopLevelPortInterface gatewayout4_x1 InterfaceName {}
	dict set TopLevelPortInterface gatewayout4_x1 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout4_x1 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout4_x1 Locs {}
	dict set TopLevelPortInterface gatewayout4_x1 IOStandard {}
	dict set TopLevelPortInterface gatewayout5_x1 Name {gatewayout5_x1}
	dict set TopLevelPortInterface gatewayout5_x1 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout5_x1 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout5_x1 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout5_x1 Width 18
	dict set TopLevelPortInterface gatewayout5_x1 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_imout_gatewayout5.dat}
	dict set TopLevelPortInterface gatewayout5_x1 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_imout/GatewayOut5}
	dict set TopLevelPortInterface gatewayout5_x1 Direction out
	dict set TopLevelPortInterface gatewayout5_x1 Period 1
	dict set TopLevelPortInterface gatewayout5_x1 Interface 0
	dict set TopLevelPortInterface gatewayout5_x1 InterfaceName {}
	dict set TopLevelPortInterface gatewayout5_x1 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout5_x1 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout5_x1 Locs {}
	dict set TopLevelPortInterface gatewayout5_x1 IOStandard {}
	dict set TopLevelPortInterface gatewayout6_x1 Name {gatewayout6_x1}
	dict set TopLevelPortInterface gatewayout6_x1 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout6_x1 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout6_x1 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout6_x1 Width 18
	dict set TopLevelPortInterface gatewayout6_x1 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_imout_gatewayout6.dat}
	dict set TopLevelPortInterface gatewayout6_x1 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_imout/GatewayOut6}
	dict set TopLevelPortInterface gatewayout6_x1 Direction out
	dict set TopLevelPortInterface gatewayout6_x1 Period 1
	dict set TopLevelPortInterface gatewayout6_x1 Interface 0
	dict set TopLevelPortInterface gatewayout6_x1 InterfaceName {}
	dict set TopLevelPortInterface gatewayout6_x1 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout6_x1 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout6_x1 Locs {}
	dict set TopLevelPortInterface gatewayout6_x1 IOStandard {}
	dict set TopLevelPortInterface gatewayout7_x1 Name {gatewayout7_x1}
	dict set TopLevelPortInterface gatewayout7_x1 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout7_x1 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout7_x1 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout7_x1 Width 18
	dict set TopLevelPortInterface gatewayout7_x1 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_imout_gatewayout7.dat}
	dict set TopLevelPortInterface gatewayout7_x1 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_imout/GatewayOut7}
	dict set TopLevelPortInterface gatewayout7_x1 Direction out
	dict set TopLevelPortInterface gatewayout7_x1 Period 1
	dict set TopLevelPortInterface gatewayout7_x1 Interface 0
	dict set TopLevelPortInterface gatewayout7_x1 InterfaceName {}
	dict set TopLevelPortInterface gatewayout7_x1 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout7_x1 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout7_x1 Locs {}
	dict set TopLevelPortInterface gatewayout7_x1 IOStandard {}
	dict set TopLevelPortInterface gatewayout8_x1 Name {gatewayout8_x1}
	dict set TopLevelPortInterface gatewayout8_x1 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout8_x1 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout8_x1 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout8_x1 Width 18
	dict set TopLevelPortInterface gatewayout8_x1 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_imout_gatewayout8.dat}
	dict set TopLevelPortInterface gatewayout8_x1 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_imout/GatewayOut8}
	dict set TopLevelPortInterface gatewayout8_x1 Direction out
	dict set TopLevelPortInterface gatewayout8_x1 Period 1
	dict set TopLevelPortInterface gatewayout8_x1 Interface 0
	dict set TopLevelPortInterface gatewayout8_x1 InterfaceName {}
	dict set TopLevelPortInterface gatewayout8_x1 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout8_x1 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout8_x1 Locs {}
	dict set TopLevelPortInterface gatewayout8_x1 IOStandard {}
	dict set TopLevelPortInterface gatewayout9_x1 Name {gatewayout9_x1}
	dict set TopLevelPortInterface gatewayout9_x1 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout9_x1 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout9_x1 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout9_x1 Width 18
	dict set TopLevelPortInterface gatewayout9_x1 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_imout_gatewayout9.dat}
	dict set TopLevelPortInterface gatewayout9_x1 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_imout/GatewayOut9}
	dict set TopLevelPortInterface gatewayout9_x1 Direction out
	dict set TopLevelPortInterface gatewayout9_x1 Period 1
	dict set TopLevelPortInterface gatewayout9_x1 Interface 0
	dict set TopLevelPortInterface gatewayout9_x1 InterfaceName {}
	dict set TopLevelPortInterface gatewayout9_x1 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout9_x1 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout9_x1 Locs {}
	dict set TopLevelPortInterface gatewayout9_x1 IOStandard {}
	dict set TopLevelPortInterface gatewayout10_x1 Name {gatewayout10_x1}
	dict set TopLevelPortInterface gatewayout10_x1 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout10_x1 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout10_x1 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout10_x1 Width 18
	dict set TopLevelPortInterface gatewayout10_x1 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_imout_gatewayout10.dat}
	dict set TopLevelPortInterface gatewayout10_x1 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_imout/GatewayOut10}
	dict set TopLevelPortInterface gatewayout10_x1 Direction out
	dict set TopLevelPortInterface gatewayout10_x1 Period 1
	dict set TopLevelPortInterface gatewayout10_x1 Interface 0
	dict set TopLevelPortInterface gatewayout10_x1 InterfaceName {}
	dict set TopLevelPortInterface gatewayout10_x1 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout10_x1 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout10_x1 Locs {}
	dict set TopLevelPortInterface gatewayout10_x1 IOStandard {}
	dict set TopLevelPortInterface gatewayout11_x2 Name {gatewayout11_x2}
	dict set TopLevelPortInterface gatewayout11_x2 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout11_x2 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout11_x2 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout11_x2 Width 18
	dict set TopLevelPortInterface gatewayout11_x2 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_imout_gatewayout11.dat}
	dict set TopLevelPortInterface gatewayout11_x2 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_imout/GatewayOut11}
	dict set TopLevelPortInterface gatewayout11_x2 Direction out
	dict set TopLevelPortInterface gatewayout11_x2 Period 1
	dict set TopLevelPortInterface gatewayout11_x2 Interface 0
	dict set TopLevelPortInterface gatewayout11_x2 InterfaceName {}
	dict set TopLevelPortInterface gatewayout11_x2 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout11_x2 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout11_x2 Locs {}
	dict set TopLevelPortInterface gatewayout11_x2 IOStandard {}
	dict set TopLevelPortInterface gatewayout12_x2 Name {gatewayout12_x2}
	dict set TopLevelPortInterface gatewayout12_x2 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout12_x2 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout12_x2 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout12_x2 Width 18
	dict set TopLevelPortInterface gatewayout12_x2 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_imout_gatewayout12.dat}
	dict set TopLevelPortInterface gatewayout12_x2 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_imout/GatewayOut12}
	dict set TopLevelPortInterface gatewayout12_x2 Direction out
	dict set TopLevelPortInterface gatewayout12_x2 Period 1
	dict set TopLevelPortInterface gatewayout12_x2 Interface 0
	dict set TopLevelPortInterface gatewayout12_x2 InterfaceName {}
	dict set TopLevelPortInterface gatewayout12_x2 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout12_x2 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout12_x2 Locs {}
	dict set TopLevelPortInterface gatewayout12_x2 IOStandard {}
	dict set TopLevelPortInterface gatewayout13_x2 Name {gatewayout13_x2}
	dict set TopLevelPortInterface gatewayout13_x2 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout13_x2 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout13_x2 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout13_x2 Width 18
	dict set TopLevelPortInterface gatewayout13_x2 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_imout_gatewayout13.dat}
	dict set TopLevelPortInterface gatewayout13_x2 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_imout/GatewayOut13}
	dict set TopLevelPortInterface gatewayout13_x2 Direction out
	dict set TopLevelPortInterface gatewayout13_x2 Period 1
	dict set TopLevelPortInterface gatewayout13_x2 Interface 0
	dict set TopLevelPortInterface gatewayout13_x2 InterfaceName {}
	dict set TopLevelPortInterface gatewayout13_x2 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout13_x2 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout13_x2 Locs {}
	dict set TopLevelPortInterface gatewayout13_x2 IOStandard {}
	dict set TopLevelPortInterface gatewayout14_x2 Name {gatewayout14_x2}
	dict set TopLevelPortInterface gatewayout14_x2 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout14_x2 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout14_x2 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout14_x2 Width 18
	dict set TopLevelPortInterface gatewayout14_x2 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_imout_gatewayout14.dat}
	dict set TopLevelPortInterface gatewayout14_x2 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_imout/GatewayOut14}
	dict set TopLevelPortInterface gatewayout14_x2 Direction out
	dict set TopLevelPortInterface gatewayout14_x2 Period 1
	dict set TopLevelPortInterface gatewayout14_x2 Interface 0
	dict set TopLevelPortInterface gatewayout14_x2 InterfaceName {}
	dict set TopLevelPortInterface gatewayout14_x2 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout14_x2 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout14_x2 Locs {}
	dict set TopLevelPortInterface gatewayout14_x2 IOStandard {}
	dict set TopLevelPortInterface gatewayout15_x2 Name {gatewayout15_x2}
	dict set TopLevelPortInterface gatewayout15_x2 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout15_x2 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout15_x2 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout15_x2 Width 18
	dict set TopLevelPortInterface gatewayout15_x2 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_imout_gatewayout15.dat}
	dict set TopLevelPortInterface gatewayout15_x2 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_imout/GatewayOut15}
	dict set TopLevelPortInterface gatewayout15_x2 Direction out
	dict set TopLevelPortInterface gatewayout15_x2 Period 1
	dict set TopLevelPortInterface gatewayout15_x2 Interface 0
	dict set TopLevelPortInterface gatewayout15_x2 InterfaceName {}
	dict set TopLevelPortInterface gatewayout15_x2 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout15_x2 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout15_x2 Locs {}
	dict set TopLevelPortInterface gatewayout15_x2 IOStandard {}
	dict set TopLevelPortInterface gatewayout0_x2 Name {gatewayout0_x2}
	dict set TopLevelPortInterface gatewayout0_x2 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout0_x2 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout0_x2 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout0_x2 Width 18
	dict set TopLevelPortInterface gatewayout0_x2 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_imout1_gatewayout0.dat}
	dict set TopLevelPortInterface gatewayout0_x2 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_imout1/GatewayOut0}
	dict set TopLevelPortInterface gatewayout0_x2 Direction out
	dict set TopLevelPortInterface gatewayout0_x2 Period 1
	dict set TopLevelPortInterface gatewayout0_x2 Interface 0
	dict set TopLevelPortInterface gatewayout0_x2 InterfaceName {}
	dict set TopLevelPortInterface gatewayout0_x2 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout0_x2 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout0_x2 Locs {}
	dict set TopLevelPortInterface gatewayout0_x2 IOStandard {}
	dict set TopLevelPortInterface gatewayout1_x2 Name {gatewayout1_x2}
	dict set TopLevelPortInterface gatewayout1_x2 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout1_x2 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout1_x2 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout1_x2 Width 18
	dict set TopLevelPortInterface gatewayout1_x2 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_imout1_gatewayout1.dat}
	dict set TopLevelPortInterface gatewayout1_x2 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_imout1/GatewayOut1}
	dict set TopLevelPortInterface gatewayout1_x2 Direction out
	dict set TopLevelPortInterface gatewayout1_x2 Period 1
	dict set TopLevelPortInterface gatewayout1_x2 Interface 0
	dict set TopLevelPortInterface gatewayout1_x2 InterfaceName {}
	dict set TopLevelPortInterface gatewayout1_x2 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout1_x2 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout1_x2 Locs {}
	dict set TopLevelPortInterface gatewayout1_x2 IOStandard {}
	dict set TopLevelPortInterface gatewayout2_x2 Name {gatewayout2_x2}
	dict set TopLevelPortInterface gatewayout2_x2 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout2_x2 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout2_x2 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout2_x2 Width 18
	dict set TopLevelPortInterface gatewayout2_x2 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_imout1_gatewayout2.dat}
	dict set TopLevelPortInterface gatewayout2_x2 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_imout1/GatewayOut2}
	dict set TopLevelPortInterface gatewayout2_x2 Direction out
	dict set TopLevelPortInterface gatewayout2_x2 Period 1
	dict set TopLevelPortInterface gatewayout2_x2 Interface 0
	dict set TopLevelPortInterface gatewayout2_x2 InterfaceName {}
	dict set TopLevelPortInterface gatewayout2_x2 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout2_x2 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout2_x2 Locs {}
	dict set TopLevelPortInterface gatewayout2_x2 IOStandard {}
	dict set TopLevelPortInterface gatewayout3_x2 Name {gatewayout3_x2}
	dict set TopLevelPortInterface gatewayout3_x2 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout3_x2 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout3_x2 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout3_x2 Width 18
	dict set TopLevelPortInterface gatewayout3_x2 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_imout1_gatewayout3.dat}
	dict set TopLevelPortInterface gatewayout3_x2 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_imout1/GatewayOut3}
	dict set TopLevelPortInterface gatewayout3_x2 Direction out
	dict set TopLevelPortInterface gatewayout3_x2 Period 1
	dict set TopLevelPortInterface gatewayout3_x2 Interface 0
	dict set TopLevelPortInterface gatewayout3_x2 InterfaceName {}
	dict set TopLevelPortInterface gatewayout3_x2 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout3_x2 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout3_x2 Locs {}
	dict set TopLevelPortInterface gatewayout3_x2 IOStandard {}
	dict set TopLevelPortInterface gatewayout4_x2 Name {gatewayout4_x2}
	dict set TopLevelPortInterface gatewayout4_x2 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout4_x2 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout4_x2 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout4_x2 Width 18
	dict set TopLevelPortInterface gatewayout4_x2 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_imout1_gatewayout4.dat}
	dict set TopLevelPortInterface gatewayout4_x2 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_imout1/GatewayOut4}
	dict set TopLevelPortInterface gatewayout4_x2 Direction out
	dict set TopLevelPortInterface gatewayout4_x2 Period 1
	dict set TopLevelPortInterface gatewayout4_x2 Interface 0
	dict set TopLevelPortInterface gatewayout4_x2 InterfaceName {}
	dict set TopLevelPortInterface gatewayout4_x2 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout4_x2 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout4_x2 Locs {}
	dict set TopLevelPortInterface gatewayout4_x2 IOStandard {}
	dict set TopLevelPortInterface gatewayout5_x2 Name {gatewayout5_x2}
	dict set TopLevelPortInterface gatewayout5_x2 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout5_x2 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout5_x2 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout5_x2 Width 18
	dict set TopLevelPortInterface gatewayout5_x2 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_imout1_gatewayout5.dat}
	dict set TopLevelPortInterface gatewayout5_x2 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_imout1/GatewayOut5}
	dict set TopLevelPortInterface gatewayout5_x2 Direction out
	dict set TopLevelPortInterface gatewayout5_x2 Period 1
	dict set TopLevelPortInterface gatewayout5_x2 Interface 0
	dict set TopLevelPortInterface gatewayout5_x2 InterfaceName {}
	dict set TopLevelPortInterface gatewayout5_x2 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout5_x2 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout5_x2 Locs {}
	dict set TopLevelPortInterface gatewayout5_x2 IOStandard {}
	dict set TopLevelPortInterface gatewayout6_x2 Name {gatewayout6_x2}
	dict set TopLevelPortInterface gatewayout6_x2 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout6_x2 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout6_x2 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout6_x2 Width 18
	dict set TopLevelPortInterface gatewayout6_x2 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_imout1_gatewayout6.dat}
	dict set TopLevelPortInterface gatewayout6_x2 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_imout1/GatewayOut6}
	dict set TopLevelPortInterface gatewayout6_x2 Direction out
	dict set TopLevelPortInterface gatewayout6_x2 Period 1
	dict set TopLevelPortInterface gatewayout6_x2 Interface 0
	dict set TopLevelPortInterface gatewayout6_x2 InterfaceName {}
	dict set TopLevelPortInterface gatewayout6_x2 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout6_x2 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout6_x2 Locs {}
	dict set TopLevelPortInterface gatewayout6_x2 IOStandard {}
	dict set TopLevelPortInterface gatewayout7_x2 Name {gatewayout7_x2}
	dict set TopLevelPortInterface gatewayout7_x2 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout7_x2 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout7_x2 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout7_x2 Width 18
	dict set TopLevelPortInterface gatewayout7_x2 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_imout1_gatewayout7.dat}
	dict set TopLevelPortInterface gatewayout7_x2 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_imout1/GatewayOut7}
	dict set TopLevelPortInterface gatewayout7_x2 Direction out
	dict set TopLevelPortInterface gatewayout7_x2 Period 1
	dict set TopLevelPortInterface gatewayout7_x2 Interface 0
	dict set TopLevelPortInterface gatewayout7_x2 InterfaceName {}
	dict set TopLevelPortInterface gatewayout7_x2 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout7_x2 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout7_x2 Locs {}
	dict set TopLevelPortInterface gatewayout7_x2 IOStandard {}
	dict set TopLevelPortInterface gatewayout8_x2 Name {gatewayout8_x2}
	dict set TopLevelPortInterface gatewayout8_x2 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout8_x2 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout8_x2 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout8_x2 Width 18
	dict set TopLevelPortInterface gatewayout8_x2 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_imout1_gatewayout8.dat}
	dict set TopLevelPortInterface gatewayout8_x2 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_imout1/GatewayOut8}
	dict set TopLevelPortInterface gatewayout8_x2 Direction out
	dict set TopLevelPortInterface gatewayout8_x2 Period 1
	dict set TopLevelPortInterface gatewayout8_x2 Interface 0
	dict set TopLevelPortInterface gatewayout8_x2 InterfaceName {}
	dict set TopLevelPortInterface gatewayout8_x2 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout8_x2 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout8_x2 Locs {}
	dict set TopLevelPortInterface gatewayout8_x2 IOStandard {}
	dict set TopLevelPortInterface gatewayout9_x2 Name {gatewayout9_x2}
	dict set TopLevelPortInterface gatewayout9_x2 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout9_x2 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout9_x2 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout9_x2 Width 18
	dict set TopLevelPortInterface gatewayout9_x2 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_imout1_gatewayout9.dat}
	dict set TopLevelPortInterface gatewayout9_x2 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_imout1/GatewayOut9}
	dict set TopLevelPortInterface gatewayout9_x2 Direction out
	dict set TopLevelPortInterface gatewayout9_x2 Period 1
	dict set TopLevelPortInterface gatewayout9_x2 Interface 0
	dict set TopLevelPortInterface gatewayout9_x2 InterfaceName {}
	dict set TopLevelPortInterface gatewayout9_x2 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout9_x2 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout9_x2 Locs {}
	dict set TopLevelPortInterface gatewayout9_x2 IOStandard {}
	dict set TopLevelPortInterface gatewayout10_x2 Name {gatewayout10_x2}
	dict set TopLevelPortInterface gatewayout10_x2 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout10_x2 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout10_x2 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout10_x2 Width 18
	dict set TopLevelPortInterface gatewayout10_x2 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_imout1_gatewayout10.dat}
	dict set TopLevelPortInterface gatewayout10_x2 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_imout1/GatewayOut10}
	dict set TopLevelPortInterface gatewayout10_x2 Direction out
	dict set TopLevelPortInterface gatewayout10_x2 Period 1
	dict set TopLevelPortInterface gatewayout10_x2 Interface 0
	dict set TopLevelPortInterface gatewayout10_x2 InterfaceName {}
	dict set TopLevelPortInterface gatewayout10_x2 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout10_x2 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout10_x2 Locs {}
	dict set TopLevelPortInterface gatewayout10_x2 IOStandard {}
	dict set TopLevelPortInterface gatewayout11_x1 Name {gatewayout11_x1}
	dict set TopLevelPortInterface gatewayout11_x1 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout11_x1 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout11_x1 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout11_x1 Width 18
	dict set TopLevelPortInterface gatewayout11_x1 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_imout1_gatewayout11.dat}
	dict set TopLevelPortInterface gatewayout11_x1 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_imout1/GatewayOut11}
	dict set TopLevelPortInterface gatewayout11_x1 Direction out
	dict set TopLevelPortInterface gatewayout11_x1 Period 1
	dict set TopLevelPortInterface gatewayout11_x1 Interface 0
	dict set TopLevelPortInterface gatewayout11_x1 InterfaceName {}
	dict set TopLevelPortInterface gatewayout11_x1 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout11_x1 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout11_x1 Locs {}
	dict set TopLevelPortInterface gatewayout11_x1 IOStandard {}
	dict set TopLevelPortInterface gatewayout12_x0 Name {gatewayout12_x0}
	dict set TopLevelPortInterface gatewayout12_x0 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout12_x0 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout12_x0 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout12_x0 Width 18
	dict set TopLevelPortInterface gatewayout12_x0 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_imout1_gatewayout12.dat}
	dict set TopLevelPortInterface gatewayout12_x0 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_imout1/GatewayOut12}
	dict set TopLevelPortInterface gatewayout12_x0 Direction out
	dict set TopLevelPortInterface gatewayout12_x0 Period 1
	dict set TopLevelPortInterface gatewayout12_x0 Interface 0
	dict set TopLevelPortInterface gatewayout12_x0 InterfaceName {}
	dict set TopLevelPortInterface gatewayout12_x0 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout12_x0 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout12_x0 Locs {}
	dict set TopLevelPortInterface gatewayout12_x0 IOStandard {}
	dict set TopLevelPortInterface gatewayout13 Name {gatewayout13}
	dict set TopLevelPortInterface gatewayout13 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout13 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout13 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout13 Width 18
	dict set TopLevelPortInterface gatewayout13 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_imout1_gatewayout13.dat}
	dict set TopLevelPortInterface gatewayout13 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_imout1/GatewayOut13}
	dict set TopLevelPortInterface gatewayout13 Direction out
	dict set TopLevelPortInterface gatewayout13 Period 1
	dict set TopLevelPortInterface gatewayout13 Interface 0
	dict set TopLevelPortInterface gatewayout13 InterfaceName {}
	dict set TopLevelPortInterface gatewayout13 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout13 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout13 Locs {}
	dict set TopLevelPortInterface gatewayout13 IOStandard {}
	dict set TopLevelPortInterface gatewayout14_x0 Name {gatewayout14_x0}
	dict set TopLevelPortInterface gatewayout14_x0 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout14_x0 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout14_x0 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout14_x0 Width 18
	dict set TopLevelPortInterface gatewayout14_x0 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_imout1_gatewayout14.dat}
	dict set TopLevelPortInterface gatewayout14_x0 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_imout1/GatewayOut14}
	dict set TopLevelPortInterface gatewayout14_x0 Direction out
	dict set TopLevelPortInterface gatewayout14_x0 Period 1
	dict set TopLevelPortInterface gatewayout14_x0 Interface 0
	dict set TopLevelPortInterface gatewayout14_x0 InterfaceName {}
	dict set TopLevelPortInterface gatewayout14_x0 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout14_x0 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout14_x0 Locs {}
	dict set TopLevelPortInterface gatewayout14_x0 IOStandard {}
	dict set TopLevelPortInterface gatewayout15 Name {gatewayout15}
	dict set TopLevelPortInterface gatewayout15 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout15 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout15 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout15 Width 18
	dict set TopLevelPortInterface gatewayout15 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_imout1_gatewayout15.dat}
	dict set TopLevelPortInterface gatewayout15 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_imout1/GatewayOut15}
	dict set TopLevelPortInterface gatewayout15 Direction out
	dict set TopLevelPortInterface gatewayout15 Period 1
	dict set TopLevelPortInterface gatewayout15 Interface 0
	dict set TopLevelPortInterface gatewayout15 InterfaceName {}
	dict set TopLevelPortInterface gatewayout15 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout15 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout15 Locs {}
	dict set TopLevelPortInterface gatewayout15 IOStandard {}
	dict set TopLevelPortInterface gatewayout0 Name {gatewayout0}
	dict set TopLevelPortInterface gatewayout0 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout0 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout0 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout0 Width 18
	dict set TopLevelPortInterface gatewayout0 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_reout_gatewayout0.dat}
	dict set TopLevelPortInterface gatewayout0 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_reout/GatewayOut0}
	dict set TopLevelPortInterface gatewayout0 Direction out
	dict set TopLevelPortInterface gatewayout0 Period 1
	dict set TopLevelPortInterface gatewayout0 Interface 0
	dict set TopLevelPortInterface gatewayout0 InterfaceName {}
	dict set TopLevelPortInterface gatewayout0 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout0 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout0 Locs {}
	dict set TopLevelPortInterface gatewayout0 IOStandard {}
	dict set TopLevelPortInterface gatewayout1 Name {gatewayout1}
	dict set TopLevelPortInterface gatewayout1 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout1 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout1 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout1 Width 18
	dict set TopLevelPortInterface gatewayout1 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_reout_gatewayout1.dat}
	dict set TopLevelPortInterface gatewayout1 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_reout/GatewayOut1}
	dict set TopLevelPortInterface gatewayout1 Direction out
	dict set TopLevelPortInterface gatewayout1 Period 1
	dict set TopLevelPortInterface gatewayout1 Interface 0
	dict set TopLevelPortInterface gatewayout1 InterfaceName {}
	dict set TopLevelPortInterface gatewayout1 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout1 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout1 Locs {}
	dict set TopLevelPortInterface gatewayout1 IOStandard {}
	dict set TopLevelPortInterface gatewayout2 Name {gatewayout2}
	dict set TopLevelPortInterface gatewayout2 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout2 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout2 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout2 Width 18
	dict set TopLevelPortInterface gatewayout2 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_reout_gatewayout2.dat}
	dict set TopLevelPortInterface gatewayout2 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_reout/GatewayOut2}
	dict set TopLevelPortInterface gatewayout2 Direction out
	dict set TopLevelPortInterface gatewayout2 Period 1
	dict set TopLevelPortInterface gatewayout2 Interface 0
	dict set TopLevelPortInterface gatewayout2 InterfaceName {}
	dict set TopLevelPortInterface gatewayout2 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout2 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout2 Locs {}
	dict set TopLevelPortInterface gatewayout2 IOStandard {}
	dict set TopLevelPortInterface gatewayout3 Name {gatewayout3}
	dict set TopLevelPortInterface gatewayout3 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout3 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout3 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout3 Width 18
	dict set TopLevelPortInterface gatewayout3 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_reout_gatewayout3.dat}
	dict set TopLevelPortInterface gatewayout3 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_reout/GatewayOut3}
	dict set TopLevelPortInterface gatewayout3 Direction out
	dict set TopLevelPortInterface gatewayout3 Period 1
	dict set TopLevelPortInterface gatewayout3 Interface 0
	dict set TopLevelPortInterface gatewayout3 InterfaceName {}
	dict set TopLevelPortInterface gatewayout3 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout3 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout3 Locs {}
	dict set TopLevelPortInterface gatewayout3 IOStandard {}
	dict set TopLevelPortInterface gatewayout4 Name {gatewayout4}
	dict set TopLevelPortInterface gatewayout4 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout4 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout4 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout4 Width 18
	dict set TopLevelPortInterface gatewayout4 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_reout_gatewayout4.dat}
	dict set TopLevelPortInterface gatewayout4 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_reout/GatewayOut4}
	dict set TopLevelPortInterface gatewayout4 Direction out
	dict set TopLevelPortInterface gatewayout4 Period 1
	dict set TopLevelPortInterface gatewayout4 Interface 0
	dict set TopLevelPortInterface gatewayout4 InterfaceName {}
	dict set TopLevelPortInterface gatewayout4 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout4 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout4 Locs {}
	dict set TopLevelPortInterface gatewayout4 IOStandard {}
	dict set TopLevelPortInterface gatewayout5 Name {gatewayout5}
	dict set TopLevelPortInterface gatewayout5 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout5 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout5 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout5 Width 18
	dict set TopLevelPortInterface gatewayout5 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_reout_gatewayout5.dat}
	dict set TopLevelPortInterface gatewayout5 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_reout/GatewayOut5}
	dict set TopLevelPortInterface gatewayout5 Direction out
	dict set TopLevelPortInterface gatewayout5 Period 1
	dict set TopLevelPortInterface gatewayout5 Interface 0
	dict set TopLevelPortInterface gatewayout5 InterfaceName {}
	dict set TopLevelPortInterface gatewayout5 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout5 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout5 Locs {}
	dict set TopLevelPortInterface gatewayout5 IOStandard {}
	dict set TopLevelPortInterface gatewayout6 Name {gatewayout6}
	dict set TopLevelPortInterface gatewayout6 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout6 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout6 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout6 Width 18
	dict set TopLevelPortInterface gatewayout6 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_reout_gatewayout6.dat}
	dict set TopLevelPortInterface gatewayout6 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_reout/GatewayOut6}
	dict set TopLevelPortInterface gatewayout6 Direction out
	dict set TopLevelPortInterface gatewayout6 Period 1
	dict set TopLevelPortInterface gatewayout6 Interface 0
	dict set TopLevelPortInterface gatewayout6 InterfaceName {}
	dict set TopLevelPortInterface gatewayout6 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout6 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout6 Locs {}
	dict set TopLevelPortInterface gatewayout6 IOStandard {}
	dict set TopLevelPortInterface gatewayout7 Name {gatewayout7}
	dict set TopLevelPortInterface gatewayout7 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout7 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout7 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout7 Width 18
	dict set TopLevelPortInterface gatewayout7 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_reout_gatewayout7.dat}
	dict set TopLevelPortInterface gatewayout7 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_reout/GatewayOut7}
	dict set TopLevelPortInterface gatewayout7 Direction out
	dict set TopLevelPortInterface gatewayout7 Period 1
	dict set TopLevelPortInterface gatewayout7 Interface 0
	dict set TopLevelPortInterface gatewayout7 InterfaceName {}
	dict set TopLevelPortInterface gatewayout7 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout7 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout7 Locs {}
	dict set TopLevelPortInterface gatewayout7 IOStandard {}
	dict set TopLevelPortInterface gatewayout8 Name {gatewayout8}
	dict set TopLevelPortInterface gatewayout8 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout8 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout8 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout8 Width 18
	dict set TopLevelPortInterface gatewayout8 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_reout_gatewayout8.dat}
	dict set TopLevelPortInterface gatewayout8 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_reout/GatewayOut8}
	dict set TopLevelPortInterface gatewayout8 Direction out
	dict set TopLevelPortInterface gatewayout8 Period 1
	dict set TopLevelPortInterface gatewayout8 Interface 0
	dict set TopLevelPortInterface gatewayout8 InterfaceName {}
	dict set TopLevelPortInterface gatewayout8 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout8 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout8 Locs {}
	dict set TopLevelPortInterface gatewayout8 IOStandard {}
	dict set TopLevelPortInterface gatewayout9 Name {gatewayout9}
	dict set TopLevelPortInterface gatewayout9 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout9 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout9 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout9 Width 18
	dict set TopLevelPortInterface gatewayout9 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_reout_gatewayout9.dat}
	dict set TopLevelPortInterface gatewayout9 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_reout/GatewayOut9}
	dict set TopLevelPortInterface gatewayout9 Direction out
	dict set TopLevelPortInterface gatewayout9 Period 1
	dict set TopLevelPortInterface gatewayout9 Interface 0
	dict set TopLevelPortInterface gatewayout9 InterfaceName {}
	dict set TopLevelPortInterface gatewayout9 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout9 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout9 Locs {}
	dict set TopLevelPortInterface gatewayout9 IOStandard {}
	dict set TopLevelPortInterface gatewayout10 Name {gatewayout10}
	dict set TopLevelPortInterface gatewayout10 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout10 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout10 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout10 Width 18
	dict set TopLevelPortInterface gatewayout10 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_reout_gatewayout10.dat}
	dict set TopLevelPortInterface gatewayout10 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_reout/GatewayOut10}
	dict set TopLevelPortInterface gatewayout10 Direction out
	dict set TopLevelPortInterface gatewayout10 Period 1
	dict set TopLevelPortInterface gatewayout10 Interface 0
	dict set TopLevelPortInterface gatewayout10 InterfaceName {}
	dict set TopLevelPortInterface gatewayout10 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout10 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout10 Locs {}
	dict set TopLevelPortInterface gatewayout10 IOStandard {}
	dict set TopLevelPortInterface gatewayout11 Name {gatewayout11}
	dict set TopLevelPortInterface gatewayout11 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout11 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout11 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout11 Width 18
	dict set TopLevelPortInterface gatewayout11 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_reout_gatewayout11.dat}
	dict set TopLevelPortInterface gatewayout11 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_reout/GatewayOut11}
	dict set TopLevelPortInterface gatewayout11 Direction out
	dict set TopLevelPortInterface gatewayout11 Period 1
	dict set TopLevelPortInterface gatewayout11 Interface 0
	dict set TopLevelPortInterface gatewayout11 InterfaceName {}
	dict set TopLevelPortInterface gatewayout11 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout11 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout11 Locs {}
	dict set TopLevelPortInterface gatewayout11 IOStandard {}
	dict set TopLevelPortInterface gatewayout12 Name {gatewayout12}
	dict set TopLevelPortInterface gatewayout12 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout12 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout12 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout12 Width 18
	dict set TopLevelPortInterface gatewayout12 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_reout_gatewayout12.dat}
	dict set TopLevelPortInterface gatewayout12 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_reout/GatewayOut12}
	dict set TopLevelPortInterface gatewayout12 Direction out
	dict set TopLevelPortInterface gatewayout12 Period 1
	dict set TopLevelPortInterface gatewayout12 Interface 0
	dict set TopLevelPortInterface gatewayout12 InterfaceName {}
	dict set TopLevelPortInterface gatewayout12 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout12 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout12 Locs {}
	dict set TopLevelPortInterface gatewayout12 IOStandard {}
	dict set TopLevelPortInterface gatewayout13_x1 Name {gatewayout13_x1}
	dict set TopLevelPortInterface gatewayout13_x1 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout13_x1 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout13_x1 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout13_x1 Width 18
	dict set TopLevelPortInterface gatewayout13_x1 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_reout_gatewayout13.dat}
	dict set TopLevelPortInterface gatewayout13_x1 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_reout/GatewayOut13}
	dict set TopLevelPortInterface gatewayout13_x1 Direction out
	dict set TopLevelPortInterface gatewayout13_x1 Period 1
	dict set TopLevelPortInterface gatewayout13_x1 Interface 0
	dict set TopLevelPortInterface gatewayout13_x1 InterfaceName {}
	dict set TopLevelPortInterface gatewayout13_x1 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout13_x1 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout13_x1 Locs {}
	dict set TopLevelPortInterface gatewayout13_x1 IOStandard {}
	dict set TopLevelPortInterface gatewayout14 Name {gatewayout14}
	dict set TopLevelPortInterface gatewayout14 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout14 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout14 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout14 Width 18
	dict set TopLevelPortInterface gatewayout14 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_reout_gatewayout14.dat}
	dict set TopLevelPortInterface gatewayout14 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_reout/GatewayOut14}
	dict set TopLevelPortInterface gatewayout14 Direction out
	dict set TopLevelPortInterface gatewayout14 Period 1
	dict set TopLevelPortInterface gatewayout14 Interface 0
	dict set TopLevelPortInterface gatewayout14 InterfaceName {}
	dict set TopLevelPortInterface gatewayout14 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout14 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout14 Locs {}
	dict set TopLevelPortInterface gatewayout14 IOStandard {}
	dict set TopLevelPortInterface gatewayout15_x0 Name {gatewayout15_x0}
	dict set TopLevelPortInterface gatewayout15_x0 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout15_x0 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout15_x0 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout15_x0 Width 18
	dict set TopLevelPortInterface gatewayout15_x0 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_reout_gatewayout15.dat}
	dict set TopLevelPortInterface gatewayout15_x0 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_reout/GatewayOut15}
	dict set TopLevelPortInterface gatewayout15_x0 Direction out
	dict set TopLevelPortInterface gatewayout15_x0 Period 1
	dict set TopLevelPortInterface gatewayout15_x0 Interface 0
	dict set TopLevelPortInterface gatewayout15_x0 InterfaceName {}
	dict set TopLevelPortInterface gatewayout15_x0 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout15_x0 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout15_x0 Locs {}
	dict set TopLevelPortInterface gatewayout15_x0 IOStandard {}
	dict set TopLevelPortInterface gatewayout0_x0 Name {gatewayout0_x0}
	dict set TopLevelPortInterface gatewayout0_x0 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout0_x0 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout0_x0 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout0_x0 Width 18
	dict set TopLevelPortInterface gatewayout0_x0 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_reout1_gatewayout0.dat}
	dict set TopLevelPortInterface gatewayout0_x0 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_reout1/GatewayOut0}
	dict set TopLevelPortInterface gatewayout0_x0 Direction out
	dict set TopLevelPortInterface gatewayout0_x0 Period 1
	dict set TopLevelPortInterface gatewayout0_x0 Interface 0
	dict set TopLevelPortInterface gatewayout0_x0 InterfaceName {}
	dict set TopLevelPortInterface gatewayout0_x0 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout0_x0 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout0_x0 Locs {}
	dict set TopLevelPortInterface gatewayout0_x0 IOStandard {}
	dict set TopLevelPortInterface gatewayout1_x0 Name {gatewayout1_x0}
	dict set TopLevelPortInterface gatewayout1_x0 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout1_x0 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout1_x0 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout1_x0 Width 18
	dict set TopLevelPortInterface gatewayout1_x0 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_reout1_gatewayout1.dat}
	dict set TopLevelPortInterface gatewayout1_x0 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_reout1/GatewayOut1}
	dict set TopLevelPortInterface gatewayout1_x0 Direction out
	dict set TopLevelPortInterface gatewayout1_x0 Period 1
	dict set TopLevelPortInterface gatewayout1_x0 Interface 0
	dict set TopLevelPortInterface gatewayout1_x0 InterfaceName {}
	dict set TopLevelPortInterface gatewayout1_x0 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout1_x0 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout1_x0 Locs {}
	dict set TopLevelPortInterface gatewayout1_x0 IOStandard {}
	dict set TopLevelPortInterface gatewayout2_x0 Name {gatewayout2_x0}
	dict set TopLevelPortInterface gatewayout2_x0 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout2_x0 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout2_x0 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout2_x0 Width 18
	dict set TopLevelPortInterface gatewayout2_x0 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_reout1_gatewayout2.dat}
	dict set TopLevelPortInterface gatewayout2_x0 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_reout1/GatewayOut2}
	dict set TopLevelPortInterface gatewayout2_x0 Direction out
	dict set TopLevelPortInterface gatewayout2_x0 Period 1
	dict set TopLevelPortInterface gatewayout2_x0 Interface 0
	dict set TopLevelPortInterface gatewayout2_x0 InterfaceName {}
	dict set TopLevelPortInterface gatewayout2_x0 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout2_x0 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout2_x0 Locs {}
	dict set TopLevelPortInterface gatewayout2_x0 IOStandard {}
	dict set TopLevelPortInterface gatewayout3_x0 Name {gatewayout3_x0}
	dict set TopLevelPortInterface gatewayout3_x0 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout3_x0 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout3_x0 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout3_x0 Width 18
	dict set TopLevelPortInterface gatewayout3_x0 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_reout1_gatewayout3.dat}
	dict set TopLevelPortInterface gatewayout3_x0 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_reout1/GatewayOut3}
	dict set TopLevelPortInterface gatewayout3_x0 Direction out
	dict set TopLevelPortInterface gatewayout3_x0 Period 1
	dict set TopLevelPortInterface gatewayout3_x0 Interface 0
	dict set TopLevelPortInterface gatewayout3_x0 InterfaceName {}
	dict set TopLevelPortInterface gatewayout3_x0 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout3_x0 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout3_x0 Locs {}
	dict set TopLevelPortInterface gatewayout3_x0 IOStandard {}
	dict set TopLevelPortInterface gatewayout4_x0 Name {gatewayout4_x0}
	dict set TopLevelPortInterface gatewayout4_x0 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout4_x0 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout4_x0 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout4_x0 Width 18
	dict set TopLevelPortInterface gatewayout4_x0 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_reout1_gatewayout4.dat}
	dict set TopLevelPortInterface gatewayout4_x0 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_reout1/GatewayOut4}
	dict set TopLevelPortInterface gatewayout4_x0 Direction out
	dict set TopLevelPortInterface gatewayout4_x0 Period 1
	dict set TopLevelPortInterface gatewayout4_x0 Interface 0
	dict set TopLevelPortInterface gatewayout4_x0 InterfaceName {}
	dict set TopLevelPortInterface gatewayout4_x0 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout4_x0 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout4_x0 Locs {}
	dict set TopLevelPortInterface gatewayout4_x0 IOStandard {}
	dict set TopLevelPortInterface gatewayout5_x0 Name {gatewayout5_x0}
	dict set TopLevelPortInterface gatewayout5_x0 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout5_x0 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout5_x0 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout5_x0 Width 18
	dict set TopLevelPortInterface gatewayout5_x0 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_reout1_gatewayout5.dat}
	dict set TopLevelPortInterface gatewayout5_x0 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_reout1/GatewayOut5}
	dict set TopLevelPortInterface gatewayout5_x0 Direction out
	dict set TopLevelPortInterface gatewayout5_x0 Period 1
	dict set TopLevelPortInterface gatewayout5_x0 Interface 0
	dict set TopLevelPortInterface gatewayout5_x0 InterfaceName {}
	dict set TopLevelPortInterface gatewayout5_x0 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout5_x0 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout5_x0 Locs {}
	dict set TopLevelPortInterface gatewayout5_x0 IOStandard {}
	dict set TopLevelPortInterface gatewayout6_x0 Name {gatewayout6_x0}
	dict set TopLevelPortInterface gatewayout6_x0 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout6_x0 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout6_x0 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout6_x0 Width 18
	dict set TopLevelPortInterface gatewayout6_x0 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_reout1_gatewayout6.dat}
	dict set TopLevelPortInterface gatewayout6_x0 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_reout1/GatewayOut6}
	dict set TopLevelPortInterface gatewayout6_x0 Direction out
	dict set TopLevelPortInterface gatewayout6_x0 Period 1
	dict set TopLevelPortInterface gatewayout6_x0 Interface 0
	dict set TopLevelPortInterface gatewayout6_x0 InterfaceName {}
	dict set TopLevelPortInterface gatewayout6_x0 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout6_x0 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout6_x0 Locs {}
	dict set TopLevelPortInterface gatewayout6_x0 IOStandard {}
	dict set TopLevelPortInterface gatewayout7_x0 Name {gatewayout7_x0}
	dict set TopLevelPortInterface gatewayout7_x0 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout7_x0 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout7_x0 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout7_x0 Width 18
	dict set TopLevelPortInterface gatewayout7_x0 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_reout1_gatewayout7.dat}
	dict set TopLevelPortInterface gatewayout7_x0 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_reout1/GatewayOut7}
	dict set TopLevelPortInterface gatewayout7_x0 Direction out
	dict set TopLevelPortInterface gatewayout7_x0 Period 1
	dict set TopLevelPortInterface gatewayout7_x0 Interface 0
	dict set TopLevelPortInterface gatewayout7_x0 InterfaceName {}
	dict set TopLevelPortInterface gatewayout7_x0 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout7_x0 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout7_x0 Locs {}
	dict set TopLevelPortInterface gatewayout7_x0 IOStandard {}
	dict set TopLevelPortInterface gatewayout8_x0 Name {gatewayout8_x0}
	dict set TopLevelPortInterface gatewayout8_x0 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout8_x0 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout8_x0 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout8_x0 Width 18
	dict set TopLevelPortInterface gatewayout8_x0 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_reout1_gatewayout8.dat}
	dict set TopLevelPortInterface gatewayout8_x0 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_reout1/GatewayOut8}
	dict set TopLevelPortInterface gatewayout8_x0 Direction out
	dict set TopLevelPortInterface gatewayout8_x0 Period 1
	dict set TopLevelPortInterface gatewayout8_x0 Interface 0
	dict set TopLevelPortInterface gatewayout8_x0 InterfaceName {}
	dict set TopLevelPortInterface gatewayout8_x0 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout8_x0 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout8_x0 Locs {}
	dict set TopLevelPortInterface gatewayout8_x0 IOStandard {}
	dict set TopLevelPortInterface gatewayout9_x0 Name {gatewayout9_x0}
	dict set TopLevelPortInterface gatewayout9_x0 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout9_x0 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout9_x0 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout9_x0 Width 18
	dict set TopLevelPortInterface gatewayout9_x0 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_reout1_gatewayout9.dat}
	dict set TopLevelPortInterface gatewayout9_x0 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_reout1/GatewayOut9}
	dict set TopLevelPortInterface gatewayout9_x0 Direction out
	dict set TopLevelPortInterface gatewayout9_x0 Period 1
	dict set TopLevelPortInterface gatewayout9_x0 Interface 0
	dict set TopLevelPortInterface gatewayout9_x0 InterfaceName {}
	dict set TopLevelPortInterface gatewayout9_x0 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout9_x0 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout9_x0 Locs {}
	dict set TopLevelPortInterface gatewayout9_x0 IOStandard {}
	dict set TopLevelPortInterface gatewayout10_x0 Name {gatewayout10_x0}
	dict set TopLevelPortInterface gatewayout10_x0 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout10_x0 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout10_x0 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout10_x0 Width 18
	dict set TopLevelPortInterface gatewayout10_x0 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_reout1_gatewayout10.dat}
	dict set TopLevelPortInterface gatewayout10_x0 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_reout1/GatewayOut10}
	dict set TopLevelPortInterface gatewayout10_x0 Direction out
	dict set TopLevelPortInterface gatewayout10_x0 Period 1
	dict set TopLevelPortInterface gatewayout10_x0 Interface 0
	dict set TopLevelPortInterface gatewayout10_x0 InterfaceName {}
	dict set TopLevelPortInterface gatewayout10_x0 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout10_x0 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout10_x0 Locs {}
	dict set TopLevelPortInterface gatewayout10_x0 IOStandard {}
	dict set TopLevelPortInterface gatewayout11_x0 Name {gatewayout11_x0}
	dict set TopLevelPortInterface gatewayout11_x0 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout11_x0 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout11_x0 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout11_x0 Width 18
	dict set TopLevelPortInterface gatewayout11_x0 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_reout1_gatewayout11.dat}
	dict set TopLevelPortInterface gatewayout11_x0 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_reout1/GatewayOut11}
	dict set TopLevelPortInterface gatewayout11_x0 Direction out
	dict set TopLevelPortInterface gatewayout11_x0 Period 1
	dict set TopLevelPortInterface gatewayout11_x0 Interface 0
	dict set TopLevelPortInterface gatewayout11_x0 InterfaceName {}
	dict set TopLevelPortInterface gatewayout11_x0 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout11_x0 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout11_x0 Locs {}
	dict set TopLevelPortInterface gatewayout11_x0 IOStandard {}
	dict set TopLevelPortInterface gatewayout12_x1 Name {gatewayout12_x1}
	dict set TopLevelPortInterface gatewayout12_x1 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout12_x1 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout12_x1 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout12_x1 Width 18
	dict set TopLevelPortInterface gatewayout12_x1 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_reout1_gatewayout12.dat}
	dict set TopLevelPortInterface gatewayout12_x1 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_reout1/GatewayOut12}
	dict set TopLevelPortInterface gatewayout12_x1 Direction out
	dict set TopLevelPortInterface gatewayout12_x1 Period 1
	dict set TopLevelPortInterface gatewayout12_x1 Interface 0
	dict set TopLevelPortInterface gatewayout12_x1 InterfaceName {}
	dict set TopLevelPortInterface gatewayout12_x1 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout12_x1 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout12_x1 Locs {}
	dict set TopLevelPortInterface gatewayout12_x1 IOStandard {}
	dict set TopLevelPortInterface gatewayout13_x0 Name {gatewayout13_x0}
	dict set TopLevelPortInterface gatewayout13_x0 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout13_x0 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout13_x0 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout13_x0 Width 18
	dict set TopLevelPortInterface gatewayout13_x0 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_reout1_gatewayout13.dat}
	dict set TopLevelPortInterface gatewayout13_x0 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_reout1/GatewayOut13}
	dict set TopLevelPortInterface gatewayout13_x0 Direction out
	dict set TopLevelPortInterface gatewayout13_x0 Period 1
	dict set TopLevelPortInterface gatewayout13_x0 Interface 0
	dict set TopLevelPortInterface gatewayout13_x0 InterfaceName {}
	dict set TopLevelPortInterface gatewayout13_x0 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout13_x0 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout13_x0 Locs {}
	dict set TopLevelPortInterface gatewayout13_x0 IOStandard {}
	dict set TopLevelPortInterface gatewayout14_x1 Name {gatewayout14_x1}
	dict set TopLevelPortInterface gatewayout14_x1 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout14_x1 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout14_x1 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout14_x1 Width 18
	dict set TopLevelPortInterface gatewayout14_x1 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_reout1_gatewayout14.dat}
	dict set TopLevelPortInterface gatewayout14_x1 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_reout1/GatewayOut14}
	dict set TopLevelPortInterface gatewayout14_x1 Direction out
	dict set TopLevelPortInterface gatewayout14_x1 Period 1
	dict set TopLevelPortInterface gatewayout14_x1 Interface 0
	dict set TopLevelPortInterface gatewayout14_x1 InterfaceName {}
	dict set TopLevelPortInterface gatewayout14_x1 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout14_x1 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout14_x1 Locs {}
	dict set TopLevelPortInterface gatewayout14_x1 IOStandard {}
	dict set TopLevelPortInterface gatewayout15_x1 Name {gatewayout15_x1}
	dict set TopLevelPortInterface gatewayout15_x1 Type Fix_18_16
	dict set TopLevelPortInterface gatewayout15_x1 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout15_x1 BinaryPoint 16
	dict set TopLevelPortInterface gatewayout15_x1 Width 18
	dict set TopLevelPortInterface gatewayout15_x1 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dif_fft_receive_reout1_gatewayout15.dat}
	dict set TopLevelPortInterface gatewayout15_x1 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/DIF FFT/receive_reout1/GatewayOut15}
	dict set TopLevelPortInterface gatewayout15_x1 Direction out
	dict set TopLevelPortInterface gatewayout15_x1 Period 1
	dict set TopLevelPortInterface gatewayout15_x1 Interface 0
	dict set TopLevelPortInterface gatewayout15_x1 InterfaceName {}
	dict set TopLevelPortInterface gatewayout15_x1 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout15_x1 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout15_x1 Locs {}
	dict set TopLevelPortInterface gatewayout15_x1 IOStandard {}
	dict set TopLevelPortInterface ifft_opvalid Name {ifft_opvalid}
	dict set TopLevelPortInterface ifft_opvalid Type Bool
	dict set TopLevelPortInterface ifft_opvalid ArithmeticType xlUnsigned
	dict set TopLevelPortInterface ifft_opvalid BinaryPoint 0
	dict set TopLevelPortInterface ifft_opvalid Width 1
	dict set TopLevelPortInterface ifft_opvalid DatFile {receivetransmitchai_jan31st2022_analysis_analysis_dit_ifft_ifft_opvalid.dat}
	dict set TopLevelPortInterface ifft_opvalid IconText {ifft_opvalid}
	dict set TopLevelPortInterface ifft_opvalid Direction out
	dict set TopLevelPortInterface ifft_opvalid Period 1
	dict set TopLevelPortInterface ifft_opvalid Interface 0
	dict set TopLevelPortInterface ifft_opvalid InterfaceName {}
	dict set TopLevelPortInterface ifft_opvalid InterfaceString {DATA}
	dict set TopLevelPortInterface ifft_opvalid ClockDomain {analysis}
	dict set TopLevelPortInterface ifft_opvalid Locs {}
	dict set TopLevelPortInterface ifft_opvalid IOStandard {}
	dict set TopLevelPortInterface gatewayout0_x4 Name {gatewayout0_x4}
	dict set TopLevelPortInterface gatewayout0_x4 Type Fix_16_15
	dict set TopLevelPortInterface gatewayout0_x4 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout0_x4 BinaryPoint 15
	dict set TopLevelPortInterface gatewayout0_x4 Width 16
	dict set TopLevelPortInterface gatewayout0_x4 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_transmit_imag_gatewayout0.dat}
	dict set TopLevelPortInterface gatewayout0_x4 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/transmit_imag/GatewayOut0}
	dict set TopLevelPortInterface gatewayout0_x4 Direction out
	dict set TopLevelPortInterface gatewayout0_x4 Period 1
	dict set TopLevelPortInterface gatewayout0_x4 Interface 0
	dict set TopLevelPortInterface gatewayout0_x4 InterfaceName {}
	dict set TopLevelPortInterface gatewayout0_x4 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout0_x4 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout0_x4 Locs {}
	dict set TopLevelPortInterface gatewayout0_x4 IOStandard {}
	dict set TopLevelPortInterface gatewayout1_x4 Name {gatewayout1_x4}
	dict set TopLevelPortInterface gatewayout1_x4 Type Fix_16_15
	dict set TopLevelPortInterface gatewayout1_x4 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout1_x4 BinaryPoint 15
	dict set TopLevelPortInterface gatewayout1_x4 Width 16
	dict set TopLevelPortInterface gatewayout1_x4 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_transmit_imag_gatewayout1.dat}
	dict set TopLevelPortInterface gatewayout1_x4 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/transmit_imag/GatewayOut1}
	dict set TopLevelPortInterface gatewayout1_x4 Direction out
	dict set TopLevelPortInterface gatewayout1_x4 Period 1
	dict set TopLevelPortInterface gatewayout1_x4 Interface 0
	dict set TopLevelPortInterface gatewayout1_x4 InterfaceName {}
	dict set TopLevelPortInterface gatewayout1_x4 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout1_x4 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout1_x4 Locs {}
	dict set TopLevelPortInterface gatewayout1_x4 IOStandard {}
	dict set TopLevelPortInterface gatewayout2_x4 Name {gatewayout2_x4}
	dict set TopLevelPortInterface gatewayout2_x4 Type Fix_16_15
	dict set TopLevelPortInterface gatewayout2_x4 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout2_x4 BinaryPoint 15
	dict set TopLevelPortInterface gatewayout2_x4 Width 16
	dict set TopLevelPortInterface gatewayout2_x4 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_transmit_imag_gatewayout2.dat}
	dict set TopLevelPortInterface gatewayout2_x4 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/transmit_imag/GatewayOut2}
	dict set TopLevelPortInterface gatewayout2_x4 Direction out
	dict set TopLevelPortInterface gatewayout2_x4 Period 1
	dict set TopLevelPortInterface gatewayout2_x4 Interface 0
	dict set TopLevelPortInterface gatewayout2_x4 InterfaceName {}
	dict set TopLevelPortInterface gatewayout2_x4 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout2_x4 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout2_x4 Locs {}
	dict set TopLevelPortInterface gatewayout2_x4 IOStandard {}
	dict set TopLevelPortInterface gatewayout3_x3 Name {gatewayout3_x3}
	dict set TopLevelPortInterface gatewayout3_x3 Type Fix_16_15
	dict set TopLevelPortInterface gatewayout3_x3 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout3_x3 BinaryPoint 15
	dict set TopLevelPortInterface gatewayout3_x3 Width 16
	dict set TopLevelPortInterface gatewayout3_x3 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_transmit_imag_gatewayout3.dat}
	dict set TopLevelPortInterface gatewayout3_x3 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/transmit_imag/GatewayOut3}
	dict set TopLevelPortInterface gatewayout3_x3 Direction out
	dict set TopLevelPortInterface gatewayout3_x3 Period 1
	dict set TopLevelPortInterface gatewayout3_x3 Interface 0
	dict set TopLevelPortInterface gatewayout3_x3 InterfaceName {}
	dict set TopLevelPortInterface gatewayout3_x3 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout3_x3 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout3_x3 Locs {}
	dict set TopLevelPortInterface gatewayout3_x3 IOStandard {}
	dict set TopLevelPortInterface gatewayout4_x3 Name {gatewayout4_x3}
	dict set TopLevelPortInterface gatewayout4_x3 Type Fix_16_15
	dict set TopLevelPortInterface gatewayout4_x3 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout4_x3 BinaryPoint 15
	dict set TopLevelPortInterface gatewayout4_x3 Width 16
	dict set TopLevelPortInterface gatewayout4_x3 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_transmit_imag_gatewayout4.dat}
	dict set TopLevelPortInterface gatewayout4_x3 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/transmit_imag/GatewayOut4}
	dict set TopLevelPortInterface gatewayout4_x3 Direction out
	dict set TopLevelPortInterface gatewayout4_x3 Period 1
	dict set TopLevelPortInterface gatewayout4_x3 Interface 0
	dict set TopLevelPortInterface gatewayout4_x3 InterfaceName {}
	dict set TopLevelPortInterface gatewayout4_x3 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout4_x3 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout4_x3 Locs {}
	dict set TopLevelPortInterface gatewayout4_x3 IOStandard {}
	dict set TopLevelPortInterface gatewayout5_x3 Name {gatewayout5_x3}
	dict set TopLevelPortInterface gatewayout5_x3 Type Fix_16_15
	dict set TopLevelPortInterface gatewayout5_x3 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout5_x3 BinaryPoint 15
	dict set TopLevelPortInterface gatewayout5_x3 Width 16
	dict set TopLevelPortInterface gatewayout5_x3 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_transmit_imag_gatewayout5.dat}
	dict set TopLevelPortInterface gatewayout5_x3 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/transmit_imag/GatewayOut5}
	dict set TopLevelPortInterface gatewayout5_x3 Direction out
	dict set TopLevelPortInterface gatewayout5_x3 Period 1
	dict set TopLevelPortInterface gatewayout5_x3 Interface 0
	dict set TopLevelPortInterface gatewayout5_x3 InterfaceName {}
	dict set TopLevelPortInterface gatewayout5_x3 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout5_x3 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout5_x3 Locs {}
	dict set TopLevelPortInterface gatewayout5_x3 IOStandard {}
	dict set TopLevelPortInterface gatewayout6_x3 Name {gatewayout6_x3}
	dict set TopLevelPortInterface gatewayout6_x3 Type Fix_16_15
	dict set TopLevelPortInterface gatewayout6_x3 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout6_x3 BinaryPoint 15
	dict set TopLevelPortInterface gatewayout6_x3 Width 16
	dict set TopLevelPortInterface gatewayout6_x3 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_transmit_imag_gatewayout6.dat}
	dict set TopLevelPortInterface gatewayout6_x3 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/transmit_imag/GatewayOut6}
	dict set TopLevelPortInterface gatewayout6_x3 Direction out
	dict set TopLevelPortInterface gatewayout6_x3 Period 1
	dict set TopLevelPortInterface gatewayout6_x3 Interface 0
	dict set TopLevelPortInterface gatewayout6_x3 InterfaceName {}
	dict set TopLevelPortInterface gatewayout6_x3 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout6_x3 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout6_x3 Locs {}
	dict set TopLevelPortInterface gatewayout6_x3 IOStandard {}
	dict set TopLevelPortInterface gatewayout7_x3 Name {gatewayout7_x3}
	dict set TopLevelPortInterface gatewayout7_x3 Type Fix_16_15
	dict set TopLevelPortInterface gatewayout7_x3 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout7_x3 BinaryPoint 15
	dict set TopLevelPortInterface gatewayout7_x3 Width 16
	dict set TopLevelPortInterface gatewayout7_x3 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_transmit_imag_gatewayout7.dat}
	dict set TopLevelPortInterface gatewayout7_x3 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/transmit_imag/GatewayOut7}
	dict set TopLevelPortInterface gatewayout7_x3 Direction out
	dict set TopLevelPortInterface gatewayout7_x3 Period 1
	dict set TopLevelPortInterface gatewayout7_x3 Interface 0
	dict set TopLevelPortInterface gatewayout7_x3 InterfaceName {}
	dict set TopLevelPortInterface gatewayout7_x3 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout7_x3 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout7_x3 Locs {}
	dict set TopLevelPortInterface gatewayout7_x3 IOStandard {}
	dict set TopLevelPortInterface gatewayout8_x3 Name {gatewayout8_x3}
	dict set TopLevelPortInterface gatewayout8_x3 Type Fix_16_15
	dict set TopLevelPortInterface gatewayout8_x3 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout8_x3 BinaryPoint 15
	dict set TopLevelPortInterface gatewayout8_x3 Width 16
	dict set TopLevelPortInterface gatewayout8_x3 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_transmit_imag_gatewayout8.dat}
	dict set TopLevelPortInterface gatewayout8_x3 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/transmit_imag/GatewayOut8}
	dict set TopLevelPortInterface gatewayout8_x3 Direction out
	dict set TopLevelPortInterface gatewayout8_x3 Period 1
	dict set TopLevelPortInterface gatewayout8_x3 Interface 0
	dict set TopLevelPortInterface gatewayout8_x3 InterfaceName {}
	dict set TopLevelPortInterface gatewayout8_x3 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout8_x3 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout8_x3 Locs {}
	dict set TopLevelPortInterface gatewayout8_x3 IOStandard {}
	dict set TopLevelPortInterface gatewayout9_x3 Name {gatewayout9_x3}
	dict set TopLevelPortInterface gatewayout9_x3 Type Fix_16_15
	dict set TopLevelPortInterface gatewayout9_x3 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout9_x3 BinaryPoint 15
	dict set TopLevelPortInterface gatewayout9_x3 Width 16
	dict set TopLevelPortInterface gatewayout9_x3 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_transmit_imag_gatewayout9.dat}
	dict set TopLevelPortInterface gatewayout9_x3 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/transmit_imag/GatewayOut9}
	dict set TopLevelPortInterface gatewayout9_x3 Direction out
	dict set TopLevelPortInterface gatewayout9_x3 Period 1
	dict set TopLevelPortInterface gatewayout9_x3 Interface 0
	dict set TopLevelPortInterface gatewayout9_x3 InterfaceName {}
	dict set TopLevelPortInterface gatewayout9_x3 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout9_x3 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout9_x3 Locs {}
	dict set TopLevelPortInterface gatewayout9_x3 IOStandard {}
	dict set TopLevelPortInterface gatewayout10_x3 Name {gatewayout10_x3}
	dict set TopLevelPortInterface gatewayout10_x3 Type Fix_16_15
	dict set TopLevelPortInterface gatewayout10_x3 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout10_x3 BinaryPoint 15
	dict set TopLevelPortInterface gatewayout10_x3 Width 16
	dict set TopLevelPortInterface gatewayout10_x3 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_transmit_imag_gatewayout10.dat}
	dict set TopLevelPortInterface gatewayout10_x3 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/transmit_imag/GatewayOut10}
	dict set TopLevelPortInterface gatewayout10_x3 Direction out
	dict set TopLevelPortInterface gatewayout10_x3 Period 1
	dict set TopLevelPortInterface gatewayout10_x3 Interface 0
	dict set TopLevelPortInterface gatewayout10_x3 InterfaceName {}
	dict set TopLevelPortInterface gatewayout10_x3 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout10_x3 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout10_x3 Locs {}
	dict set TopLevelPortInterface gatewayout10_x3 IOStandard {}
	dict set TopLevelPortInterface gatewayout11_x3 Name {gatewayout11_x3}
	dict set TopLevelPortInterface gatewayout11_x3 Type Fix_16_15
	dict set TopLevelPortInterface gatewayout11_x3 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout11_x3 BinaryPoint 15
	dict set TopLevelPortInterface gatewayout11_x3 Width 16
	dict set TopLevelPortInterface gatewayout11_x3 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_transmit_imag_gatewayout11.dat}
	dict set TopLevelPortInterface gatewayout11_x3 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/transmit_imag/GatewayOut11}
	dict set TopLevelPortInterface gatewayout11_x3 Direction out
	dict set TopLevelPortInterface gatewayout11_x3 Period 1
	dict set TopLevelPortInterface gatewayout11_x3 Interface 0
	dict set TopLevelPortInterface gatewayout11_x3 InterfaceName {}
	dict set TopLevelPortInterface gatewayout11_x3 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout11_x3 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout11_x3 Locs {}
	dict set TopLevelPortInterface gatewayout11_x3 IOStandard {}
	dict set TopLevelPortInterface gatewayout12_x3 Name {gatewayout12_x3}
	dict set TopLevelPortInterface gatewayout12_x3 Type Fix_16_15
	dict set TopLevelPortInterface gatewayout12_x3 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout12_x3 BinaryPoint 15
	dict set TopLevelPortInterface gatewayout12_x3 Width 16
	dict set TopLevelPortInterface gatewayout12_x3 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_transmit_imag_gatewayout12.dat}
	dict set TopLevelPortInterface gatewayout12_x3 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/transmit_imag/GatewayOut12}
	dict set TopLevelPortInterface gatewayout12_x3 Direction out
	dict set TopLevelPortInterface gatewayout12_x3 Period 1
	dict set TopLevelPortInterface gatewayout12_x3 Interface 0
	dict set TopLevelPortInterface gatewayout12_x3 InterfaceName {}
	dict set TopLevelPortInterface gatewayout12_x3 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout12_x3 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout12_x3 Locs {}
	dict set TopLevelPortInterface gatewayout12_x3 IOStandard {}
	dict set TopLevelPortInterface gatewayout13_x3 Name {gatewayout13_x3}
	dict set TopLevelPortInterface gatewayout13_x3 Type Fix_16_15
	dict set TopLevelPortInterface gatewayout13_x3 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout13_x3 BinaryPoint 15
	dict set TopLevelPortInterface gatewayout13_x3 Width 16
	dict set TopLevelPortInterface gatewayout13_x3 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_transmit_imag_gatewayout13.dat}
	dict set TopLevelPortInterface gatewayout13_x3 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/transmit_imag/GatewayOut13}
	dict set TopLevelPortInterface gatewayout13_x3 Direction out
	dict set TopLevelPortInterface gatewayout13_x3 Period 1
	dict set TopLevelPortInterface gatewayout13_x3 Interface 0
	dict set TopLevelPortInterface gatewayout13_x3 InterfaceName {}
	dict set TopLevelPortInterface gatewayout13_x3 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout13_x3 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout13_x3 Locs {}
	dict set TopLevelPortInterface gatewayout13_x3 IOStandard {}
	dict set TopLevelPortInterface gatewayout14_x3 Name {gatewayout14_x3}
	dict set TopLevelPortInterface gatewayout14_x3 Type Fix_16_15
	dict set TopLevelPortInterface gatewayout14_x3 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout14_x3 BinaryPoint 15
	dict set TopLevelPortInterface gatewayout14_x3 Width 16
	dict set TopLevelPortInterface gatewayout14_x3 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_transmit_imag_gatewayout14.dat}
	dict set TopLevelPortInterface gatewayout14_x3 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/transmit_imag/GatewayOut14}
	dict set TopLevelPortInterface gatewayout14_x3 Direction out
	dict set TopLevelPortInterface gatewayout14_x3 Period 1
	dict set TopLevelPortInterface gatewayout14_x3 Interface 0
	dict set TopLevelPortInterface gatewayout14_x3 InterfaceName {}
	dict set TopLevelPortInterface gatewayout14_x3 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout14_x3 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout14_x3 Locs {}
	dict set TopLevelPortInterface gatewayout14_x3 IOStandard {}
	dict set TopLevelPortInterface gatewayout15_x3 Name {gatewayout15_x3}
	dict set TopLevelPortInterface gatewayout15_x3 Type Fix_16_15
	dict set TopLevelPortInterface gatewayout15_x3 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout15_x3 BinaryPoint 15
	dict set TopLevelPortInterface gatewayout15_x3 Width 16
	dict set TopLevelPortInterface gatewayout15_x3 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_transmit_imag_gatewayout15.dat}
	dict set TopLevelPortInterface gatewayout15_x3 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/transmit_imag/GatewayOut15}
	dict set TopLevelPortInterface gatewayout15_x3 Direction out
	dict set TopLevelPortInterface gatewayout15_x3 Period 1
	dict set TopLevelPortInterface gatewayout15_x3 Interface 0
	dict set TopLevelPortInterface gatewayout15_x3 InterfaceName {}
	dict set TopLevelPortInterface gatewayout15_x3 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout15_x3 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout15_x3 Locs {}
	dict set TopLevelPortInterface gatewayout15_x3 IOStandard {}
	dict set TopLevelPortInterface gatewayout0_x3 Name {gatewayout0_x3}
	dict set TopLevelPortInterface gatewayout0_x3 Type Fix_16_15
	dict set TopLevelPortInterface gatewayout0_x3 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout0_x3 BinaryPoint 15
	dict set TopLevelPortInterface gatewayout0_x3 Width 16
	dict set TopLevelPortInterface gatewayout0_x3 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_transmit_real_gatewayout0.dat}
	dict set TopLevelPortInterface gatewayout0_x3 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/transmit_real/GatewayOut0}
	dict set TopLevelPortInterface gatewayout0_x3 Direction out
	dict set TopLevelPortInterface gatewayout0_x3 Period 1
	dict set TopLevelPortInterface gatewayout0_x3 Interface 0
	dict set TopLevelPortInterface gatewayout0_x3 InterfaceName {}
	dict set TopLevelPortInterface gatewayout0_x3 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout0_x3 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout0_x3 Locs {}
	dict set TopLevelPortInterface gatewayout0_x3 IOStandard {}
	dict set TopLevelPortInterface gatewayout1_x3 Name {gatewayout1_x3}
	dict set TopLevelPortInterface gatewayout1_x3 Type Fix_16_15
	dict set TopLevelPortInterface gatewayout1_x3 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout1_x3 BinaryPoint 15
	dict set TopLevelPortInterface gatewayout1_x3 Width 16
	dict set TopLevelPortInterface gatewayout1_x3 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_transmit_real_gatewayout1.dat}
	dict set TopLevelPortInterface gatewayout1_x3 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/transmit_real/GatewayOut1}
	dict set TopLevelPortInterface gatewayout1_x3 Direction out
	dict set TopLevelPortInterface gatewayout1_x3 Period 1
	dict set TopLevelPortInterface gatewayout1_x3 Interface 0
	dict set TopLevelPortInterface gatewayout1_x3 InterfaceName {}
	dict set TopLevelPortInterface gatewayout1_x3 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout1_x3 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout1_x3 Locs {}
	dict set TopLevelPortInterface gatewayout1_x3 IOStandard {}
	dict set TopLevelPortInterface gatewayout2_x3 Name {gatewayout2_x3}
	dict set TopLevelPortInterface gatewayout2_x3 Type Fix_16_15
	dict set TopLevelPortInterface gatewayout2_x3 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout2_x3 BinaryPoint 15
	dict set TopLevelPortInterface gatewayout2_x3 Width 16
	dict set TopLevelPortInterface gatewayout2_x3 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_transmit_real_gatewayout2.dat}
	dict set TopLevelPortInterface gatewayout2_x3 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/transmit_real/GatewayOut2}
	dict set TopLevelPortInterface gatewayout2_x3 Direction out
	dict set TopLevelPortInterface gatewayout2_x3 Period 1
	dict set TopLevelPortInterface gatewayout2_x3 Interface 0
	dict set TopLevelPortInterface gatewayout2_x3 InterfaceName {}
	dict set TopLevelPortInterface gatewayout2_x3 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout2_x3 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout2_x3 Locs {}
	dict set TopLevelPortInterface gatewayout2_x3 IOStandard {}
	dict set TopLevelPortInterface gatewayout3_x4 Name {gatewayout3_x4}
	dict set TopLevelPortInterface gatewayout3_x4 Type Fix_16_15
	dict set TopLevelPortInterface gatewayout3_x4 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout3_x4 BinaryPoint 15
	dict set TopLevelPortInterface gatewayout3_x4 Width 16
	dict set TopLevelPortInterface gatewayout3_x4 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_transmit_real_gatewayout3.dat}
	dict set TopLevelPortInterface gatewayout3_x4 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/transmit_real/GatewayOut3}
	dict set TopLevelPortInterface gatewayout3_x4 Direction out
	dict set TopLevelPortInterface gatewayout3_x4 Period 1
	dict set TopLevelPortInterface gatewayout3_x4 Interface 0
	dict set TopLevelPortInterface gatewayout3_x4 InterfaceName {}
	dict set TopLevelPortInterface gatewayout3_x4 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout3_x4 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout3_x4 Locs {}
	dict set TopLevelPortInterface gatewayout3_x4 IOStandard {}
	dict set TopLevelPortInterface gatewayout4_x4 Name {gatewayout4_x4}
	dict set TopLevelPortInterface gatewayout4_x4 Type Fix_16_15
	dict set TopLevelPortInterface gatewayout4_x4 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout4_x4 BinaryPoint 15
	dict set TopLevelPortInterface gatewayout4_x4 Width 16
	dict set TopLevelPortInterface gatewayout4_x4 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_transmit_real_gatewayout4.dat}
	dict set TopLevelPortInterface gatewayout4_x4 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/transmit_real/GatewayOut4}
	dict set TopLevelPortInterface gatewayout4_x4 Direction out
	dict set TopLevelPortInterface gatewayout4_x4 Period 1
	dict set TopLevelPortInterface gatewayout4_x4 Interface 0
	dict set TopLevelPortInterface gatewayout4_x4 InterfaceName {}
	dict set TopLevelPortInterface gatewayout4_x4 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout4_x4 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout4_x4 Locs {}
	dict set TopLevelPortInterface gatewayout4_x4 IOStandard {}
	dict set TopLevelPortInterface gatewayout5_x4 Name {gatewayout5_x4}
	dict set TopLevelPortInterface gatewayout5_x4 Type Fix_16_15
	dict set TopLevelPortInterface gatewayout5_x4 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout5_x4 BinaryPoint 15
	dict set TopLevelPortInterface gatewayout5_x4 Width 16
	dict set TopLevelPortInterface gatewayout5_x4 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_transmit_real_gatewayout5.dat}
	dict set TopLevelPortInterface gatewayout5_x4 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/transmit_real/GatewayOut5}
	dict set TopLevelPortInterface gatewayout5_x4 Direction out
	dict set TopLevelPortInterface gatewayout5_x4 Period 1
	dict set TopLevelPortInterface gatewayout5_x4 Interface 0
	dict set TopLevelPortInterface gatewayout5_x4 InterfaceName {}
	dict set TopLevelPortInterface gatewayout5_x4 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout5_x4 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout5_x4 Locs {}
	dict set TopLevelPortInterface gatewayout5_x4 IOStandard {}
	dict set TopLevelPortInterface gatewayout6_x4 Name {gatewayout6_x4}
	dict set TopLevelPortInterface gatewayout6_x4 Type Fix_16_15
	dict set TopLevelPortInterface gatewayout6_x4 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout6_x4 BinaryPoint 15
	dict set TopLevelPortInterface gatewayout6_x4 Width 16
	dict set TopLevelPortInterface gatewayout6_x4 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_transmit_real_gatewayout6.dat}
	dict set TopLevelPortInterface gatewayout6_x4 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/transmit_real/GatewayOut6}
	dict set TopLevelPortInterface gatewayout6_x4 Direction out
	dict set TopLevelPortInterface gatewayout6_x4 Period 1
	dict set TopLevelPortInterface gatewayout6_x4 Interface 0
	dict set TopLevelPortInterface gatewayout6_x4 InterfaceName {}
	dict set TopLevelPortInterface gatewayout6_x4 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout6_x4 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout6_x4 Locs {}
	dict set TopLevelPortInterface gatewayout6_x4 IOStandard {}
	dict set TopLevelPortInterface gatewayout7_x4 Name {gatewayout7_x4}
	dict set TopLevelPortInterface gatewayout7_x4 Type Fix_16_15
	dict set TopLevelPortInterface gatewayout7_x4 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout7_x4 BinaryPoint 15
	dict set TopLevelPortInterface gatewayout7_x4 Width 16
	dict set TopLevelPortInterface gatewayout7_x4 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_transmit_real_gatewayout7.dat}
	dict set TopLevelPortInterface gatewayout7_x4 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/transmit_real/GatewayOut7}
	dict set TopLevelPortInterface gatewayout7_x4 Direction out
	dict set TopLevelPortInterface gatewayout7_x4 Period 1
	dict set TopLevelPortInterface gatewayout7_x4 Interface 0
	dict set TopLevelPortInterface gatewayout7_x4 InterfaceName {}
	dict set TopLevelPortInterface gatewayout7_x4 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout7_x4 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout7_x4 Locs {}
	dict set TopLevelPortInterface gatewayout7_x4 IOStandard {}
	dict set TopLevelPortInterface gatewayout8_x4 Name {gatewayout8_x4}
	dict set TopLevelPortInterface gatewayout8_x4 Type Fix_16_15
	dict set TopLevelPortInterface gatewayout8_x4 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout8_x4 BinaryPoint 15
	dict set TopLevelPortInterface gatewayout8_x4 Width 16
	dict set TopLevelPortInterface gatewayout8_x4 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_transmit_real_gatewayout8.dat}
	dict set TopLevelPortInterface gatewayout8_x4 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/transmit_real/GatewayOut8}
	dict set TopLevelPortInterface gatewayout8_x4 Direction out
	dict set TopLevelPortInterface gatewayout8_x4 Period 1
	dict set TopLevelPortInterface gatewayout8_x4 Interface 0
	dict set TopLevelPortInterface gatewayout8_x4 InterfaceName {}
	dict set TopLevelPortInterface gatewayout8_x4 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout8_x4 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout8_x4 Locs {}
	dict set TopLevelPortInterface gatewayout8_x4 IOStandard {}
	dict set TopLevelPortInterface gatewayout9_x4 Name {gatewayout9_x4}
	dict set TopLevelPortInterface gatewayout9_x4 Type Fix_16_15
	dict set TopLevelPortInterface gatewayout9_x4 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout9_x4 BinaryPoint 15
	dict set TopLevelPortInterface gatewayout9_x4 Width 16
	dict set TopLevelPortInterface gatewayout9_x4 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_transmit_real_gatewayout9.dat}
	dict set TopLevelPortInterface gatewayout9_x4 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/transmit_real/GatewayOut9}
	dict set TopLevelPortInterface gatewayout9_x4 Direction out
	dict set TopLevelPortInterface gatewayout9_x4 Period 1
	dict set TopLevelPortInterface gatewayout9_x4 Interface 0
	dict set TopLevelPortInterface gatewayout9_x4 InterfaceName {}
	dict set TopLevelPortInterface gatewayout9_x4 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout9_x4 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout9_x4 Locs {}
	dict set TopLevelPortInterface gatewayout9_x4 IOStandard {}
	dict set TopLevelPortInterface gatewayout10_x4 Name {gatewayout10_x4}
	dict set TopLevelPortInterface gatewayout10_x4 Type Fix_16_15
	dict set TopLevelPortInterface gatewayout10_x4 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout10_x4 BinaryPoint 15
	dict set TopLevelPortInterface gatewayout10_x4 Width 16
	dict set TopLevelPortInterface gatewayout10_x4 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_transmit_real_gatewayout10.dat}
	dict set TopLevelPortInterface gatewayout10_x4 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/transmit_real/GatewayOut10}
	dict set TopLevelPortInterface gatewayout10_x4 Direction out
	dict set TopLevelPortInterface gatewayout10_x4 Period 1
	dict set TopLevelPortInterface gatewayout10_x4 Interface 0
	dict set TopLevelPortInterface gatewayout10_x4 InterfaceName {}
	dict set TopLevelPortInterface gatewayout10_x4 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout10_x4 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout10_x4 Locs {}
	dict set TopLevelPortInterface gatewayout10_x4 IOStandard {}
	dict set TopLevelPortInterface gatewayout11_x4 Name {gatewayout11_x4}
	dict set TopLevelPortInterface gatewayout11_x4 Type Fix_16_15
	dict set TopLevelPortInterface gatewayout11_x4 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout11_x4 BinaryPoint 15
	dict set TopLevelPortInterface gatewayout11_x4 Width 16
	dict set TopLevelPortInterface gatewayout11_x4 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_transmit_real_gatewayout11.dat}
	dict set TopLevelPortInterface gatewayout11_x4 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/transmit_real/GatewayOut11}
	dict set TopLevelPortInterface gatewayout11_x4 Direction out
	dict set TopLevelPortInterface gatewayout11_x4 Period 1
	dict set TopLevelPortInterface gatewayout11_x4 Interface 0
	dict set TopLevelPortInterface gatewayout11_x4 InterfaceName {}
	dict set TopLevelPortInterface gatewayout11_x4 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout11_x4 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout11_x4 Locs {}
	dict set TopLevelPortInterface gatewayout11_x4 IOStandard {}
	dict set TopLevelPortInterface gatewayout12_x4 Name {gatewayout12_x4}
	dict set TopLevelPortInterface gatewayout12_x4 Type Fix_16_15
	dict set TopLevelPortInterface gatewayout12_x4 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout12_x4 BinaryPoint 15
	dict set TopLevelPortInterface gatewayout12_x4 Width 16
	dict set TopLevelPortInterface gatewayout12_x4 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_transmit_real_gatewayout12.dat}
	dict set TopLevelPortInterface gatewayout12_x4 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/transmit_real/GatewayOut12}
	dict set TopLevelPortInterface gatewayout12_x4 Direction out
	dict set TopLevelPortInterface gatewayout12_x4 Period 1
	dict set TopLevelPortInterface gatewayout12_x4 Interface 0
	dict set TopLevelPortInterface gatewayout12_x4 InterfaceName {}
	dict set TopLevelPortInterface gatewayout12_x4 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout12_x4 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout12_x4 Locs {}
	dict set TopLevelPortInterface gatewayout12_x4 IOStandard {}
	dict set TopLevelPortInterface gatewayout13_x4 Name {gatewayout13_x4}
	dict set TopLevelPortInterface gatewayout13_x4 Type Fix_16_15
	dict set TopLevelPortInterface gatewayout13_x4 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout13_x4 BinaryPoint 15
	dict set TopLevelPortInterface gatewayout13_x4 Width 16
	dict set TopLevelPortInterface gatewayout13_x4 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_transmit_real_gatewayout13.dat}
	dict set TopLevelPortInterface gatewayout13_x4 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/transmit_real/GatewayOut13}
	dict set TopLevelPortInterface gatewayout13_x4 Direction out
	dict set TopLevelPortInterface gatewayout13_x4 Period 1
	dict set TopLevelPortInterface gatewayout13_x4 Interface 0
	dict set TopLevelPortInterface gatewayout13_x4 InterfaceName {}
	dict set TopLevelPortInterface gatewayout13_x4 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout13_x4 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout13_x4 Locs {}
	dict set TopLevelPortInterface gatewayout13_x4 IOStandard {}
	dict set TopLevelPortInterface gatewayout14_x4 Name {gatewayout14_x4}
	dict set TopLevelPortInterface gatewayout14_x4 Type Fix_16_15
	dict set TopLevelPortInterface gatewayout14_x4 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout14_x4 BinaryPoint 15
	dict set TopLevelPortInterface gatewayout14_x4 Width 16
	dict set TopLevelPortInterface gatewayout14_x4 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_transmit_real_gatewayout14.dat}
	dict set TopLevelPortInterface gatewayout14_x4 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/transmit_real/GatewayOut14}
	dict set TopLevelPortInterface gatewayout14_x4 Direction out
	dict set TopLevelPortInterface gatewayout14_x4 Period 1
	dict set TopLevelPortInterface gatewayout14_x4 Interface 0
	dict set TopLevelPortInterface gatewayout14_x4 InterfaceName {}
	dict set TopLevelPortInterface gatewayout14_x4 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout14_x4 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout14_x4 Locs {}
	dict set TopLevelPortInterface gatewayout14_x4 IOStandard {}
	dict set TopLevelPortInterface gatewayout15_x4 Name {gatewayout15_x4}
	dict set TopLevelPortInterface gatewayout15_x4 Type Fix_16_15
	dict set TopLevelPortInterface gatewayout15_x4 ArithmeticType xlSigned
	dict set TopLevelPortInterface gatewayout15_x4 BinaryPoint 15
	dict set TopLevelPortInterface gatewayout15_x4 Width 16
	dict set TopLevelPortInterface gatewayout15_x4 DatFile {receivetransmitchai_jan31st2022_analysis_analysis_transmit_real_gatewayout15.dat}
	dict set TopLevelPortInterface gatewayout15_x4 IconText {ReceiveTransmitChai_Jan31st2022/analysis/analysis/transmit_real/GatewayOut15}
	dict set TopLevelPortInterface gatewayout15_x4 Direction out
	dict set TopLevelPortInterface gatewayout15_x4 Period 1
	dict set TopLevelPortInterface gatewayout15_x4 Interface 0
	dict set TopLevelPortInterface gatewayout15_x4 InterfaceName {}
	dict set TopLevelPortInterface gatewayout15_x4 InterfaceString {DATA}
	dict set TopLevelPortInterface gatewayout15_x4 ClockDomain {analysis}
	dict set TopLevelPortInterface gatewayout15_x4 Locs {}
	dict set TopLevelPortInterface gatewayout15_x4 IOStandard {}
	dict set TopLevelPortInterface clk Name {clk}
	dict set TopLevelPortInterface clk Type -
	dict set TopLevelPortInterface clk ArithmeticType xlUnsigned
	dict set TopLevelPortInterface clk BinaryPoint 0
	dict set TopLevelPortInterface clk Width 1
	dict set TopLevelPortInterface clk DatFile {}
	dict set TopLevelPortInterface clk Direction in
	dict set TopLevelPortInterface clk Period 1
	dict set TopLevelPortInterface clk Interface 6
	dict set TopLevelPortInterface clk InterfaceName {}
	dict set TopLevelPortInterface clk InterfaceString {CLOCK}
	dict set TopLevelPortInterface clk ClockDomain {analysis}
	dict set TopLevelPortInterface clk Locs {}
	dict set TopLevelPortInterface clk IOStandard {}
	dict set TopLevelPortInterface clk AssociatedInterfaces {}
	dict set TopLevelPortInterface clk AssociatedResets {}
	set MemoryMappedPort {}
}

source SgPaProject.tcl
::xilinx::dsp::planaheadworker::dsp_create_project