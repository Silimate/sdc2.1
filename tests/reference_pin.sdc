set sdc_version 2.0
set_input_delay 4.3 -max -clock CLK2 -clock_fall -reference_pin  [get_ports {sd_DQ[31]}] -add_delay { IN1 }
set_input_delay 1.2 -clock CLK1 -reference_pin CLK_PCI [all_inputs]
