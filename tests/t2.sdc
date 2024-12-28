set sdc_version 1.5
set_timing_derate -data -cell_delay -late 0.4  [get_cells {invbd7G5B1I1}] 
set_input_delay  -clock [get_clocks {clk}] -add_delay 0.4  [get_ports {ivb/abc}] 
set_timing_derate 0.2  -data -cell_delay -late  [get_cells {invbd7G5B1I1}] 
#set_timing_derate -data -cell_delay -early -late 0.45  [get_cells {invbd7G5B1I1}] 
set_timing_derate -data -cell_delay 0.45  -early [get_cells {invbd7G5B1I1}] 

