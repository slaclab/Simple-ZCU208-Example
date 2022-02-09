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
	set IP_Revision {275242809}
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
		{{analysis.mdd}}
		{{analysis_hw.h}}
		{{analysis.h}}
		{{analysis_sinit.c}}
		{{analysis.c}}
		{{analysis_linux.c}}
		{{analysis.mtcl}}
		{{Makefile.mak}}
		{{index.html}}
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
	set TargetDir {/afs/slac.stanford.edu/u/re/lilima/projects/Smurf/RFSoC_dev/Simple-ZCU208-Example/firmware/shared/simulink/netlist}
	set TopLevelModule {analysis}
	set TopLevelSimulinkHandle 2.00012
	set TopLevelPortInterface {}
	dict set TopLevelPortInterface valid1_dealy Name {valid1_dealy}
	dict set TopLevelPortInterface valid1_dealy Type UFix_10_0
	dict set TopLevelPortInterface valid1_dealy ArithmeticType xlUnsigned
	dict set TopLevelPortInterface valid1_dealy BinaryPoint 0
	dict set TopLevelPortInterface valid1_dealy Width 10
	dict set TopLevelPortInterface valid1_dealy DatFile {receivetransmitchain_feb7th2022_analysis_analysis_dif_fft_valid1_dealy.dat}
	dict set TopLevelPortInterface valid1_dealy IconText {valid1_dealy}
	dict set TopLevelPortInterface valid1_dealy Direction in
	dict set TopLevelPortInterface valid1_dealy Period 1
	dict set TopLevelPortInterface valid1_dealy Interface 0
	dict set TopLevelPortInterface valid1_dealy InterfaceName {}
	dict set TopLevelPortInterface valid1_dealy InterfaceString {DATA}
	dict set TopLevelPortInterface valid1_dealy ClockDomain {analysis}
	dict set TopLevelPortInterface valid1_dealy Locs {}
	dict set TopLevelPortInterface valid1_dealy IOStandard {}
	dict set TopLevelPortInterface reset Name {reset}
	dict set TopLevelPortInterface reset Type Bool
	dict set TopLevelPortInterface reset ArithmeticType xlUnsigned
	dict set TopLevelPortInterface reset BinaryPoint 0
	dict set TopLevelPortInterface reset Width 1
	dict set TopLevelPortInterface reset DatFile {receivetransmitchain_feb7th2022_analysis_analysis_reset.dat}
	dict set TopLevelPortInterface reset IconText {reset}
	dict set TopLevelPortInterface reset Direction in
	dict set TopLevelPortInterface reset Period 1
	dict set TopLevelPortInterface reset Interface 0
	dict set TopLevelPortInterface reset InterfaceName {}
	dict set TopLevelPortInterface reset InterfaceString {DATA}
	dict set TopLevelPortInterface reset ClockDomain {analysis}
	dict set TopLevelPortInterface reset Locs {}
	dict set TopLevelPortInterface reset IOStandard {}
	dict set TopLevelPortInterface adc_real Name {adc_real}
	dict set TopLevelPortInterface adc_real Type UFix_256_0
	dict set TopLevelPortInterface adc_real ArithmeticType xlUnsigned
	dict set TopLevelPortInterface adc_real BinaryPoint 0
	dict set TopLevelPortInterface adc_real Width 256
	dict set TopLevelPortInterface adc_real DatFile {receivetransmitchain_feb7th2022_analysis_analysis_adc_real.dat}
	dict set TopLevelPortInterface adc_real IconText {ADC_real}
	dict set TopLevelPortInterface adc_real Direction in
	dict set TopLevelPortInterface adc_real Period 1
	dict set TopLevelPortInterface adc_real Interface 0
	dict set TopLevelPortInterface adc_real InterfaceName {}
	dict set TopLevelPortInterface adc_real InterfaceString {DATA}
	dict set TopLevelPortInterface adc_real ClockDomain {analysis}
	dict set TopLevelPortInterface adc_real Locs {}
	dict set TopLevelPortInterface adc_real IOStandard {}
	dict set TopLevelPortInterface adc_imag Name {adc_imag}
	dict set TopLevelPortInterface adc_imag Type UFix_256_0
	dict set TopLevelPortInterface adc_imag ArithmeticType xlUnsigned
	dict set TopLevelPortInterface adc_imag BinaryPoint 0
	dict set TopLevelPortInterface adc_imag Width 256
	dict set TopLevelPortInterface adc_imag DatFile {receivetransmitchain_feb7th2022_analysis_analysis_adc_imag.dat}
	dict set TopLevelPortInterface adc_imag IconText {ADC_imag}
	dict set TopLevelPortInterface adc_imag Direction in
	dict set TopLevelPortInterface adc_imag Period 1
	dict set TopLevelPortInterface adc_imag Interface 0
	dict set TopLevelPortInterface adc_imag InterfaceName {}
	dict set TopLevelPortInterface adc_imag InterfaceString {DATA}
	dict set TopLevelPortInterface adc_imag ClockDomain {analysis}
	dict set TopLevelPortInterface adc_imag Locs {}
	dict set TopLevelPortInterface adc_imag IOStandard {}
	dict set TopLevelPortInterface receive_vo1 Name {receive_vo1}
	dict set TopLevelPortInterface receive_vo1 Type Bool
	dict set TopLevelPortInterface receive_vo1 ArithmeticType xlUnsigned
	dict set TopLevelPortInterface receive_vo1 BinaryPoint 0
	dict set TopLevelPortInterface receive_vo1 Width 1
	dict set TopLevelPortInterface receive_vo1 DatFile {receivetransmitchain_feb7th2022_analysis_analysis_dif_fft_receive_vo1.dat}
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
	dict set TopLevelPortInterface receive_vo2 DatFile {receivetransmitchain_feb7th2022_analysis_analysis_dif_fft_receive_vo2.dat}
	dict set TopLevelPortInterface receive_vo2 IconText {receive_vo2}
	dict set TopLevelPortInterface receive_vo2 Direction out
	dict set TopLevelPortInterface receive_vo2 Period 1
	dict set TopLevelPortInterface receive_vo2 Interface 0
	dict set TopLevelPortInterface receive_vo2 InterfaceName {}
	dict set TopLevelPortInterface receive_vo2 InterfaceString {DATA}
	dict set TopLevelPortInterface receive_vo2 ClockDomain {analysis}
	dict set TopLevelPortInterface receive_vo2 Locs {}
	dict set TopLevelPortInterface receive_vo2 IOStandard {}
	dict set TopLevelPortInterface evenimag Name {evenimag}
	dict set TopLevelPortInterface evenimag Type UFix_256_0
	dict set TopLevelPortInterface evenimag ArithmeticType xlUnsigned
	dict set TopLevelPortInterface evenimag BinaryPoint 0
	dict set TopLevelPortInterface evenimag Width 256
	dict set TopLevelPortInterface evenimag DatFile {receivetransmitchain_feb7th2022_analysis_analysis_dif_fft_vector2scalar_evenimag.dat}
	dict set TopLevelPortInterface evenimag IconText {evenimag}
	dict set TopLevelPortInterface evenimag Direction out
	dict set TopLevelPortInterface evenimag Period 1
	dict set TopLevelPortInterface evenimag Interface 0
	dict set TopLevelPortInterface evenimag InterfaceName {}
	dict set TopLevelPortInterface evenimag InterfaceString {DATA}
	dict set TopLevelPortInterface evenimag ClockDomain {analysis}
	dict set TopLevelPortInterface evenimag Locs {}
	dict set TopLevelPortInterface evenimag IOStandard {}
	dict set TopLevelPortInterface evenreal Name {evenreal}
	dict set TopLevelPortInterface evenreal Type UFix_256_0
	dict set TopLevelPortInterface evenreal ArithmeticType xlUnsigned
	dict set TopLevelPortInterface evenreal BinaryPoint 0
	dict set TopLevelPortInterface evenreal Width 256
	dict set TopLevelPortInterface evenreal DatFile {receivetransmitchain_feb7th2022_analysis_analysis_dif_fft_vector2scalar_evenreal.dat}
	dict set TopLevelPortInterface evenreal IconText {evenreal}
	dict set TopLevelPortInterface evenreal Direction out
	dict set TopLevelPortInterface evenreal Period 1
	dict set TopLevelPortInterface evenreal Interface 0
	dict set TopLevelPortInterface evenreal InterfaceName {}
	dict set TopLevelPortInterface evenreal InterfaceString {DATA}
	dict set TopLevelPortInterface evenreal ClockDomain {analysis}
	dict set TopLevelPortInterface evenreal Locs {}
	dict set TopLevelPortInterface evenreal IOStandard {}
	dict set TopLevelPortInterface oddimag Name {oddimag}
	dict set TopLevelPortInterface oddimag Type UFix_256_0
	dict set TopLevelPortInterface oddimag ArithmeticType xlUnsigned
	dict set TopLevelPortInterface oddimag BinaryPoint 0
	dict set TopLevelPortInterface oddimag Width 256
	dict set TopLevelPortInterface oddimag DatFile {receivetransmitchain_feb7th2022_analysis_analysis_dif_fft_vector2scalar_oddimag.dat}
	dict set TopLevelPortInterface oddimag IconText {oddimag}
	dict set TopLevelPortInterface oddimag Direction out
	dict set TopLevelPortInterface oddimag Period 1
	dict set TopLevelPortInterface oddimag Interface 0
	dict set TopLevelPortInterface oddimag InterfaceName {}
	dict set TopLevelPortInterface oddimag InterfaceString {DATA}
	dict set TopLevelPortInterface oddimag ClockDomain {analysis}
	dict set TopLevelPortInterface oddimag Locs {}
	dict set TopLevelPortInterface oddimag IOStandard {}
	dict set TopLevelPortInterface oddreal Name {oddreal}
	dict set TopLevelPortInterface oddreal Type UFix_256_0
	dict set TopLevelPortInterface oddreal ArithmeticType xlUnsigned
	dict set TopLevelPortInterface oddreal BinaryPoint 0
	dict set TopLevelPortInterface oddreal Width 256
	dict set TopLevelPortInterface oddreal DatFile {receivetransmitchain_feb7th2022_analysis_analysis_dif_fft_vector2scalar_oddreal.dat}
	dict set TopLevelPortInterface oddreal IconText {oddreal}
	dict set TopLevelPortInterface oddreal Direction out
	dict set TopLevelPortInterface oddreal Period 1
	dict set TopLevelPortInterface oddreal Interface 0
	dict set TopLevelPortInterface oddreal InterfaceName {}
	dict set TopLevelPortInterface oddreal InterfaceString {DATA}
	dict set TopLevelPortInterface oddreal ClockDomain {analysis}
	dict set TopLevelPortInterface oddreal Locs {}
	dict set TopLevelPortInterface oddreal IOStandard {}
	dict set TopLevelPortInterface ifft_opvalid Name {ifft_opvalid}
	dict set TopLevelPortInterface ifft_opvalid Type Bool
	dict set TopLevelPortInterface ifft_opvalid ArithmeticType xlUnsigned
	dict set TopLevelPortInterface ifft_opvalid BinaryPoint 0
	dict set TopLevelPortInterface ifft_opvalid Width 1
	dict set TopLevelPortInterface ifft_opvalid DatFile {receivetransmitchain_feb7th2022_analysis_analysis_dit_ifft_ifft_opvalid.dat}
	dict set TopLevelPortInterface ifft_opvalid IconText {ifft_opvalid}
	dict set TopLevelPortInterface ifft_opvalid Direction out
	dict set TopLevelPortInterface ifft_opvalid Period 1
	dict set TopLevelPortInterface ifft_opvalid Interface 0
	dict set TopLevelPortInterface ifft_opvalid InterfaceName {}
	dict set TopLevelPortInterface ifft_opvalid InterfaceString {DATA}
	dict set TopLevelPortInterface ifft_opvalid ClockDomain {analysis}
	dict set TopLevelPortInterface ifft_opvalid Locs {}
	dict set TopLevelPortInterface ifft_opvalid IOStandard {}
	dict set TopLevelPortInterface dacimag Name {dacimag}
	dict set TopLevelPortInterface dacimag Type UFix_256_0
	dict set TopLevelPortInterface dacimag ArithmeticType xlUnsigned
	dict set TopLevelPortInterface dacimag BinaryPoint 0
	dict set TopLevelPortInterface dacimag Width 256
	dict set TopLevelPortInterface dacimag DatFile {receivetransmitchain_feb7th2022_analysis_analysis_analysis_pipelined1_vector2scalar1_dacimag.dat}
	dict set TopLevelPortInterface dacimag IconText {DACimag}
	dict set TopLevelPortInterface dacimag Direction out
	dict set TopLevelPortInterface dacimag Period 1
	dict set TopLevelPortInterface dacimag Interface 0
	dict set TopLevelPortInterface dacimag InterfaceName {}
	dict set TopLevelPortInterface dacimag InterfaceString {DATA}
	dict set TopLevelPortInterface dacimag ClockDomain {analysis}
	dict set TopLevelPortInterface dacimag Locs {}
	dict set TopLevelPortInterface dacimag IOStandard {}
	dict set TopLevelPortInterface dacreal Name {dacreal}
	dict set TopLevelPortInterface dacreal Type UFix_256_0
	dict set TopLevelPortInterface dacreal ArithmeticType xlUnsigned
	dict set TopLevelPortInterface dacreal BinaryPoint 0
	dict set TopLevelPortInterface dacreal Width 256
	dict set TopLevelPortInterface dacreal DatFile {receivetransmitchain_feb7th2022_analysis_analysis_analysis_pipelined1_vector2scalar1_dacreal.dat}
	dict set TopLevelPortInterface dacreal IconText {DACreal}
	dict set TopLevelPortInterface dacreal Direction out
	dict set TopLevelPortInterface dacreal Period 1
	dict set TopLevelPortInterface dacreal Interface 0
	dict set TopLevelPortInterface dacreal InterfaceName {}
	dict set TopLevelPortInterface dacreal InterfaceString {DATA}
	dict set TopLevelPortInterface dacreal ClockDomain {analysis}
	dict set TopLevelPortInterface dacreal Locs {}
	dict set TopLevelPortInterface dacreal IOStandard {}
	dict set TopLevelPortInterface analysis_aresetn Name {analysis_aresetn}
	dict set TopLevelPortInterface analysis_aresetn Type -
	dict set TopLevelPortInterface analysis_aresetn ArithmeticType xlUnsigned
	dict set TopLevelPortInterface analysis_aresetn BinaryPoint 0
	dict set TopLevelPortInterface analysis_aresetn Width 1
	dict set TopLevelPortInterface analysis_aresetn DatFile {}
	dict set TopLevelPortInterface analysis_aresetn IconText {analysis_aresetn}
	dict set TopLevelPortInterface analysis_aresetn Direction in
	dict set TopLevelPortInterface analysis_aresetn Period 1
	dict set TopLevelPortInterface analysis_aresetn Interface 8
	dict set TopLevelPortInterface analysis_aresetn InterfaceName {}
	dict set TopLevelPortInterface analysis_aresetn InterfaceString {ARESETN}
	dict set TopLevelPortInterface analysis_aresetn ClockDomain {}
	dict set TopLevelPortInterface analysis_aresetn Locs {}
	dict set TopLevelPortInterface analysis_aresetn IOStandard {}
	dict set TopLevelPortInterface analysis_s_axi_awaddr Name {analysis_s_axi_awaddr}
	dict set TopLevelPortInterface analysis_s_axi_awaddr Type -
	dict set TopLevelPortInterface analysis_s_axi_awaddr ArithmeticType xlUnsigned
	dict set TopLevelPortInterface analysis_s_axi_awaddr BinaryPoint 0
	dict set TopLevelPortInterface analysis_s_axi_awaddr Width 5
	dict set TopLevelPortInterface analysis_s_axi_awaddr DatFile {}
	dict set TopLevelPortInterface analysis_s_axi_awaddr IconText {analysis_s_axi_awaddr}
	dict set TopLevelPortInterface analysis_s_axi_awaddr Direction in
	dict set TopLevelPortInterface analysis_s_axi_awaddr Period 1
	dict set TopLevelPortInterface analysis_s_axi_awaddr Interface 5
	dict set TopLevelPortInterface analysis_s_axi_awaddr InterfaceName {}
	dict set TopLevelPortInterface analysis_s_axi_awaddr InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface analysis_s_axi_awaddr ClockDomain {}
	dict set TopLevelPortInterface analysis_s_axi_awaddr Locs {}
	dict set TopLevelPortInterface analysis_s_axi_awaddr IOStandard {}
	dict set TopLevelPortInterface analysis_s_axi_awvalid Name {analysis_s_axi_awvalid}
	dict set TopLevelPortInterface analysis_s_axi_awvalid Type -
	dict set TopLevelPortInterface analysis_s_axi_awvalid ArithmeticType xlUnsigned
	dict set TopLevelPortInterface analysis_s_axi_awvalid BinaryPoint 0
	dict set TopLevelPortInterface analysis_s_axi_awvalid Width 1
	dict set TopLevelPortInterface analysis_s_axi_awvalid DatFile {}
	dict set TopLevelPortInterface analysis_s_axi_awvalid IconText {analysis_s_axi_awvalid}
	dict set TopLevelPortInterface analysis_s_axi_awvalid Direction in
	dict set TopLevelPortInterface analysis_s_axi_awvalid Period 1
	dict set TopLevelPortInterface analysis_s_axi_awvalid Interface 5
	dict set TopLevelPortInterface analysis_s_axi_awvalid InterfaceName {}
	dict set TopLevelPortInterface analysis_s_axi_awvalid InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface analysis_s_axi_awvalid ClockDomain {}
	dict set TopLevelPortInterface analysis_s_axi_awvalid Locs {}
	dict set TopLevelPortInterface analysis_s_axi_awvalid IOStandard {}
	dict set TopLevelPortInterface analysis_s_axi_awready Name {analysis_s_axi_awready}
	dict set TopLevelPortInterface analysis_s_axi_awready Type -
	dict set TopLevelPortInterface analysis_s_axi_awready ArithmeticType xlUnsigned
	dict set TopLevelPortInterface analysis_s_axi_awready BinaryPoint 0
	dict set TopLevelPortInterface analysis_s_axi_awready Width 1
	dict set TopLevelPortInterface analysis_s_axi_awready DatFile {}
	dict set TopLevelPortInterface analysis_s_axi_awready IconText {analysis_s_axi_awready}
	dict set TopLevelPortInterface analysis_s_axi_awready Direction out
	dict set TopLevelPortInterface analysis_s_axi_awready Period 1
	dict set TopLevelPortInterface analysis_s_axi_awready Interface 5
	dict set TopLevelPortInterface analysis_s_axi_awready InterfaceName {}
	dict set TopLevelPortInterface analysis_s_axi_awready InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface analysis_s_axi_awready ClockDomain {}
	dict set TopLevelPortInterface analysis_s_axi_awready Locs {}
	dict set TopLevelPortInterface analysis_s_axi_awready IOStandard {}
	dict set TopLevelPortInterface analysis_s_axi_wdata Name {analysis_s_axi_wdata}
	dict set TopLevelPortInterface analysis_s_axi_wdata Type -
	dict set TopLevelPortInterface analysis_s_axi_wdata ArithmeticType xlUnsigned
	dict set TopLevelPortInterface analysis_s_axi_wdata BinaryPoint 0
	dict set TopLevelPortInterface analysis_s_axi_wdata Width 32
	dict set TopLevelPortInterface analysis_s_axi_wdata DatFile {}
	dict set TopLevelPortInterface analysis_s_axi_wdata IconText {analysis_s_axi_wdata}
	dict set TopLevelPortInterface analysis_s_axi_wdata Direction in
	dict set TopLevelPortInterface analysis_s_axi_wdata Period 1
	dict set TopLevelPortInterface analysis_s_axi_wdata Interface 5
	dict set TopLevelPortInterface analysis_s_axi_wdata InterfaceName {}
	dict set TopLevelPortInterface analysis_s_axi_wdata InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface analysis_s_axi_wdata ClockDomain {}
	dict set TopLevelPortInterface analysis_s_axi_wdata Locs {}
	dict set TopLevelPortInterface analysis_s_axi_wdata IOStandard {}
	dict set TopLevelPortInterface analysis_s_axi_wstrb Name {analysis_s_axi_wstrb}
	dict set TopLevelPortInterface analysis_s_axi_wstrb Type -
	dict set TopLevelPortInterface analysis_s_axi_wstrb ArithmeticType xlUnsigned
	dict set TopLevelPortInterface analysis_s_axi_wstrb BinaryPoint 0
	dict set TopLevelPortInterface analysis_s_axi_wstrb Width 4
	dict set TopLevelPortInterface analysis_s_axi_wstrb DatFile {}
	dict set TopLevelPortInterface analysis_s_axi_wstrb IconText {analysis_s_axi_wstrb}
	dict set TopLevelPortInterface analysis_s_axi_wstrb Direction in
	dict set TopLevelPortInterface analysis_s_axi_wstrb Period 1
	dict set TopLevelPortInterface analysis_s_axi_wstrb Interface 5
	dict set TopLevelPortInterface analysis_s_axi_wstrb InterfaceName {}
	dict set TopLevelPortInterface analysis_s_axi_wstrb InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface analysis_s_axi_wstrb ClockDomain {}
	dict set TopLevelPortInterface analysis_s_axi_wstrb Locs {}
	dict set TopLevelPortInterface analysis_s_axi_wstrb IOStandard {}
	dict set TopLevelPortInterface analysis_s_axi_wvalid Name {analysis_s_axi_wvalid}
	dict set TopLevelPortInterface analysis_s_axi_wvalid Type -
	dict set TopLevelPortInterface analysis_s_axi_wvalid ArithmeticType xlUnsigned
	dict set TopLevelPortInterface analysis_s_axi_wvalid BinaryPoint 0
	dict set TopLevelPortInterface analysis_s_axi_wvalid Width 1
	dict set TopLevelPortInterface analysis_s_axi_wvalid DatFile {}
	dict set TopLevelPortInterface analysis_s_axi_wvalid IconText {analysis_s_axi_wvalid}
	dict set TopLevelPortInterface analysis_s_axi_wvalid Direction in
	dict set TopLevelPortInterface analysis_s_axi_wvalid Period 1
	dict set TopLevelPortInterface analysis_s_axi_wvalid Interface 5
	dict set TopLevelPortInterface analysis_s_axi_wvalid InterfaceName {}
	dict set TopLevelPortInterface analysis_s_axi_wvalid InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface analysis_s_axi_wvalid ClockDomain {}
	dict set TopLevelPortInterface analysis_s_axi_wvalid Locs {}
	dict set TopLevelPortInterface analysis_s_axi_wvalid IOStandard {}
	dict set TopLevelPortInterface analysis_s_axi_wready Name {analysis_s_axi_wready}
	dict set TopLevelPortInterface analysis_s_axi_wready Type -
	dict set TopLevelPortInterface analysis_s_axi_wready ArithmeticType xlUnsigned
	dict set TopLevelPortInterface analysis_s_axi_wready BinaryPoint 0
	dict set TopLevelPortInterface analysis_s_axi_wready Width 1
	dict set TopLevelPortInterface analysis_s_axi_wready DatFile {}
	dict set TopLevelPortInterface analysis_s_axi_wready IconText {analysis_s_axi_wready}
	dict set TopLevelPortInterface analysis_s_axi_wready Direction out
	dict set TopLevelPortInterface analysis_s_axi_wready Period 1
	dict set TopLevelPortInterface analysis_s_axi_wready Interface 5
	dict set TopLevelPortInterface analysis_s_axi_wready InterfaceName {}
	dict set TopLevelPortInterface analysis_s_axi_wready InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface analysis_s_axi_wready ClockDomain {}
	dict set TopLevelPortInterface analysis_s_axi_wready Locs {}
	dict set TopLevelPortInterface analysis_s_axi_wready IOStandard {}
	dict set TopLevelPortInterface analysis_s_axi_bresp Name {analysis_s_axi_bresp}
	dict set TopLevelPortInterface analysis_s_axi_bresp Type -
	dict set TopLevelPortInterface analysis_s_axi_bresp ArithmeticType xlUnsigned
	dict set TopLevelPortInterface analysis_s_axi_bresp BinaryPoint 0
	dict set TopLevelPortInterface analysis_s_axi_bresp Width 2
	dict set TopLevelPortInterface analysis_s_axi_bresp DatFile {}
	dict set TopLevelPortInterface analysis_s_axi_bresp IconText {analysis_s_axi_bresp}
	dict set TopLevelPortInterface analysis_s_axi_bresp Direction out
	dict set TopLevelPortInterface analysis_s_axi_bresp Period 1
	dict set TopLevelPortInterface analysis_s_axi_bresp Interface 5
	dict set TopLevelPortInterface analysis_s_axi_bresp InterfaceName {}
	dict set TopLevelPortInterface analysis_s_axi_bresp InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface analysis_s_axi_bresp ClockDomain {}
	dict set TopLevelPortInterface analysis_s_axi_bresp Locs {}
	dict set TopLevelPortInterface analysis_s_axi_bresp IOStandard {}
	dict set TopLevelPortInterface analysis_s_axi_bvalid Name {analysis_s_axi_bvalid}
	dict set TopLevelPortInterface analysis_s_axi_bvalid Type -
	dict set TopLevelPortInterface analysis_s_axi_bvalid ArithmeticType xlUnsigned
	dict set TopLevelPortInterface analysis_s_axi_bvalid BinaryPoint 0
	dict set TopLevelPortInterface analysis_s_axi_bvalid Width 1
	dict set TopLevelPortInterface analysis_s_axi_bvalid DatFile {}
	dict set TopLevelPortInterface analysis_s_axi_bvalid IconText {analysis_s_axi_bvalid}
	dict set TopLevelPortInterface analysis_s_axi_bvalid Direction out
	dict set TopLevelPortInterface analysis_s_axi_bvalid Period 1
	dict set TopLevelPortInterface analysis_s_axi_bvalid Interface 5
	dict set TopLevelPortInterface analysis_s_axi_bvalid InterfaceName {}
	dict set TopLevelPortInterface analysis_s_axi_bvalid InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface analysis_s_axi_bvalid ClockDomain {}
	dict set TopLevelPortInterface analysis_s_axi_bvalid Locs {}
	dict set TopLevelPortInterface analysis_s_axi_bvalid IOStandard {}
	dict set TopLevelPortInterface analysis_s_axi_bready Name {analysis_s_axi_bready}
	dict set TopLevelPortInterface analysis_s_axi_bready Type -
	dict set TopLevelPortInterface analysis_s_axi_bready ArithmeticType xlUnsigned
	dict set TopLevelPortInterface analysis_s_axi_bready BinaryPoint 0
	dict set TopLevelPortInterface analysis_s_axi_bready Width 1
	dict set TopLevelPortInterface analysis_s_axi_bready DatFile {}
	dict set TopLevelPortInterface analysis_s_axi_bready IconText {analysis_s_axi_bready}
	dict set TopLevelPortInterface analysis_s_axi_bready Direction in
	dict set TopLevelPortInterface analysis_s_axi_bready Period 1
	dict set TopLevelPortInterface analysis_s_axi_bready Interface 5
	dict set TopLevelPortInterface analysis_s_axi_bready InterfaceName {}
	dict set TopLevelPortInterface analysis_s_axi_bready InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface analysis_s_axi_bready ClockDomain {}
	dict set TopLevelPortInterface analysis_s_axi_bready Locs {}
	dict set TopLevelPortInterface analysis_s_axi_bready IOStandard {}
	dict set TopLevelPortInterface analysis_s_axi_araddr Name {analysis_s_axi_araddr}
	dict set TopLevelPortInterface analysis_s_axi_araddr Type -
	dict set TopLevelPortInterface analysis_s_axi_araddr ArithmeticType xlUnsigned
	dict set TopLevelPortInterface analysis_s_axi_araddr BinaryPoint 0
	dict set TopLevelPortInterface analysis_s_axi_araddr Width 5
	dict set TopLevelPortInterface analysis_s_axi_araddr DatFile {}
	dict set TopLevelPortInterface analysis_s_axi_araddr IconText {analysis_s_axi_araddr}
	dict set TopLevelPortInterface analysis_s_axi_araddr Direction in
	dict set TopLevelPortInterface analysis_s_axi_araddr Period 1
	dict set TopLevelPortInterface analysis_s_axi_araddr Interface 5
	dict set TopLevelPortInterface analysis_s_axi_araddr InterfaceName {}
	dict set TopLevelPortInterface analysis_s_axi_araddr InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface analysis_s_axi_araddr ClockDomain {}
	dict set TopLevelPortInterface analysis_s_axi_araddr Locs {}
	dict set TopLevelPortInterface analysis_s_axi_araddr IOStandard {}
	dict set TopLevelPortInterface analysis_s_axi_arvalid Name {analysis_s_axi_arvalid}
	dict set TopLevelPortInterface analysis_s_axi_arvalid Type -
	dict set TopLevelPortInterface analysis_s_axi_arvalid ArithmeticType xlUnsigned
	dict set TopLevelPortInterface analysis_s_axi_arvalid BinaryPoint 0
	dict set TopLevelPortInterface analysis_s_axi_arvalid Width 1
	dict set TopLevelPortInterface analysis_s_axi_arvalid DatFile {}
	dict set TopLevelPortInterface analysis_s_axi_arvalid IconText {analysis_s_axi_arvalid}
	dict set TopLevelPortInterface analysis_s_axi_arvalid Direction in
	dict set TopLevelPortInterface analysis_s_axi_arvalid Period 1
	dict set TopLevelPortInterface analysis_s_axi_arvalid Interface 5
	dict set TopLevelPortInterface analysis_s_axi_arvalid InterfaceName {}
	dict set TopLevelPortInterface analysis_s_axi_arvalid InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface analysis_s_axi_arvalid ClockDomain {}
	dict set TopLevelPortInterface analysis_s_axi_arvalid Locs {}
	dict set TopLevelPortInterface analysis_s_axi_arvalid IOStandard {}
	dict set TopLevelPortInterface analysis_s_axi_arready Name {analysis_s_axi_arready}
	dict set TopLevelPortInterface analysis_s_axi_arready Type -
	dict set TopLevelPortInterface analysis_s_axi_arready ArithmeticType xlUnsigned
	dict set TopLevelPortInterface analysis_s_axi_arready BinaryPoint 0
	dict set TopLevelPortInterface analysis_s_axi_arready Width 1
	dict set TopLevelPortInterface analysis_s_axi_arready DatFile {}
	dict set TopLevelPortInterface analysis_s_axi_arready IconText {analysis_s_axi_arready}
	dict set TopLevelPortInterface analysis_s_axi_arready Direction out
	dict set TopLevelPortInterface analysis_s_axi_arready Period 1
	dict set TopLevelPortInterface analysis_s_axi_arready Interface 5
	dict set TopLevelPortInterface analysis_s_axi_arready InterfaceName {}
	dict set TopLevelPortInterface analysis_s_axi_arready InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface analysis_s_axi_arready ClockDomain {}
	dict set TopLevelPortInterface analysis_s_axi_arready Locs {}
	dict set TopLevelPortInterface analysis_s_axi_arready IOStandard {}
	dict set TopLevelPortInterface analysis_s_axi_rdata Name {analysis_s_axi_rdata}
	dict set TopLevelPortInterface analysis_s_axi_rdata Type -
	dict set TopLevelPortInterface analysis_s_axi_rdata ArithmeticType xlUnsigned
	dict set TopLevelPortInterface analysis_s_axi_rdata BinaryPoint 0
	dict set TopLevelPortInterface analysis_s_axi_rdata Width 32
	dict set TopLevelPortInterface analysis_s_axi_rdata DatFile {}
	dict set TopLevelPortInterface analysis_s_axi_rdata IconText {analysis_s_axi_rdata}
	dict set TopLevelPortInterface analysis_s_axi_rdata Direction out
	dict set TopLevelPortInterface analysis_s_axi_rdata Period 1
	dict set TopLevelPortInterface analysis_s_axi_rdata Interface 5
	dict set TopLevelPortInterface analysis_s_axi_rdata InterfaceName {}
	dict set TopLevelPortInterface analysis_s_axi_rdata InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface analysis_s_axi_rdata ClockDomain {}
	dict set TopLevelPortInterface analysis_s_axi_rdata Locs {}
	dict set TopLevelPortInterface analysis_s_axi_rdata IOStandard {}
	dict set TopLevelPortInterface analysis_s_axi_rresp Name {analysis_s_axi_rresp}
	dict set TopLevelPortInterface analysis_s_axi_rresp Type -
	dict set TopLevelPortInterface analysis_s_axi_rresp ArithmeticType xlUnsigned
	dict set TopLevelPortInterface analysis_s_axi_rresp BinaryPoint 0
	dict set TopLevelPortInterface analysis_s_axi_rresp Width 2
	dict set TopLevelPortInterface analysis_s_axi_rresp DatFile {}
	dict set TopLevelPortInterface analysis_s_axi_rresp IconText {analysis_s_axi_rresp}
	dict set TopLevelPortInterface analysis_s_axi_rresp Direction out
	dict set TopLevelPortInterface analysis_s_axi_rresp Period 1
	dict set TopLevelPortInterface analysis_s_axi_rresp Interface 5
	dict set TopLevelPortInterface analysis_s_axi_rresp InterfaceName {}
	dict set TopLevelPortInterface analysis_s_axi_rresp InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface analysis_s_axi_rresp ClockDomain {}
	dict set TopLevelPortInterface analysis_s_axi_rresp Locs {}
	dict set TopLevelPortInterface analysis_s_axi_rresp IOStandard {}
	dict set TopLevelPortInterface analysis_s_axi_rvalid Name {analysis_s_axi_rvalid}
	dict set TopLevelPortInterface analysis_s_axi_rvalid Type -
	dict set TopLevelPortInterface analysis_s_axi_rvalid ArithmeticType xlUnsigned
	dict set TopLevelPortInterface analysis_s_axi_rvalid BinaryPoint 0
	dict set TopLevelPortInterface analysis_s_axi_rvalid Width 1
	dict set TopLevelPortInterface analysis_s_axi_rvalid DatFile {}
	dict set TopLevelPortInterface analysis_s_axi_rvalid IconText {analysis_s_axi_rvalid}
	dict set TopLevelPortInterface analysis_s_axi_rvalid Direction out
	dict set TopLevelPortInterface analysis_s_axi_rvalid Period 1
	dict set TopLevelPortInterface analysis_s_axi_rvalid Interface 5
	dict set TopLevelPortInterface analysis_s_axi_rvalid InterfaceName {}
	dict set TopLevelPortInterface analysis_s_axi_rvalid InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface analysis_s_axi_rvalid ClockDomain {}
	dict set TopLevelPortInterface analysis_s_axi_rvalid Locs {}
	dict set TopLevelPortInterface analysis_s_axi_rvalid IOStandard {}
	dict set TopLevelPortInterface analysis_s_axi_rready Name {analysis_s_axi_rready}
	dict set TopLevelPortInterface analysis_s_axi_rready Type -
	dict set TopLevelPortInterface analysis_s_axi_rready ArithmeticType xlUnsigned
	dict set TopLevelPortInterface analysis_s_axi_rready BinaryPoint 0
	dict set TopLevelPortInterface analysis_s_axi_rready Width 1
	dict set TopLevelPortInterface analysis_s_axi_rready DatFile {}
	dict set TopLevelPortInterface analysis_s_axi_rready IconText {analysis_s_axi_rready}
	dict set TopLevelPortInterface analysis_s_axi_rready Direction in
	dict set TopLevelPortInterface analysis_s_axi_rready Period 1
	dict set TopLevelPortInterface analysis_s_axi_rready Interface 5
	dict set TopLevelPortInterface analysis_s_axi_rready InterfaceName {}
	dict set TopLevelPortInterface analysis_s_axi_rready InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface analysis_s_axi_rready ClockDomain {}
	dict set TopLevelPortInterface analysis_s_axi_rready Locs {}
	dict set TopLevelPortInterface analysis_s_axi_rready IOStandard {}
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
	dict set TopLevelPortInterface clk AssociatedInterfaces {analysis_s_axi }
	dict set TopLevelPortInterface clk AssociatedResets {analysis_aresetn }
	set MemoryMappedPort {}
	dict set MemoryMappedPort baseiqsel Name {baseiqsel}
	dict set MemoryMappedPort baseiqsel Type UFix_1_0
	dict set MemoryMappedPort baseiqsel ArithmeticType xlUnsigned
	dict set MemoryMappedPort baseiqsel BinaryPoint 0
	dict set MemoryMappedPort baseiqsel Width 1
	dict set MemoryMappedPort baseiqsel DatFile {receivetransmitchain_feb7th2022_analysis_analysis_signal_source_2_baseiqsel.dat}
	dict set MemoryMappedPort baseiqsel AddressOffset 0
	dict set MemoryMappedPort baseiqsel IconText {baseIQSel}
	dict set MemoryMappedPort baseiqsel Direction in
	dict set MemoryMappedPort baseiqsel Period 1
	dict set MemoryMappedPort baseiqsel Interface 2
	dict set MemoryMappedPort baseiqsel InterfaceName {}
	dict set MemoryMappedPort baseiqsel InterfaceString {CONTROL}
	dict set MemoryMappedPort baseiqsel ClockDomain {analysis}
	dict set MemoryMappedPort baseiqsel Locs {}
	dict set MemoryMappedPort baseiqsel IOStandard {}
	dict set MemoryMappedPort valid_in Name {valid_in}
	dict set MemoryMappedPort valid_in Type Bool
	dict set MemoryMappedPort valid_in ArithmeticType xlUnsigned
	dict set MemoryMappedPort valid_in BinaryPoint 0
	dict set MemoryMappedPort valid_in Width 1
	dict set MemoryMappedPort valid_in DatFile {receivetransmitchain_feb7th2022_analysis_analysis_valid_in.dat}
	dict set MemoryMappedPort valid_in AddressOffset 4
	dict set MemoryMappedPort valid_in IconText {valid_in}
	dict set MemoryMappedPort valid_in Direction in
	dict set MemoryMappedPort valid_in Period 1
	dict set MemoryMappedPort valid_in Interface 2
	dict set MemoryMappedPort valid_in InterfaceName {}
	dict set MemoryMappedPort valid_in InterfaceString {CONTROL}
	dict set MemoryMappedPort valid_in ClockDomain {analysis}
	dict set MemoryMappedPort valid_in Locs {}
	dict set MemoryMappedPort valid_in IOStandard {}
	dict set MemoryMappedPort swap_iq Name {swap_iq}
	dict set MemoryMappedPort swap_iq Type Bool
	dict set MemoryMappedPort swap_iq ArithmeticType xlUnsigned
	dict set MemoryMappedPort swap_iq BinaryPoint 0
	dict set MemoryMappedPort swap_iq Width 1
	dict set MemoryMappedPort swap_iq DatFile {receivetransmitchain_feb7th2022_analysis_analysis_swap_iq.dat}
	dict set MemoryMappedPort swap_iq AddressOffset 8
	dict set MemoryMappedPort swap_iq IconText {swap_iq}
	dict set MemoryMappedPort swap_iq Direction in
	dict set MemoryMappedPort swap_iq Period 128
	dict set MemoryMappedPort swap_iq Interface 2
	dict set MemoryMappedPort swap_iq InterfaceName {}
	dict set MemoryMappedPort swap_iq InterfaceString {CONTROL}
	dict set MemoryMappedPort swap_iq ClockDomain {analysis}
	dict set MemoryMappedPort swap_iq Locs {}
	dict set MemoryMappedPort swap_iq IOStandard {}
	dict set MemoryMappedPort receivep0_scale Name {receivep0_scale}
	dict set MemoryMappedPort receivep0_scale Type UFix_2_0
	dict set MemoryMappedPort receivep0_scale ArithmeticType xlUnsigned
	dict set MemoryMappedPort receivep0_scale BinaryPoint 0
	dict set MemoryMappedPort receivep0_scale Width 2
	dict set MemoryMappedPort receivep0_scale DatFile {receivetransmitchain_feb7th2022_analysis_analysis_receivep0_scale.dat}
	dict set MemoryMappedPort receivep0_scale AddressOffset 12
	dict set MemoryMappedPort receivep0_scale IconText {receivep0_scale}
	dict set MemoryMappedPort receivep0_scale Direction in
	dict set MemoryMappedPort receivep0_scale Period 1
	dict set MemoryMappedPort receivep0_scale Interface 2
	dict set MemoryMappedPort receivep0_scale InterfaceName {}
	dict set MemoryMappedPort receivep0_scale InterfaceString {CONTROL}
	dict set MemoryMappedPort receivep0_scale ClockDomain {analysis}
	dict set MemoryMappedPort receivep0_scale Locs {}
	dict set MemoryMappedPort receivep0_scale IOStandard {}
	dict set MemoryMappedPort transmit_scale Name {transmit_scale}
	dict set MemoryMappedPort transmit_scale Type UFix_2_0
	dict set MemoryMappedPort transmit_scale ArithmeticType xlUnsigned
	dict set MemoryMappedPort transmit_scale BinaryPoint 0
	dict set MemoryMappedPort transmit_scale Width 2
	dict set MemoryMappedPort transmit_scale DatFile {receivetransmitchain_feb7th2022_analysis_analysis_transmit_scale.dat}
	dict set MemoryMappedPort transmit_scale AddressOffset 16
	dict set MemoryMappedPort transmit_scale IconText {Transmit_scale}
	dict set MemoryMappedPort transmit_scale Direction in
	dict set MemoryMappedPort transmit_scale Period 128
	dict set MemoryMappedPort transmit_scale Interface 2
	dict set MemoryMappedPort transmit_scale InterfaceName {}
	dict set MemoryMappedPort transmit_scale InterfaceString {CONTROL}
	dict set MemoryMappedPort transmit_scale ClockDomain {analysis}
	dict set MemoryMappedPort transmit_scale Locs {}
	dict set MemoryMappedPort transmit_scale IOStandard {}
	dict set MemoryMappedPort transmitp0_sel Name {transmitp0_sel}
	dict set MemoryMappedPort transmitp0_sel Type UFix_2_0
	dict set MemoryMappedPort transmitp0_sel ArithmeticType xlUnsigned
	dict set MemoryMappedPort transmitp0_sel BinaryPoint 0
	dict set MemoryMappedPort transmitp0_sel Width 2
	dict set MemoryMappedPort transmitp0_sel DatFile {receivetransmitchain_feb7th2022_analysis_analysis_transmitp0_sel.dat}
	dict set MemoryMappedPort transmitp0_sel AddressOffset 20
	dict set MemoryMappedPort transmitp0_sel IconText {TransmitP0_sel}
	dict set MemoryMappedPort transmitp0_sel Direction in
	dict set MemoryMappedPort transmitp0_sel Period 128
	dict set MemoryMappedPort transmitp0_sel Interface 2
	dict set MemoryMappedPort transmitp0_sel InterfaceName {}
	dict set MemoryMappedPort transmitp0_sel InterfaceString {CONTROL}
	dict set MemoryMappedPort transmitp0_sel ClockDomain {analysis}
	dict set MemoryMappedPort transmitp0_sel Locs {}
	dict set MemoryMappedPort transmitp0_sel IOStandard {}
}

source SgPaProject.tcl
::xilinx::dsp::planaheadworker::dsp_create_project