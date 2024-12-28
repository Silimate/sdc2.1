set sdc_version 2.1
set_sense  -positive  XOR/y  
set_sense -negative MUX/Z
set_sense -positive -clocks [get_clocks CLK1] XOR/Z
set_sense  -positive  Pi/y 
set_sense  -pulse rise_triggered_high_pulse aaa/Y
set_sense  -non_unate -clocks [get_clocks CLK1] INV2/tt

