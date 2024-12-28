set_disable_timing -from [get_pins reg1/D] -to [get_pins reg1/*/Q]  [get_cells { reg1in}]
create_clock -period 8 -name CLK [get_pins o_reg*/CP]

