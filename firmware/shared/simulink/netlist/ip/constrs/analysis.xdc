set rateCeanalysis128 analysis_default_clock_driver/clockdriver/pipelined_ce.ce_pipeline[0].ce_reg/has_latency.fd_array[1].reg_comp_1/fd_prim_array[0].rst_comp.fdre_comp
set rateCellsanalysis128 [get_cells -of [filter [all_fanout -flat -endpoints [get_pins $rateCeanalysis128/Q]] IS_ENABLE]]
set_multicycle_path -from $rateCellsanalysis128 -to $rateCellsanalysis128 -setup 128
set_multicycle_path -from $rateCellsanalysis128 -to $rateCellsanalysis128 -hold 127
