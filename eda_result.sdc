set_operating_conditions -analysis_type "single"
create_clock -period 10.000000 -name "CLK1" -waveform [list 0.000000 5.000000] [get_ports CLK1]
set_propagated_clock [get_clocks CLK1]
set_clock_latency 1.000000 [get_clocks CLK1] -source -late
set_clock_latency -1.000000 [get_clocks CLK1] -source -early
create_clock -period 10.000000 -name "CLK2" -waveform [list 0.000000 5.000000] [get_ports CLK2]
set_propagated_clock [get_clocks CLK2]
set_clock_latency 1.000000 [get_clocks CLK2] -source -late
set_clock_latency -1.000000 [get_clocks CLK2] -source -early
create_clock -period 20.000000 -name "CLK1_ADD" -waveform [list 0.000000 10.000000] [get_ports CLK1] -add
set_propagated_clock [get_clocks CLK1_ADD]
set_clock_latency 1.000000 [get_clocks CLK1_ADD] -source -late
set_clock_latency -1.000000 [get_clocks CLK1_ADD] -source -early
create_clock -period 20.000000 -name "CLK2_ADD" -waveform [list 0.000000 10.000000] [get_ports CLK2] -add
set_propagated_clock [get_clocks CLK2_ADD]
set_clock_latency 1.000000 [get_clocks CLK2_ADD] -source -late
set_clock_latency -1.000000 [get_clocks CLK2_ADD] -source -early
set_input_delay -clock [get_clocks CLK1] -max 1.000000 [get_ports Data] -source_latency_included
set_input_delay -clock [get_clocks CLK1] -min -1.000000 [get_ports Data] -source_latency_included
set_input_delay -clock [get_clocks CLK1] -max 1.000000 [get_ports Reset] -source_latency_included
set_input_delay -clock [get_clocks CLK1] -min -1.000000 [get_ports Reset] -source_latency_included
set_output_delay -clock [get_clocks CLK2] 1.000000 [get_ports DOUT]
