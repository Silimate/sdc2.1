set sdc_version 1.3
create_clock [get_ports {{A[0]}}] -p 20

create_generated_clock -name "MYCLK" -multiply_by 2 [get_ports {{A[0]}}]
create_generated_clock -divide_by 1 -invert
create_generated_clock -edges {1 5} -source [get_pins foo2]
create_generated_clock -edges {1 3  5}
create_generated_clock -edges {1 5} -source CLK
create_generated_clock -edges {1 5} -source CLK -duty_cycle 22
set_input_delay 12.0 [get_ports {{A[0]}}]

