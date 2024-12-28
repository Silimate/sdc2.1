###############################################################################

set sdc_version 1.9

set_units -time ns -capacitance 0.1fF -current uA -voltage V -resistance 10MOhm
###############################################################################
#  
# Units
# capacitive_load_unit           : 0.0001 pF
# current_unit                   : 1e-06 A
# resistance_unit                : 10000 kOhm
# time_unit                      : 1 ns
# voltage_unit                   : 1 V
###############################################################################
set_operating_conditions -analysis_type on_chip_variation  -library [get_libs \
 {class.db:class}] 
###############################################################################
# Clock Related Information
###############################################################################
create_clock -name CLK_FUNC -period 6 -waveform { 0 3 } [get_ports {CLK}] \
 -comment "this is a sdc 1.9"
create_clock -name CLK_TEST -period 120 -waveform { 0 60 } -add [get_ports \
 {CLK}]
###############################################################################
# External Delay Information
###############################################################################
set_input_delay  1 [get_ports {TEST_MODE}]
set_input_delay  1 -clock [get_clocks {CLK_FUNC}] [get_ports {DATA_IN}]
set_output_delay  1 -clock [get_clocks {CLK_FUNC}] [get_ports {DATA_OUT}]
