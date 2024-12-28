set sdc_version 2.1

set_operating_conditions -analysis_type on_chip_variation  -library [get_libs \
 {slewprop.db:slewprop}] 
###############################################################################
# Clock Related Information
###############################################################################
create_clock -name CLK1 -period 4.000000 -waveform { 0.000000 2.000000 }
create_clock -name CLK2 -period 4.000000 -waveform { 0.000000 2.000000 }
###############################################################################
# External Delay Information
###############################################################################
set_input_delay  1.000000 [get_ports {in}]
set_input_delay  2.000000 -clock [get_clocks {CLK1}] -add_delay [get_ports {in}]
set_input_delay  3.000000 -clock [get_clocks {CLK2}] -clock_fall -add_delay \
 [get_ports {in}]
set_output_delay  0.000000 -clock [get_clocks {CLK1}] [get_ports {out}]
set_driving_cell -rise -min -library slewprop -lib_cell buf1a2 -from_pin A \
 -pin Y -input_transition_rise 0.300000  -input_transition_fall 0.400000  \
 -clock [get_clocks {CLK1}]  [get_ports {in}]
set_driving_cell -fall -min -library slewprop -lib_cell buf1a2 -from_pin A \
 -pin Y -input_transition_rise 1.300000  -input_transition_fall 1.400000  \
 -clock [get_clocks {CLK1}]  [get_ports {in}]
set_driving_cell -rise -max -library slewprop -lib_cell buf1a2 -from_pin A \
 -pin Y -input_transition_rise 0.300000  -input_transition_fall 0.400000  \
 -clock [get_clocks {CLK1}]  [get_ports {in}]
set_driving_cell -fall -max -library slewprop -lib_cell buf1a2 -from_pin A \
 -pin Y -input_transition_rise 1.300000  -input_transition_fall 1.400000  \
 -clock [get_clocks {CLK1}]  [get_ports {in}]
set_driving_cell -lib_cell AND [get_ports A] 


