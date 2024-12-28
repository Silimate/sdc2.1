create_generated_clock -name CLK_BY_4 -source [get_pins {CLK_BY_4_reg/CP}]  \
  -divide_by 2 [get_pins {CLK_BY_4_reg/Q}] 
create_generated_clock -name CLK_BY_2 -source [get_pins {CLK_BY_2_reg/CP}]  \
  -divide_by 2 [get_pins {CLK_BY_2_reg/Q}] 

create_generated_clock [ get_pins name1/name2/name3/q ] -name clk_name -source

