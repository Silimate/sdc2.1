set sdc_version 2.1

set_units -time ns -capacitance pF -current mA -voltage V -resistance kOhm
set_operating_conditions -analysis_type on_chip_variation  -library [get_libs {corner_wc.db:tcbn45gsbwpwc}] 
###############################################################################
# Clock Related Information
###############################################################################
create_clock -name vck -period 10 -waveform { 0 5 }
set_timing_derate -net_delay -static -early 0.9 
set_timing_derate -net_delay -static -late 1.1 
set_timing_derate -net_delay -dynamic -early 0.98 
set_timing_derate -net_delay -dynamic -late 1.02 
set_timing_derate -increment -cell_delay -net_delay -early 0.88 
set_timing_derate -increment -cell_delay -net_delay -late 1.3 
###############################################################################
# External Delay Information
###############################################################################
set_input_delay  0 -clock [get_clocks {vck}] [get_ports {in}]
set_output_delay  0 -clock [get_clocks {vck}] [get_ports {out2}]
set_output_delay  0 -clock [get_clocks {vck}] [get_ports {out}]
set_input_transition -rise -min  0.01 [get_ports {ck1}]
set_input_transition -fall -min  0.01 [get_ports {ck1}]
set_input_transition -rise -max  1 [get_ports {ck1}]
set_input_transition -fall -max  1 [get_ports {ck1}]
###############################################################################
# POCV Information
###############################################################################
