###############################################################################
#
# Created by PrimeTime write_sdc on Tue May 10 10:59:22 2005
#
###############################################################################

set sdc_version 1.5

###############################################################################
#  
# Units
# capacitive_load_unit           : 1 pF
# current_unit                   : 1e-06 A
# resistance_unit                : 1 kOhm
# time_unit                      : 1 ns
# voltage_unit                   : 1 V
###############################################################################
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells \
 {U63ASTipoInst901}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells \
 {U63ASTipoInst902}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells \
 {U63ASTttcInst951}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells \
 {U63ASTttcInst953}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells \
 {U55ASTttcInst961}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells \
 {U63ASTttcInst981}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells \
 {U140ASTttcInst805}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells \
 {U63ASTtsInst884}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells \
 {U63ASTtsInst885}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells \
 {U55ASTttcInst798}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells \
 {U63ASTipoInst497}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells \
 {U63ASTipoInst498}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells \
 {U63ASTipoInst499}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells \
 {U63ASTipoInst500}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells \
 {U63ASTipoInst501}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells \
 {U63ASTipoInst502}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells \
 {U63ASTipoInst539}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells \
 {U63ASTipoInst494}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells \
 {U63ASTipoInst495}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells \
 {U63ASTipoInst492}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells \
 {U63ASTipoInst496}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U149}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U150}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U141}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U142}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U143}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U144}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U145}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U146}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U147}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U148}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U110}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U112}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U114}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U116}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U137}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U138}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U139}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U140}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U94}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U96}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U98}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U100}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U102}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U104}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U106}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U108}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U109}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U111}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U113}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U115}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U86}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U88}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U90}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U92}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U93}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U95}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U97}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U99}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U101}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U103}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U105}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U107}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U132}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U133}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U134}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U135}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U85}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U87}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U89}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U91}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U121}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U122}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U124}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U126}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U128}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U129}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U130}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U131}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U117}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U118}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U119}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U120}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U57}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U63}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U54}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U55}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U56}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U62}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U64}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U65}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U66}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U80}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U81}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U82}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U83}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U84}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U72}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U73}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U74}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U75}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U76}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U77}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U78}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U79}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U7}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U9}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U69}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U70}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U71}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U125}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U127}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U136}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U68}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U67}] 
set_operating_conditions  -library [get_libs \
 {cb13fs120_tsmc_max.db:cb13fs120_tsmc_max}]  -object_list [get_cells {U123}] 
###############################################################################
# Clock Related Information
###############################################################################
create_clock -name PCI_CLK -period 15 -waveform { 0 7.5 } [get_ports {pclk}]
set_clock_latency -min  0.2 [get_clocks {PCI_CLK}]
set_clock_latency -max  0.2 [get_clocks {PCI_CLK}]
set_clock_latency -source -min -late  0.3 [get_clocks {PCI_CLK}]
set_clock_latency -source -max -late  0.3 [get_clocks {PCI_CLK}]
create_clock -name SYS_CLK -period 8 -waveform { 0 4 } [get_ports {sys_clk}]
set_clock_latency -min  0.2 [get_clocks {SYS_CLK}]
set_clock_latency -max  0.2 [get_clocks {SYS_CLK}]
set_clock_latency -source -min -early  0.1 [get_clocks {SYS_CLK}]
set_clock_latency -source -max -early  0.1 [get_clocks {SYS_CLK}]
set_clock_gating_check -rise -setup  0.2 [get_clocks {SYS_CLK}]
set_clock_gating_check -fall -setup  0.2 [get_clocks {SYS_CLK}]
set_clock_gating_check -rise -hold  0.2 [get_clocks {SYS_CLK}]
set_clock_gating_check -fall -hold  0.2 [get_clocks {SYS_CLK}]
create_clock -name SDRAM_CLK -period 7.5 -waveform { 0 3.75 } [get_ports \
 {sdr_clk}]
set_clock_latency -min  0.2 [get_clocks {SDRAM_CLK}]
set_clock_latency -max  0.2 [get_clocks {SDRAM_CLK}]
create_clock -name sdr_clk -period 25 -waveform { 0 12.5 } -add [get_ports \
 {sdr_clk}]
set_propagated_clock [get_clocks {sdr_clk}]
set_timing_derate -data -cell_delay -late 2.5 [get_cells {invbd7G5B1I1}]
set_timing_derate -clock -cell_delay -late 2.5 [get_cells {invbd7G5B1I1}]
set_timing_derate -data -cell_delay -early  0.95 [get_cells {invbd7G5B1I1}]
set_timing_derate -clock -cell_delay -early  0.95 [get_cells {invbd7G5B1I1}]
###############################################################################
# Derived Clock related information
###############################################################################
create_generated_clock -name SD_DDR_CLK -source [get_ports {sdr_clk}]  \
 -multiply_by 1  -add -master_clock [get_clocks {sdr_clk}] [get_ports {sd_CK}] 
set_clock_latency -min  0.2 [get_clocks {SD_DDR_CLK}]
set_clock_latency -max  0.2 [get_clocks {SD_DDR_CLK}]
create_generated_clock -name SYS_2x_CLK -source [get_ports {sys_clk}]  \
 -multiply_by 2  -add -master_clock [get_clocks {SYS_CLK}] [get_pins \
 {I_CLOCK_GEN/I_CLKMUL/CLK_2X}] 
set_clock_latency -min  0.2 [get_clocks {SYS_2x_CLK}]
set_clock_latency -max  0.2 [get_clocks {SYS_2x_CLK}]
create_generated_clock -name SD_DDR_CLKn -source [get_ports {sdr_clk}]  \
 -multiply_by 1 -invert  -add -master_clock [get_clocks {sdr_clk}] [get_ports \
 {sd_CKn}] 
set_clock_latency -min  0.2 [get_clocks {SD_DDR_CLKn}]
set_clock_latency -max  0.2 [get_clocks {SD_DDR_CLKn}]
###############################################################################
# Point to Point exceptions
###############################################################################
set_false_path -from [get_clocks {PCI_CLK}] -to [get_clocks {SDRAM_CLK \
 SD_DDR_CLK SD_DDR_CLKn}]
set_false_path -from [get_clocks {PCI_CLK}] -to [get_clocks {SYS_CLK \
 SYS_2x_CLK}]
set_false_path -from [get_clocks {SDRAM_CLK SD_DDR_CLK SD_DDR_CLKn}] -to \
 [get_clocks {PCI_CLK}]
set_false_path -from [get_clocks {SDRAM_CLK SD_DDR_CLK SD_DDR_CLKn}] -to \
 [get_clocks {SYS_CLK SYS_2x_CLK}]
set_false_path -from [get_clocks {SYS_CLK SYS_2x_CLK}] -to [get_clocks \
 {PCI_CLK}]
set_false_path -from [get_clocks {SYS_CLK SYS_2x_CLK}] -to [get_clocks \
 {SDRAM_CLK SD_DDR_CLK SD_DDR_CLKn}]
set_false_path -from [get_pins {{I_ORCA_TOP/I_SDRAM_IF/sd_DQ_en_reg[0]/CP}}] \
 -through [get_pins {sdram_DQ_iopad_0/OEN}] 
set_false_path -from [get_pins {{I_ORCA_TOP/I_SDRAM_IF/sd_DQ_en_reg[1]/CP}}] \
 -through [get_pins {sdram_DQ_iopad_1/OEN}] 
set_false_path -from [get_pins {{I_ORCA_TOP/I_SDRAM_IF/sd_DQ_en_reg[2]/CP}}] \
 -through [get_pins {sdram_DQ_iopad_2/OEN}] 
set_false_path -from [get_pins {{I_ORCA_TOP/I_SDRAM_IF/sd_DQ_en_reg[3]/CP}}] \
 -through [get_pins {sdram_DQ_iopad_3/OEN}] 
set_false_path -from [get_pins {{I_ORCA_TOP/I_SDRAM_IF/sd_DQ_en_reg[4]/CP}}] \
 -through [get_pins {sdram_DQ_iopad_4/OEN}] 
set_false_path -from [get_pins {{I_ORCA_TOP/I_SDRAM_IF/sd_DQ_en_reg[5]/CP}}] \
 -through [get_pins {sdram_DQ_iopad_5/OEN}] 
set_false_path -from [get_pins {{I_ORCA_TOP/I_SDRAM_IF/sd_DQ_en_reg[6]/CP}}] \
 -through [get_pins {sdram_DQ_iopad_6/OEN}] 
set_false_path -from [get_pins {{I_ORCA_TOP/I_SDRAM_IF/sd_DQ_en_reg[7]/CP}}] \
 -through [get_pins {sdram_DQ_iopad_7/OEN}] 
set_false_path -from [get_pins {{I_ORCA_TOP/I_SDRAM_IF/sd_DQ_en_reg[8]/CP}}] \
 -through [get_pins {sdram_DQ_iopad_8/OEN}] 
set_false_path -from [get_pins {{I_ORCA_TOP/I_SDRAM_IF/sd_DQ_en_reg[9]/CP}}] \
 -through [get_pins {sdram_DQ_iopad_9/OEN}] 
set_false_path -from [get_pins {{I_ORCA_TOP/I_SDRAM_IF/sd_DQ_en_reg[10]/CP}}] \
 -through [get_pins {sdram_DQ_iopad_10/OEN}] 
set_false_path -from [get_pins {{I_ORCA_TOP/I_SDRAM_IF/sd_DQ_en_reg[11]/CP}}] \
 -through [get_pins {sdram_DQ_iopad_11/OEN}] 
set_false_path -from [get_pins {{I_ORCA_TOP/I_SDRAM_IF/sd_DQ_en_reg[12]/CP}}] \
 -through [get_pins {sdram_DQ_iopad_12/OEN}] 
set_false_path -from [get_pins {{I_ORCA_TOP/I_SDRAM_IF/sd_DQ_en_reg[13]/CP}}] \
 -through [get_pins {sdram_DQ_iopad_13/OEN}] 
set_false_path -from [get_pins {{I_ORCA_TOP/I_SDRAM_IF/sd_DQ_en_reg[14]/CP}}] \
 -through [get_pins {sdram_DQ_iopad_14/OEN}] 
set_false_path -from [get_pins {{I_ORCA_TOP/I_SDRAM_IF/sd_DQ_en_reg[15]/CP}}] \
 -through [get_pins {sdram_DQ_iopad_15/OEN}] 
###############################################################################
# Clock Latency Infomation
###############################################################################
set_clock_latency -fall -max -clock [get_clocks {PCI_CLK}] 0.1 [get_pins \
 {I_CLOCK_GEN/U21/I1}]
set_clock_latency -fall -min -clock [get_clocks {PCI_CLK}] 0.1 [get_pins \
 {I_CLOCK_GEN/U21/I1}]
set_clock_latency -fall -max -clock [get_clocks {PCI_CLK}] 0.1 [get_pins \
 {I_CLOCK_GEN/I_PLL_PCI/REF_CLK}]
set_clock_latency -fall -min -clock [get_clocks {PCI_CLK}] 0.1 [get_pins \
 {I_CLOCK_GEN/I_PLL_PCI/REF_CLK}]
set_clock_latency -max -clock [get_clocks {SYS_CLK}] 0.2 [get_pins \
 {I_CLOCK_GEN/U22/I1}]
set_clock_latency -min -clock [get_clocks {SYS_CLK}] 0.2 [get_pins \
 {I_CLOCK_GEN/U22/I1}]
set_clock_latency -max -clock [get_clocks {SYS_CLK}] 0.2 [get_pins \
 {I_CLOCK_GEN/I_PLL_SD/REF_CLK}]
set_clock_latency -min -clock [get_clocks {SYS_CLK}] 0.2 [get_pins \
 {I_CLOCK_GEN/I_PLL_SD/REF_CLK}]
###############################################################################
# Inter clock uncertainty information
###############################################################################
set_clock_uncertainty -setup 0.2 -rise_from [get_clocks {PCI_CLK}] -fall_to \
 [get_clocks {SYS_CLK}]
set_clock_uncertainty -hold 0.2 -rise_from [get_clocks {PCI_CLK}] -fall_to \
 [get_clocks {SYS_CLK}]
###############################################################################
# External Delay Information
###############################################################################
set_input_delay  8 -clock [get_clocks {PCI_CLK}] -max [get_ports {pidsel}]
set_input_delay  2 -clock [get_clocks {PCI_CLK}] -min [get_ports {pidsel}]
set_input_delay  8 -clock [get_clocks {PCI_CLK}] -max [get_ports {pgnt_n}]
set_input_delay  2 -clock [get_clocks {PCI_CLK}] -min [get_ports {pgnt_n}]
set_input_delay  8 -clock [get_clocks {PCI_CLK}] -max [get_ports {pm66en}]
set_input_delay  2 -clock [get_clocks {PCI_CLK}] -min [get_ports {pm66en}]
set_input_delay  8 -clock [get_clocks {PCI_CLK}] -max [get_ports {pdevsel_n}]
set_input_delay  2 -clock [get_clocks {PCI_CLK}] -min [get_ports {pdevsel_n}]
set_output_delay  4 -clock [get_clocks {PCI_CLK}] -max [get_ports {pdevsel_n}]
set_output_delay  -1 -clock [get_clocks {PCI_CLK}] -min [get_ports {pdevsel_n}]
set_input_delay  8 -clock [get_clocks {PCI_CLK}] -max [get_ports {pstop_n}]
set_input_delay  2 -clock [get_clocks {PCI_CLK}] -min [get_ports {pstop_n}]
set_output_delay  4 -clock [get_clocks {PCI_CLK}] -max [get_ports {pstop_n}]
set_output_delay  -1 -clock [get_clocks {PCI_CLK}] -min [get_ports {pstop_n}]
set_input_delay  8 -clock [get_clocks {PCI_CLK}] -max [get_ports {pperr_n}]
set_input_delay  2 -clock [get_clocks {PCI_CLK}] -min [get_ports {pperr_n}]
set_output_delay  4 -clock [get_clocks {PCI_CLK}] -max [get_ports {pperr_n}]
set_output_delay  -1 -clock [get_clocks {PCI_CLK}] -min [get_ports {pperr_n}]
set_input_delay  8 -clock [get_clocks {PCI_CLK}] -max [get_ports {pserr_n}]
set_input_delay  2 -clock [get_clocks {PCI_CLK}] -min [get_ports {pserr_n}]
set_output_delay  4 -clock [get_clocks {PCI_CLK}] -max [get_ports {pserr_n}]
set_output_delay  -1 -clock [get_clocks {PCI_CLK}] -min [get_ports {pserr_n}]
set_input_delay  8 -clock [get_clocks {PCI_CLK}] -max [get_ports {ppar}]
set_input_delay  2 -clock [get_clocks {PCI_CLK}] -min [get_ports {ppar}]
set_output_delay  4 -clock [get_clocks {PCI_CLK}] -max [get_ports {ppar}]
set_output_delay  -1 -clock [get_clocks {PCI_CLK}] -min [get_ports {ppar}]
set_input_delay  8 -clock [get_clocks {PCI_CLK}] -max [get_ports {{pc_be[3]}}]
set_input_delay  2 -clock [get_clocks {PCI_CLK}] -min [get_ports {{pc_be[3]}}]
set_output_delay  4 -clock [get_clocks {PCI_CLK}] -max [get_ports {{pc_be[3]}}]
set_output_delay  -1 -clock [get_clocks {PCI_CLK}] -min [get_ports {{pc_be[3]}}]
set_input_delay  8 -clock [get_clocks {PCI_CLK}] -max [get_ports {{pc_be[2]}}]
set_input_delay  2 -clock [get_clocks {PCI_CLK}] -min [get_ports {{pc_be[2]}}]
set_output_delay  4 -clock [get_clocks {PCI_CLK}] -max [get_ports {{pc_be[2]}}]
set_output_delay  -1 -clock [get_clocks {PCI_CLK}] -min [get_ports {{pc_be[2]}}]
set_input_delay  8 -clock [get_clocks {PCI_CLK}] -max [get_ports {{pc_be[1]}}]
set_input_delay  2 -clock [get_clocks {PCI_CLK}] -min [get_ports {{pc_be[1]}}]
set_output_delay  4 -clock [get_clocks {PCI_CLK}] -max [get_ports {{pc_be[1]}}]
set_output_delay  -1 -clock [get_clocks {PCI_CLK}] -min [get_ports {{pc_be[1]}}]
set_input_delay  8 -clock [get_clocks {PCI_CLK}] -max [get_ports {{pc_be[0]}}]
set_input_delay  2 -clock [get_clocks {PCI_CLK}] -min [get_ports {{pc_be[0]}}]
set_output_delay  4 -clock [get_clocks {PCI_CLK}] -max [get_ports {{pc_be[0]}}]
set_output_delay  -1 -clock [get_clocks {PCI_CLK}] -min [get_ports {{pc_be[0]}}]
set_input_delay  8 -clock [get_clocks {PCI_CLK}] -max [get_ports {pframe_n}]
set_input_delay  2 -clock [get_clocks {PCI_CLK}] -min [get_ports {pframe_n}]
set_output_delay  4 -clock [get_clocks {PCI_CLK}] -max [get_ports {pframe_n}]
set_output_delay  -1 -clock [get_clocks {PCI_CLK}] -min [get_ports {pframe_n}]
set_input_delay  8 -clock [get_clocks {PCI_CLK}] -max [get_ports {ptrdy_n}]
set_input_delay  2 -clock [get_clocks {PCI_CLK}] -min [get_ports {ptrdy_n}]
set_output_delay  4 -clock [get_clocks {PCI_CLK}] -max [get_ports {ptrdy_n}]
set_output_delay  -1 -clock [get_clocks {PCI_CLK}] -min [get_ports {ptrdy_n}]
set_input_delay  8 -clock [get_clocks {PCI_CLK}] -max [get_ports {pirdy_n}]
set_input_delay  2 -clock [get_clocks {PCI_CLK}] -min [get_ports {pirdy_n}]
set_output_delay  4 -clock [get_clocks {PCI_CLK}] -max [get_ports {pirdy_n}]
set_output_delay  -1 -clock [get_clocks {PCI_CLK}] -min [get_ports {pirdy_n}]
set_input_delay  8 -clock [get_clocks {PCI_CLK}] -max [get_ports {{pad[15]}}]
set_input_delay  2 -clock [get_clocks {PCI_CLK}] -min [get_ports {{pad[15]}}]
set_output_delay  4 -clock [get_clocks {PCI_CLK}] -max [get_ports {{pad[15]}}]
set_output_delay  -1 -clock [get_clocks {PCI_CLK}] -min [get_ports {{pad[15]}}]
set_input_delay  8 -clock [get_clocks {PCI_CLK}] -max [get_ports {{pad[14]}}]
set_input_delay  2 -clock [get_clocks {PCI_CLK}] -min [get_ports {{pad[14]}}]
set_output_delay  4 -clock [get_clocks {PCI_CLK}] -max [get_ports {{pad[14]}}]
set_output_delay  -1 -clock [get_clocks {PCI_CLK}] -min [get_ports {{pad[14]}}]
set_input_delay  8 -clock [get_clocks {PCI_CLK}] -max [get_ports {{pad[13]}}]
set_input_delay  2 -clock [get_clocks {PCI_CLK}] -min [get_ports {{pad[13]}}]
set_output_delay  4 -clock [get_clocks {PCI_CLK}] -max [get_ports {{pad[13]}}]
set_output_delay  -1 -clock [get_clocks {PCI_CLK}] -min [get_ports {{pad[13]}}]
set_input_delay  8 -clock [get_clocks {PCI_CLK}] -max [get_ports {{pad[12]}}]
set_input_delay  2 -clock [get_clocks {PCI_CLK}] -min [get_ports {{pad[12]}}]
set_output_delay  4 -clock [get_clocks {PCI_CLK}] -max [get_ports {{pad[12]}}]
set_output_delay  -1 -clock [get_clocks {PCI_CLK}] -min [get_ports {{pad[12]}}]
set_input_delay  8 -clock [get_clocks {PCI_CLK}] -max [get_ports {{pad[11]}}]
set_input_delay  2 -clock [get_clocks {PCI_CLK}] -min [get_ports {{pad[11]}}]
set_output_delay  4 -clock [get_clocks {PCI_CLK}] -max [get_ports {{pad[11]}}]
set_output_delay  -1 -clock [get_clocks {PCI_CLK}] -min [get_ports {{pad[11]}}]
set_input_delay  8 -clock [get_clocks {PCI_CLK}] -max [get_ports {{pad[10]}}]
set_input_delay  2 -clock [get_clocks {PCI_CLK}] -min [get_ports {{pad[10]}}]
set_output_delay  4 -clock [get_clocks {PCI_CLK}] -max [get_ports {{pad[10]}}]
set_output_delay  -1 -clock [get_clocks {PCI_CLK}] -min [get_ports {{pad[10]}}]
set_input_delay  8 -clock [get_clocks {PCI_CLK}] -max [get_ports {{pad[9]}}]
set_input_delay  2 -clock [get_clocks {PCI_CLK}] -min [get_ports {{pad[9]}}]
set_output_delay  4 -clock [get_clocks {PCI_CLK}] -max [get_ports {{pad[9]}}]
set_output_delay  -1 -clock [get_clocks {PCI_CLK}] -min [get_ports {{pad[9]}}]
set_input_delay  8 -clock [get_clocks {PCI_CLK}] -max [get_ports {{pad[8]}}]
set_input_delay  2 -clock [get_clocks {PCI_CLK}] -min [get_ports {{pad[8]}}]
set_output_delay  4 -clock [get_clocks {PCI_CLK}] -max [get_ports {{pad[8]}}]
set_output_delay  -1 -clock [get_clocks {PCI_CLK}] -min [get_ports {{pad[8]}}]
set_input_delay  8 -clock [get_clocks {PCI_CLK}] -max [get_ports {{pad[7]}}]
set_input_delay  2 -clock [get_clocks {PCI_CLK}] -min [get_ports {{pad[7]}}]
set_output_delay  4 -clock [get_clocks {PCI_CLK}] -max [get_ports {{pad[7]}}]
set_output_delay  -1 -clock [get_clocks {PCI_CLK}] -min [get_ports {{pad[7]}}]
set_input_delay  8 -clock [get_clocks {PCI_CLK}] -max [get_ports {{pad[6]}}]
set_input_delay  2 -clock [get_clocks {PCI_CLK}] -min [get_ports {{pad[6]}}]
set_output_delay  4 -clock [get_clocks {PCI_CLK}] -max [get_ports {{pad[6]}}]
set_output_delay  -1 -clock [get_clocks {PCI_CLK}] -min [get_ports {{pad[6]}}]
set_input_delay  8 -clock [get_clocks {PCI_CLK}] -max [get_ports {{pad[5]}}]
set_input_delay  2 -clock [get_clocks {PCI_CLK}] -min [get_ports {{pad[5]}}]
set_output_delay  4 -clock [get_clocks {PCI_CLK}] -max [get_ports {{pad[5]}}]
set_output_delay  -1 -clock [get_clocks {PCI_CLK}] -min [get_ports {{pad[5]}}]
set_input_delay  8 -clock [get_clocks {PCI_CLK}] -max [get_ports {{pad[4]}}]
set_input_delay  2 -clock [get_clocks {PCI_CLK}] -min [get_ports {{pad[4]}}]
set_output_delay  4 -clock [get_clocks {PCI_CLK}] -max [get_ports {{pad[4]}}]
set_output_delay  -1 -clock [get_clocks {PCI_CLK}] -min [get_ports {{pad[4]}}]
set_input_delay  8 -clock [get_clocks {PCI_CLK}] -max [get_ports {{pad[3]}}]
set_input_delay  2 -clock [get_clocks {PCI_CLK}] -min [get_ports {{pad[3]}}]
set_output_delay  4 -clock [get_clocks {PCI_CLK}] -max [get_ports {{pad[3]}}]
set_output_delay  -1 -clock [get_clocks {PCI_CLK}] -min [get_ports {{pad[3]}}]
set_input_delay  8 -clock [get_clocks {PCI_CLK}] -max [get_ports {{pad[2]}}]
set_input_delay  2 -clock [get_clocks {PCI_CLK}] -min [get_ports {{pad[2]}}]
set_output_delay  4 -clock [get_clocks {PCI_CLK}] -max [get_ports {{pad[2]}}]
set_output_delay  -1 -clock [get_clocks {PCI_CLK}] -min [get_ports {{pad[2]}}]
set_input_delay  8 -clock [get_clocks {PCI_CLK}] -max [get_ports {{pad[1]}}]
set_input_delay  2 -clock [get_clocks {PCI_CLK}] -min [get_ports {{pad[1]}}]
set_output_delay  4 -clock [get_clocks {PCI_CLK}] -max [get_ports {{pad[1]}}]
set_output_delay  -1 -clock [get_clocks {PCI_CLK}] -min [get_ports {{pad[1]}}]
set_input_delay  8 -clock [get_clocks {PCI_CLK}] -max [get_ports {{pad[0]}}]
set_input_delay  2 -clock [get_clocks {PCI_CLK}] -min [get_ports {{pad[0]}}]
set_output_delay  4 -clock [get_clocks {PCI_CLK}] -max [get_ports {{pad[0]}}]
set_output_delay  -1 -clock [get_clocks {PCI_CLK}] -min [get_ports {{pad[0]}}]
set_output_delay  4 -clock [get_clocks {PCI_CLK}] -max [get_ports {preq_n}]
set_output_delay  -1 -clock [get_clocks {PCI_CLK}] -min [get_ports {preq_n}]
set_input_delay  0.8 -clock [get_clocks {SDRAM_CLK}] -max [get_ports \
 {{sd_DQ[15]}}]
set_input_delay  0.2 -clock [get_clocks {SDRAM_CLK}] -min [get_ports \
 {{sd_DQ[15]}}]
set_input_delay  0.8 -clock [get_clocks {SDRAM_CLK}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[15]}}]
set_input_delay  0.2 -clock [get_clocks {SDRAM_CLK}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[15]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -max [get_ports \
 {{sd_DQ[15]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -min [get_ports \
 {{sd_DQ[15]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[15]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[15]}}]
set_input_delay  0.8 -clock [get_clocks {SDRAM_CLK}] -max [get_ports \
 {{sd_DQ[14]}}]
set_input_delay  0.2 -clock [get_clocks {SDRAM_CLK}] -min [get_ports \
 {{sd_DQ[14]}}]
set_input_delay  0.8 -clock [get_clocks {SDRAM_CLK}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[14]}}]
set_input_delay  0.2 -clock [get_clocks {SDRAM_CLK}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[14]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -max [get_ports \
 {{sd_DQ[14]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -min [get_ports \
 {{sd_DQ[14]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[14]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[14]}}]
set_input_delay  0.8 -clock [get_clocks {SDRAM_CLK}] -max [get_ports \
 {{sd_DQ[13]}}]
set_input_delay  0.2 -clock [get_clocks {SDRAM_CLK}] -min [get_ports \
 {{sd_DQ[13]}}]
set_input_delay  0.8 -clock [get_clocks {SDRAM_CLK}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[13]}}]
set_input_delay  0.2 -clock [get_clocks {SDRAM_CLK}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[13]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -max [get_ports \
 {{sd_DQ[13]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -min [get_ports \
 {{sd_DQ[13]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[13]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[13]}}]
set_input_delay  0.8 -clock [get_clocks {SDRAM_CLK}] -max [get_ports \
 {{sd_DQ[12]}}]
set_input_delay  0.2 -clock [get_clocks {SDRAM_CLK}] -min [get_ports \
 {{sd_DQ[12]}}]
set_input_delay  0.8 -clock [get_clocks {SDRAM_CLK}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[12]}}]
set_input_delay  0.2 -clock [get_clocks {SDRAM_CLK}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[12]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -max [get_ports \
 {{sd_DQ[12]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -min [get_ports \
 {{sd_DQ[12]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[12]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[12]}}]
set_input_delay  0.8 -clock [get_clocks {SDRAM_CLK}] -max [get_ports \
 {{sd_DQ[11]}}]
set_input_delay  0.2 -clock [get_clocks {SDRAM_CLK}] -min [get_ports \
 {{sd_DQ[11]}}]
set_input_delay  0.8 -clock [get_clocks {SDRAM_CLK}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[11]}}]
set_input_delay  0.2 -clock [get_clocks {SDRAM_CLK}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[11]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -max [get_ports \
 {{sd_DQ[11]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -min [get_ports \
 {{sd_DQ[11]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[11]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[11]}}]
set_input_delay  0.8 -clock [get_clocks {SDRAM_CLK}] -max [get_ports \
 {{sd_DQ[10]}}]
set_input_delay  0.2 -clock [get_clocks {SDRAM_CLK}] -min [get_ports \
 {{sd_DQ[10]}}]
set_input_delay  0.8 -clock [get_clocks {SDRAM_CLK}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[10]}}]
set_input_delay  0.2 -clock [get_clocks {SDRAM_CLK}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[10]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -max [get_ports \
 {{sd_DQ[10]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -min [get_ports \
 {{sd_DQ[10]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[10]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[10]}}]
set_input_delay  0.8 -clock [get_clocks {SDRAM_CLK}] -max [get_ports \
 {{sd_DQ[9]}}]
set_input_delay  0.2 -clock [get_clocks {SDRAM_CLK}] -min [get_ports \
 {{sd_DQ[9]}}]
set_input_delay  0.8 -clock [get_clocks {SDRAM_CLK}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[9]}}]
set_input_delay  0.2 -clock [get_clocks {SDRAM_CLK}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[9]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -max [get_ports \
 {{sd_DQ[9]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -min [get_ports \
 {{sd_DQ[9]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[9]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[9]}}]
set_input_delay  0.8 -clock [get_clocks {SDRAM_CLK}] -max [get_ports \
 {{sd_DQ[8]}}]
set_input_delay  0.2 -clock [get_clocks {SDRAM_CLK}] -min [get_ports \
 {{sd_DQ[8]}}]
set_input_delay  0.8 -clock [get_clocks {SDRAM_CLK}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[8]}}]
set_input_delay  0.2 -clock [get_clocks {SDRAM_CLK}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[8]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -max [get_ports \
 {{sd_DQ[8]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -min [get_ports \
 {{sd_DQ[8]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[8]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[8]}}]
set_input_delay  0.8 -clock [get_clocks {SDRAM_CLK}] -max [get_ports \
 {{sd_DQ[7]}}]
set_input_delay  0.2 -clock [get_clocks {SDRAM_CLK}] -min [get_ports \
 {{sd_DQ[7]}}]
set_input_delay  0.8 -clock [get_clocks {SDRAM_CLK}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[7]}}]
set_input_delay  0.2 -clock [get_clocks {SDRAM_CLK}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[7]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -max [get_ports \
 {{sd_DQ[7]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -min [get_ports \
 {{sd_DQ[7]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[7]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[7]}}]
set_input_delay  0.8 -clock [get_clocks {SDRAM_CLK}] -max [get_ports \
 {{sd_DQ[6]}}]
set_input_delay  0.2 -clock [get_clocks {SDRAM_CLK}] -min [get_ports \
 {{sd_DQ[6]}}]
set_input_delay  0.8 -clock [get_clocks {SDRAM_CLK}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[6]}}]
set_input_delay  0.2 -clock [get_clocks {SDRAM_CLK}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[6]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -max [get_ports \
 {{sd_DQ[6]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -min [get_ports \
 {{sd_DQ[6]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[6]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[6]}}]
set_input_delay  0.8 -clock [get_clocks {SDRAM_CLK}] -max [get_ports \
 {{sd_DQ[5]}}]
set_input_delay  0.2 -clock [get_clocks {SDRAM_CLK}] -min [get_ports \
 {{sd_DQ[5]}}]
set_input_delay  0.8 -clock [get_clocks {SDRAM_CLK}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[5]}}]
set_input_delay  0.2 -clock [get_clocks {SDRAM_CLK}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[5]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -max [get_ports \
 {{sd_DQ[5]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -min [get_ports \
 {{sd_DQ[5]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[5]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[5]}}]
set_input_delay  0.8 -clock [get_clocks {SDRAM_CLK}] -max [get_ports \
 {{sd_DQ[4]}}]
set_input_delay  0.2 -clock [get_clocks {SDRAM_CLK}] -min [get_ports \
 {{sd_DQ[4]}}]
set_input_delay  0.8 -clock [get_clocks {SDRAM_CLK}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[4]}}]
set_input_delay  0.2 -clock [get_clocks {SDRAM_CLK}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[4]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -max [get_ports \
 {{sd_DQ[4]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -min [get_ports \
 {{sd_DQ[4]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[4]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[4]}}]
set_input_delay  0.8 -clock [get_clocks {SDRAM_CLK}] -max [get_ports \
 {{sd_DQ[3]}}]
set_input_delay  0.2 -clock [get_clocks {SDRAM_CLK}] -min [get_ports \
 {{sd_DQ[3]}}]
set_input_delay  0.8 -clock [get_clocks {SDRAM_CLK}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[3]}}]
set_input_delay  0.2 -clock [get_clocks {SDRAM_CLK}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[3]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -max [get_ports \
 {{sd_DQ[3]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -min [get_ports \
 {{sd_DQ[3]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[3]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[3]}}]
set_input_delay  0.8 -clock [get_clocks {SDRAM_CLK}] -max [get_ports \
 {{sd_DQ[2]}}]
set_input_delay  0.2 -clock [get_clocks {SDRAM_CLK}] -min [get_ports \
 {{sd_DQ[2]}}]
set_input_delay  0.8 -clock [get_clocks {SDRAM_CLK}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[2]}}]
set_input_delay  0.2 -clock [get_clocks {SDRAM_CLK}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[2]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -max [get_ports \
 {{sd_DQ[2]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -min [get_ports \
 {{sd_DQ[2]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[2]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[2]}}]
set_input_delay  0.8 -clock [get_clocks {SDRAM_CLK}] -max [get_ports \
 {{sd_DQ[1]}}]
set_input_delay  0.2 -clock [get_clocks {SDRAM_CLK}] -min [get_ports \
 {{sd_DQ[1]}}]
set_input_delay  0.8 -clock [get_clocks {SDRAM_CLK}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[1]}}]
set_input_delay  0.2 -clock [get_clocks {SDRAM_CLK}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[1]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -max [get_ports \
 {{sd_DQ[1]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -min [get_ports \
 {{sd_DQ[1]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[1]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[1]}}]
set_input_delay  0.8 -clock [get_clocks {SDRAM_CLK}] -max [get_ports \
 {{sd_DQ[0]}}]
set_input_delay  0.2 -clock [get_clocks {SDRAM_CLK}] -min [get_ports \
 {{sd_DQ[0]}}]
set_input_delay  0.8 -clock [get_clocks {SDRAM_CLK}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[0]}}]
set_input_delay  0.2 -clock [get_clocks {SDRAM_CLK}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[0]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -max [get_ports \
 {{sd_DQ[0]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -min [get_ports \
 {{sd_DQ[0]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[0]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[0]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -max [get_ports \
 {{sd_BWS[1]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -min [get_ports \
 {{sd_BWS[1]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -max [get_ports \
 {{sd_BWS[0]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -min [get_ports \
 {{sd_BWS[0]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -max [get_ports {sd_LD}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -min [get_ports {sd_LD}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -max [get_ports {sd_RW}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -min [get_ports {sd_RW}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -max [get_ports \
 {{sd_A[9]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -min [get_ports \
 {{sd_A[9]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -max [get_ports \
 {{sd_A[8]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -min [get_ports \
 {{sd_A[8]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -max [get_ports \
 {{sd_A[7]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -min [get_ports \
 {{sd_A[7]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -max [get_ports \
 {{sd_A[6]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -min [get_ports \
 {{sd_A[6]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -max [get_ports \
 {{sd_A[5]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -min [get_ports \
 {{sd_A[5]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -max [get_ports \
 {{sd_A[4]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -min [get_ports \
 {{sd_A[4]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -max [get_ports \
 {{sd_A[3]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -min [get_ports \
 {{sd_A[3]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -max [get_ports \
 {{sd_A[2]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -min [get_ports \
 {{sd_A[2]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -max [get_ports \
 {{sd_A[1]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -min [get_ports \
 {{sd_A[1]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -max [get_ports \
 {{sd_A[0]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -min [get_ports \
 {{sd_A[0]}}]
set_input_delay  0.1 [get_pins {U63ASTipoInst901/I}]
set_input_delay  0.1 [get_pins {U63ASTipoInst901/Z}]
set_input_delay  0.1 [get_pins {U63ASTipoInst902/I}]
set_input_delay  0.1 [get_pins {U63ASTipoInst902/Z}]
set_input_delay  0.1 [get_pins {U63ASTttcInst951/I}]
set_input_delay  0.1 [get_pins {U63ASTttcInst951/Z}]
set_input_delay  0.1 [get_pins {U63ASTttcInst953/I}]
set_input_delay  0.1 [get_pins {U63ASTttcInst953/Z}]
set_input_delay  0.1 [get_pins {U55ASTttcInst961/I}]
set_input_delay  0.1 [get_pins {U55ASTttcInst961/Z}]
set_input_delay  0.1 [get_pins {U63ASTttcInst981/I}]
set_input_delay  0.1 [get_pins {U63ASTttcInst981/Z}]
set_input_delay  0.1 [get_pins {U140ASTttcInst805/I}]
set_input_delay  0.1 [get_pins {U140ASTttcInst805/Z}]
set_input_delay  0.1 [get_pins {U63ASTtsInst884/I}]
set_input_delay  0.1 [get_pins {U63ASTtsInst884/ZN}]
set_input_delay  0.1 [get_pins {U63ASTtsInst885/I}]
set_input_delay  0.1 [get_pins {U63ASTtsInst885/ZN}]
set_input_delay  0.1 [get_pins {U55ASTttcInst798/I}]
set_input_delay  0.1 [get_pins {U55ASTttcInst798/Z}]
set_input_delay  0.1 [get_pins {U63ASTipoInst497/I}]
set_input_delay  0.1 [get_pins {U63ASTipoInst497/Z}]
set_input_delay  0.1 [get_pins {U63ASTipoInst498/I}]
set_input_delay  0.1 [get_pins {U63ASTipoInst498/Z}]
set_input_delay  0.1 [get_pins {U63ASTipoInst499/I}]
set_input_delay  0.1 [get_pins {U63ASTipoInst499/Z}]
set_input_delay  0.1 [get_pins {U63ASTipoInst500/I}]
set_input_delay  0.1 [get_pins {U63ASTipoInst500/Z}]
set_input_delay  0.1 [get_pins {U63ASTipoInst501/I}]
set_input_delay  0.1 [get_pins {U63ASTipoInst501/Z}]
set_input_delay  0.1 [get_pins {U63ASTipoInst502/I}]
set_input_delay  0.1 [get_pins {U63ASTipoInst502/Z}]
set_input_delay  0.1 [get_pins {U63ASTipoInst539/I}]
set_input_delay  0.1 [get_pins {U63ASTipoInst539/Z}]
set_input_delay  0.1 [get_pins {U63ASTipoInst494/I}]
set_input_delay  0.1 [get_pins {U63ASTipoInst494/Z}]
set_input_delay  0.1 [get_pins {U63ASTipoInst495/I}]
set_input_delay  0.1 [get_pins {U63ASTipoInst495/Z}]
set_input_delay  0.1 [get_pins {U63ASTipoInst492/I}]
set_input_delay  0.1 [get_pins {U63ASTipoInst492/Z}]
set_input_delay  0.1 [get_pins {U63ASTipoInst496/I}]
set_input_delay  0.1 [get_pins {U63ASTipoInst496/Z}]
set_input_delay  0.1 [get_pins {U149/I0}]
set_input_delay  0.1 [get_pins {U149/I1}]
set_input_delay  0.1 [get_pins {U149/S}]
set_input_delay  0.1 [get_pins {U149/Z}]
set_input_delay  0.1 [get_pins {U150/I0}]
set_input_delay  0.1 [get_pins {U150/I1}]
set_input_delay  0.1 [get_pins {U150/S}]
set_input_delay  0.1 [get_pins {U150/Z}]
set_input_delay  0.1 [get_pins {U141/A1}]
set_input_delay  0.1 [get_pins {U141/A2}]
set_input_delay  0.1 [get_pins {U141/Z}]
set_input_delay  0.1 [get_pins {U142/A1}]
set_input_delay  0.1 [get_pins {U142/A2}]
set_input_delay  0.1 [get_pins {U142/Z}]
set_input_delay  0.1 [get_pins {U143/A1}]
set_input_delay  0.1 [get_pins {U143/A2}]
set_input_delay  0.1 [get_pins {U143/Z}]
set_input_delay  0.1 [get_pins {U144/A1}]
set_input_delay  0.1 [get_pins {U144/A2}]
set_input_delay  0.1 [get_pins {U144/Z}]
set_input_delay  0.1 [get_pins {U145/I0}]
set_input_delay  0.1 [get_pins {U145/I1}]
set_input_delay  0.1 [get_pins {U145/S}]
set_input_delay  0.1 [get_pins {U145/Z}]
set_input_delay  0.1 [get_pins {U146/I0}]
set_input_delay  0.1 [get_pins {U146/I1}]
set_input_delay  0.1 [get_pins {U146/S}]
set_input_delay  0.1 [get_pins {U146/Z}]
set_input_delay  0.1 [get_pins {U147/I0}]
set_input_delay  0.1 [get_pins {U147/I1}]
set_input_delay  0.1 [get_pins {U147/S}]
set_input_delay  0.1 [get_pins {U147/Z}]
set_input_delay  0.1 [get_pins {U148/I0}]
set_input_delay  0.1 [get_pins {U148/I1}]
set_input_delay  0.1 [get_pins {U148/S}]
set_input_delay  0.1 [get_pins {U148/Z}]
set_input_delay  0.1 [get_pins {U110/I}]
set_input_delay  0.1 [get_pins {U110/ZN}]
set_input_delay  0.1 [get_pins {U112/I}]
set_input_delay  0.1 [get_pins {U112/ZN}]
set_input_delay  0.1 [get_pins {U114/I}]
set_input_delay  0.1 [get_pins {U114/ZN}]
set_input_delay  0.1 [get_pins {U116/I}]
set_input_delay  0.1 [get_pins {U116/ZN}]
set_input_delay  0.1 [get_pins {U137/A1}]
set_input_delay  0.1 [get_pins {U137/A2}]
set_input_delay  0.1 [get_pins {U137/Z}]
set_input_delay  0.1 [get_pins {U138/A1}]
set_input_delay  0.1 [get_pins {U138/A2}]
set_input_delay  0.1 [get_pins {U138/Z}]
set_input_delay  0.1 [get_pins {U139/A1}]
set_input_delay  0.1 [get_pins {U139/A2}]
set_input_delay  0.1 [get_pins {U139/Z}]
set_input_delay  0.1 [get_pins {U140/A1}]
set_input_delay  0.1 [get_pins {U140/A2}]
set_input_delay  0.1 [get_pins {U140/Z}]
set_input_delay  0.1 [get_pins {U94/I}]
set_input_delay  0.1 [get_pins {U94/ZN}]
set_input_delay  0.1 [get_pins {U96/I}]
set_input_delay  0.1 [get_pins {U96/ZN}]
set_input_delay  0.1 [get_pins {U98/I}]
set_input_delay  0.1 [get_pins {U98/ZN}]
set_input_delay  0.1 [get_pins {U100/I}]
set_input_delay  0.1 [get_pins {U100/ZN}]
set_input_delay  0.1 [get_pins {U102/I}]
set_input_delay  0.1 [get_pins {U102/ZN}]
set_input_delay  0.1 [get_pins {U104/I}]
set_input_delay  0.1 [get_pins {U104/ZN}]
set_input_delay  0.1 [get_pins {U106/I}]
set_input_delay  0.1 [get_pins {U106/ZN}]
set_input_delay  0.1 [get_pins {U108/I}]
set_input_delay  0.1 [get_pins {U108/ZN}]
set_input_delay  0.1 [get_pins {U109/A1}]
set_input_delay  0.1 [get_pins {U109/A2}]
set_input_delay  0.1 [get_pins {U109/ZN}]
set_input_delay  0.1 [get_pins {U111/A1}]
set_input_delay  0.1 [get_pins {U111/A2}]
set_input_delay  0.1 [get_pins {U111/ZN}]
set_input_delay  0.1 [get_pins {U113/A1}]
set_input_delay  0.1 [get_pins {U113/A2}]
set_input_delay  0.1 [get_pins {U113/ZN}]
set_input_delay  0.1 [get_pins {U115/A1}]
set_input_delay  0.1 [get_pins {U115/A2}]
set_input_delay  0.1 [get_pins {U115/ZN}]
set_input_delay  0.1 [get_pins {U86/I}]
set_input_delay  0.1 [get_pins {U86/ZN}]
set_input_delay  0.1 [get_pins {U88/I}]
set_input_delay  0.1 [get_pins {U88/ZN}]
set_input_delay  0.1 [get_pins {U90/I}]
set_input_delay  0.1 [get_pins {U90/ZN}]
set_input_delay  0.1 [get_pins {U92/I}]
set_input_delay  0.1 [get_pins {U92/ZN}]
set_input_delay  0.1 [get_pins {U93/A1}]
set_input_delay  0.1 [get_pins {U93/A2}]
set_input_delay  0.1 [get_pins {U93/ZN}]
set_input_delay  0.1 [get_pins {U95/A1}]
set_input_delay  0.1 [get_pins {U95/A2}]
set_input_delay  0.1 [get_pins {U95/ZN}]
set_input_delay  0.1 [get_pins {U97/A1}]
set_input_delay  0.1 [get_pins {U97/A2}]
set_input_delay  0.1 [get_pins {U97/ZN}]
set_input_delay  0.1 [get_pins {U99/A1}]
set_input_delay  0.1 [get_pins {U99/A2}]
set_input_delay  0.1 [get_pins {U99/ZN}]
set_input_delay  0.1 [get_pins {U101/A1}]
set_input_delay  0.1 [get_pins {U101/A2}]
set_input_delay  0.1 [get_pins {U101/ZN}]
set_input_delay  0.1 [get_pins {U103/A1}]
set_input_delay  0.1 [get_pins {U103/A2}]
set_input_delay  0.1 [get_pins {U103/ZN}]
set_input_delay  0.1 [get_pins {U105/A1}]
set_input_delay  0.1 [get_pins {U105/A2}]
set_input_delay  0.1 [get_pins {U105/ZN}]
set_input_delay  0.1 [get_pins {U107/A1}]
set_input_delay  0.1 [get_pins {U107/A2}]
set_input_delay  0.1 [get_pins {U107/ZN}]
set_input_delay  0.1 [get_pins {U132/I}]
set_input_delay  0.1 [get_pins {U132/ZN}]
set_input_delay  0.1 [get_pins {U133/I}]
set_input_delay  0.1 [get_pins {U133/ZN}]
set_input_delay  0.1 [get_pins {U134/I}]
set_input_delay  0.1 [get_pins {U134/ZN}]
set_input_delay  0.1 [get_pins {U135/I}]
set_input_delay  0.1 [get_pins {U135/ZN}]
set_input_delay  0.1 [get_pins {U85/A1}]
set_input_delay  0.1 [get_pins {U85/A2}]
set_input_delay  0.1 [get_pins {U85/ZN}]
set_input_delay  0.1 [get_pins {U87/A1}]
set_input_delay  0.1 [get_pins {U87/A2}]
set_input_delay  0.1 [get_pins {U87/ZN}]
set_input_delay  0.1 [get_pins {U89/A1}]
set_input_delay  0.1 [get_pins {U89/A2}]
set_input_delay  0.1 [get_pins {U89/ZN}]
set_input_delay  0.1 [get_pins {U91/A1}]
set_input_delay  0.1 [get_pins {U91/A2}]
set_input_delay  0.1 [get_pins {U91/ZN}]
set_input_delay  0.1 [get_pins {U121/I}]
set_input_delay  0.1 [get_pins {U121/ZN}]
set_input_delay  0.1 [get_pins {U122/I}]
set_input_delay  0.1 [get_pins {U122/ZN}]
set_input_delay  0.1 [get_pins {U124/I}]
set_input_delay  0.1 [get_pins {U124/ZN}]
set_input_delay  0.1 [get_pins {U126/I}]
set_input_delay  0.1 [get_pins {U126/ZN}]
set_input_delay  0.1 [get_pins {U128/I}]
set_input_delay  0.1 [get_pins {U128/ZN}]
set_input_delay  0.1 [get_pins {U129/I}]
set_input_delay  0.1 [get_pins {U129/ZN}]
set_input_delay  0.1 [get_pins {U130/I}]
set_input_delay  0.1 [get_pins {U130/ZN}]
set_input_delay  0.1 [get_pins {U131/I}]
set_input_delay  0.1 [get_pins {U131/ZN}]
set_input_delay  0.1 [get_pins {U117/I}]
set_input_delay  0.1 [get_pins {U117/ZN}]
set_input_delay  0.1 [get_pins {U118/I}]
set_input_delay  0.1 [get_pins {U118/ZN}]
set_input_delay  0.1 [get_pins {U119/I}]
set_input_delay  0.1 [get_pins {U119/ZN}]
set_input_delay  0.1 [get_pins {U120/I}]
set_input_delay  0.1 [get_pins {U120/ZN}]
set_input_delay  0.1 [get_pins {U57/A1}]
set_input_delay  0.1 [get_pins {U57/A2}]
set_input_delay  0.1 [get_pins {U57/Z}]
set_input_delay  0.1 [get_pins {U63/A1}]
set_input_delay  0.1 [get_pins {U63/A2}]
set_input_delay  0.1 [get_pins {U63/Z}]
set_input_delay  0.1 [get_pins {U54/I}]
set_input_delay  0.1 [get_pins {U54/Z}]
set_input_delay  0.1 [get_pins {U55/I}]
set_input_delay  0.1 [get_pins {U55/Z}]
set_input_delay  0.1 [get_pins {U56/I}]
set_input_delay  0.1 [get_pins {U56/ZN}]
set_input_delay  0.1 [get_pins {U62/I}]
set_input_delay  0.1 [get_pins {U62/ZN}]
set_input_delay  0.1 [get_pins {U64/I}]
set_input_delay  0.1 [get_pins {U64/ZN}]
set_input_delay  0.1 [get_pins {U65/I}]
set_input_delay  0.1 [get_pins {U65/ZN}]
set_input_delay  0.1 [get_pins {U66/I}]
set_input_delay  0.1 [get_pins {U66/ZN}]
set_input_delay  0.1 [get_pins {U80/I}]
set_input_delay  0.1 [get_pins {U80/ZN}]
set_input_delay  0.1 [get_pins {U81/I}]
set_input_delay  0.1 [get_pins {U81/ZN}]
set_input_delay  0.1 [get_pins {U82/I}]
set_input_delay  0.1 [get_pins {U82/ZN}]
set_input_delay  0.1 [get_pins {U83/I}]
set_input_delay  0.1 [get_pins {U83/ZN}]
set_input_delay  0.1 [get_pins {U84/I}]
set_input_delay  0.1 [get_pins {U84/ZN}]
set_input_delay  0.1 [get_pins {U72/I}]
set_input_delay  0.1 [get_pins {U72/ZN}]
set_input_delay  0.1 [get_pins {U73/I}]
set_input_delay  0.1 [get_pins {U73/ZN}]
set_input_delay  0.1 [get_pins {U74/I}]
set_input_delay  0.1 [get_pins {U74/ZN}]
set_input_delay  0.1 [get_pins {U75/I}]
set_input_delay  0.1 [get_pins {U75/ZN}]
set_input_delay  0.1 [get_pins {U76/I}]
set_input_delay  0.1 [get_pins {U76/ZN}]
set_input_delay  0.1 [get_pins {U77/I}]
set_input_delay  0.1 [get_pins {U77/ZN}]
set_input_delay  0.1 [get_pins {U78/I}]
set_input_delay  0.1 [get_pins {U78/ZN}]
set_input_delay  0.1 [get_pins {U79/I}]
set_input_delay  0.1 [get_pins {U79/ZN}]
set_input_delay  0.1 [get_pins {U7/I}]
set_input_delay  0.1 [get_pins {U7/ZN}]
set_input_delay  0.1 [get_pins {U9/I}]
set_input_delay  0.1 [get_pins {U9/ZN}]
set_input_delay  0.1 [get_pins {U69/I}]
set_input_delay  0.1 [get_pins {U69/ZN}]
set_input_delay  0.1 [get_pins {U70/I}]
set_input_delay  0.1 [get_pins {U70/ZN}]
set_input_delay  0.1 [get_pins {U71/I}]
set_input_delay  0.1 [get_pins {U71/ZN}]
set_input_delay  0.1 [get_pins {U125/CLK}]
set_input_delay  0.1 [get_pins {U125/C}]
set_input_delay  0.1 [get_pins {U125/CN}]
set_input_delay  0.1 [get_pins {U127/CLK}]
set_input_delay  0.1 [get_pins {U127/C}]
set_input_delay  0.1 [get_pins {U127/CN}]
set_input_delay  0.1 [get_pins {U136/CLK}]
set_input_delay  0.1 [get_pins {U136/C}]
set_input_delay  0.1 [get_pins {U136/CN}]
set_input_delay  0.1 [get_pins {U68/I}]
set_input_delay  0.1 [get_pins {U68/ZN}]
set_input_delay  0.1 [get_pins {U67/CLK}]
set_input_delay  0.1 [get_pins {U67/C}]
set_input_delay  0.1 [get_pins {U67/CN}]
set_input_delay  0.1 [get_pins {U123/CLK}]
set_input_delay  0.1 [get_pins {U123/C}]
set_input_delay  0.1 [get_pins {U123/CN}]
set_clock_gating_check -rise -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_12/I1}]
set_clock_gating_check -fall -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_12/I1}]
set_clock_gating_check -rise -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_12/I1}]
set_clock_gating_check -fall -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_12/I1}]
set_clock_gating_check -high [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_12/I1}]
set_clock_gating_check -rise -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_15/I0}]
set_clock_gating_check -fall -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_15/I0}]
set_clock_gating_check -rise -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_15/I0}]
set_clock_gating_check -fall -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_15/I0}]
set_clock_gating_check -low [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_15/I0}]
set_clock_gating_check -rise -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_13/I0}]
set_clock_gating_check -fall -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_13/I0}]
set_clock_gating_check -rise -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_13/I0}]
set_clock_gating_check -fall -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_13/I0}]
set_clock_gating_check -low [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_13/I0}]
set_clock_gating_check -rise -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_8/I1}]
set_clock_gating_check -fall -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_8/I1}]
set_clock_gating_check -rise -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_8/I1}]
set_clock_gating_check -fall -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_8/I1}]
set_clock_gating_check -high [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_8/I1}]
set_clock_gating_check -rise -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_1/I0}]
set_clock_gating_check -fall -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_1/I0}]
set_clock_gating_check -rise -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_1/I0}]
set_clock_gating_check -fall -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_1/I0}]
set_clock_gating_check -low [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_1/I0}]
set_clock_gating_check -rise -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_5/I1}]
set_clock_gating_check -fall -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_5/I1}]
set_clock_gating_check -rise -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_5/I1}]
set_clock_gating_check -fall -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_5/I1}]
set_clock_gating_check -high [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_5/I1}]
set_clock_gating_check -rise -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_6/I0}]
set_clock_gating_check -fall -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_6/I0}]
set_clock_gating_check -rise -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_6/I0}]
set_clock_gating_check -fall -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_6/I0}]
set_clock_gating_check -low [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_6/I0}]
set_clock_gating_check -rise -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_11/I0}]
set_clock_gating_check -fall -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_11/I0}]
set_clock_gating_check -rise -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_11/I0}]
set_clock_gating_check -fall -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_11/I0}]
set_clock_gating_check -low [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_11/I0}]
set_clock_gating_check -rise -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_14/I0}]
set_clock_gating_check -fall -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_14/I0}]
set_clock_gating_check -rise -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_14/I0}]
set_clock_gating_check -fall -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_14/I0}]
set_clock_gating_check -low [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_14/I0}]
set_clock_gating_check -rise -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_4/I0}]
set_clock_gating_check -fall -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_4/I0}]
set_clock_gating_check -rise -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_4/I0}]
set_clock_gating_check -fall -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_4/I0}]
set_clock_gating_check -low [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_4/I0}]
set_clock_gating_check -rise -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_10/I1}]
set_clock_gating_check -fall -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_10/I1}]
set_clock_gating_check -rise -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_10/I1}]
set_clock_gating_check -fall -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_10/I1}]
set_clock_gating_check -high [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_10/I1}]
set_clock_gating_check -rise -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_8/I0}]
set_clock_gating_check -fall -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_8/I0}]
set_clock_gating_check -rise -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_8/I0}]
set_clock_gating_check -fall -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_8/I0}]
set_clock_gating_check -low [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_8/I0}]
set_clock_gating_check -rise -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_12/I0}]
set_clock_gating_check -fall -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_12/I0}]
set_clock_gating_check -rise -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_12/I0}]
set_clock_gating_check -fall -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_12/I0}]
set_clock_gating_check -low [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_12/I0}]
set_clock_gating_check -rise -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_11/I1}]
set_clock_gating_check -fall -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_11/I1}]
set_clock_gating_check -rise -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_11/I1}]
set_clock_gating_check -fall -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_11/I1}]
set_clock_gating_check -high [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_11/I1}]
set_clock_gating_check -rise -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_2/I0}]
set_clock_gating_check -fall -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_2/I0}]
set_clock_gating_check -rise -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_2/I0}]
set_clock_gating_check -fall -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_2/I0}]
set_clock_gating_check -low [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_2/I0}]
set_clock_gating_check -rise -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_0/I1}]
set_clock_gating_check -fall -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_0/I1}]
set_clock_gating_check -rise -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_0/I1}]
set_clock_gating_check -fall -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_0/I1}]
set_clock_gating_check -high [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_0/I1}]
set_clock_gating_check -rise -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_13/I1}]
set_clock_gating_check -fall -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_13/I1}]
set_clock_gating_check -rise -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_13/I1}]
set_clock_gating_check -fall -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_13/I1}]
set_clock_gating_check -high [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_13/I1}]
set_clock_gating_check -rise -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_1/I1}]
set_clock_gating_check -fall -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_1/I1}]
set_clock_gating_check -rise -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_1/I1}]
set_clock_gating_check -fall -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_1/I1}]
set_clock_gating_check -high [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_1/I1}]
set_clock_gating_check -rise -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_10/I0}]
set_clock_gating_check -fall -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_10/I0}]
set_clock_gating_check -rise -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_10/I0}]
set_clock_gating_check -fall -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_10/I0}]
set_clock_gating_check -low [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_10/I0}]
set_clock_gating_check -rise -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_5/I0}]
set_clock_gating_check -fall -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_5/I0}]
set_clock_gating_check -rise -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_5/I0}]
set_clock_gating_check -fall -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_5/I0}]
set_clock_gating_check -low [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_5/I0}]
set_clock_gating_check -rise -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_6/I1}]
set_clock_gating_check -fall -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_6/I1}]
set_clock_gating_check -rise -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_6/I1}]
set_clock_gating_check -fall -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_6/I1}]
set_clock_gating_check -high [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_6/I1}]
set_clock_gating_check -rise -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_3/I1}]
set_clock_gating_check -fall -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_3/I1}]
set_clock_gating_check -rise -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_3/I1}]
set_clock_gating_check -fall -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_3/I1}]
set_clock_gating_check -high [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_3/I1}]
set_clock_gating_check -rise -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_3/I0}]
set_clock_gating_check -fall -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_3/I0}]
set_clock_gating_check -rise -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_3/I0}]
set_clock_gating_check -fall -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_3/I0}]
set_clock_gating_check -low [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_3/I0}]
set_clock_gating_check -rise -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_0/I0}]
set_clock_gating_check -fall -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_0/I0}]
set_clock_gating_check -rise -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_0/I0}]
set_clock_gating_check -fall -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_0/I0}]
set_clock_gating_check -low [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_0/I0}]
set_clock_gating_check -rise -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_2/I1}]
set_clock_gating_check -fall -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_2/I1}]
set_clock_gating_check -rise -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_2/I1}]
set_clock_gating_check -fall -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_2/I1}]
set_clock_gating_check -high [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_2/I1}]
set_clock_gating_check -rise -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_15/I1}]
set_clock_gating_check -fall -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_15/I1}]
set_clock_gating_check -rise -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_15/I1}]
set_clock_gating_check -fall -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_15/I1}]
set_clock_gating_check -high [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_15/I1}]
set_clock_gating_check -rise -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_7/I1}]
set_clock_gating_check -fall -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_7/I1}]
set_clock_gating_check -rise -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_7/I1}]
set_clock_gating_check -fall -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_7/I1}]
set_clock_gating_check -high [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_7/I1}]
set_clock_gating_check -rise -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_9/I1}]
set_clock_gating_check -fall -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_9/I1}]
set_clock_gating_check -rise -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_9/I1}]
set_clock_gating_check -fall -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_9/I1}]
set_clock_gating_check -high [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_9/I1}]
set_clock_gating_check -rise -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_7/I0}]
set_clock_gating_check -fall -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_7/I0}]
set_clock_gating_check -rise -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_7/I0}]
set_clock_gating_check -fall -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_7/I0}]
set_clock_gating_check -low [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_7/I0}]
set_clock_gating_check -rise -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_4/I1}]
set_clock_gating_check -fall -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_4/I1}]
set_clock_gating_check -rise -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_4/I1}]
set_clock_gating_check -fall -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_4/I1}]
set_clock_gating_check -high [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_4/I1}]
set_clock_gating_check -rise -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_14/I1}]
set_clock_gating_check -fall -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_14/I1}]
set_clock_gating_check -rise -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_14/I1}]
set_clock_gating_check -fall -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_14/I1}]
set_clock_gating_check -high [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_14/I1}]
set_clock_gating_check -rise -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_9/I0}]
set_clock_gating_check -fall -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_9/I0}]
set_clock_gating_check -rise -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_9/I0}]
set_clock_gating_check -fall -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_9/I0}]
set_clock_gating_check -low [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_9/I0}]
set_case_analysis 0 [get_ports {test_mode}]
set_case_analysis 0 [get_ports {scan_en}]
set_case_analysis 0 [get_ports {power_save}]
set_case_analysis 1 [get_ports {pm66en}]
set_case_analysis 1 [get_ports {prst_n}]
set_max_transition  5 [current_design]
set_max_transition  2 [get_clocks {PCI_CLK}] -clock_path 
set_max_transition  2 [get_clocks {PCI_CLK}] -clock_path 
