set sdc_version 2.1

set_units -time ns -capacitance pF -current mA -voltage V -resistance kOhm
###############################################################################
set_operating_conditions -analysis_type on_chip_variation  -library [get_libs \
 {corner_wc.db:tcrrddn45gsbwpwc}] 
###############################################################################
# Clock Related Information
###############################################################################
create_clock -name ck1 -period 1000 -waveform { 0 500 } [get_ports {ck1}]
set_propagated_clock [get_clocks {ck1}]
create_clock -name ck1b -period 500 -waveform { 0 250 } -add [get_ports {ck1}]
set_propagated_clock [get_clocks {ck1b}]
set_sense -type data -stop_propagation -clocks [get_clocks {ck1}] [get_pins \
 {u6/Z}]
# External Delay Information
###############################################################################
set_input_delay  100 -clock [get_clocks {ck1}] [get_ports {in}]
set_output_delay  100 -clock [get_clocks {ck1}] [get_ports {out2}]
set_output_delay  100 -clock [get_clocks {ck1}] [get_ports {out}]
###############################################################################
