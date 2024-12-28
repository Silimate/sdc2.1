sdc_version 1.3
set_input_delay 5 -clock [get_clocks CLK] \
[get_ports -of_objects [get_nets n_in1]]
set_input_delay 5 -clock [get_clocks {CLK}] \
[get_ports {IN1}]
set_false_path -to [get_pins {U1/U2/A}]
set_false_path -to [get_pins -hsc "@" {U1/U2@A}]

