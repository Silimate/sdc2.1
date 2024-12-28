###############################################################################
#
# Created by PrimeTime write_sdc on Wed May 18 14:07:05 2005
#
###############################################################################

set sdc_version 1.5

###############################################################################
set_operating_conditions  -library [get_libs \
 {CB13F_max.db:CB13F_max}] 
###############################################################################
# Clock Related Information
###############################################################################
create_clock -name clkpci -period 15 -waveform { 0 7.5 } [get_ports {pclk}]
set_propagated_clock [get_clocks {clkpci}]
create_clock -name SYS_CLK -period 8 -waveform { 0 4 } [get_ports {sys_clk}]
set_propagated_clock [get_clocks {SYS_CLK}]
set_clock_gating_check -rise -setup  0.2 [get_clocks {SYS_CLK}]
set_clock_gating_check -fall -setup  0.2 [get_clocks {SYS_CLK}]
set_clock_gating_check -rise -hold  0.2 [get_clocks {SYS_CLK}]
set_clock_gating_check -fall -hold  0.2 [get_clocks {SYS_CLK}]
create_clock -name clksdram -period 7.5 -waveform { 0 3.75 } [get_ports \
 {sdr_clk}]
set_propagated_clock [get_clocks {clksdram}]
set_timing_derate -data -cell_delay -late 1.1
set_timing_derate -data -net_delay -late 1.1
###############################################################################
# Derived Clock related information
###############################################################################
create_generated_clock -name SD_DDR_CLK -source [get_ports {sdr_clk}]  \
 -multiply_by 1  -add -master_clock [get_clocks {clksdram}] [get_ports \
 {sd_CK}] 
set_propagated_clock [get_clocks {SD_DDR_CLK}]
create_generated_clock -name SYS_2x_CLK -source [get_ports {sys_clk}]  \
 -multiply_by 2  -add -master_clock [get_clocks {SYS_CLK}] [get_pins \
 {I_CLOCK_GEN/I_CLKMUL/CLK_2X}] 
set_propagated_clock [get_clocks {SYS_2x_CLK}]
create_generated_clock -name SD_DDR_CLKn -source [get_ports {sdr_clk}]  \
 -multiply_by 1 -invert  -add -master_clock [get_clocks {clksdram}] \
 [get_ports {sd_CKn}] 
set_propagated_clock [get_clocks {SD_DDR_CLKn}]
###############################################################################
# Point to Point exceptions
###############################################################################
set_false_path -from [get_clocks {clkpci}] -to [get_clocks {clksdram \
 SD_DDR_CLK SD_DDR_CLKn}]
set_false_path -from [get_clocks {clkpci}] -to [get_clocks {SYS_CLK \
 SYS_2x_CLK}]
set_false_path -from [get_clocks {clksdram SD_DDR_CLK SD_DDR_CLKn}] -to \
 [get_clocks {clkpci}]
set_false_path -from [get_clocks {clksdram SD_DDR_CLK SD_DDR_CLKn}] -to \
 [get_clocks {SYS_CLK SYS_2x_CLK}]
set_false_path -from [get_clocks {SYS_CLK SYS_2x_CLK}] -to [get_clocks \
 {clkpci}]
set_false_path -from [get_clocks {SYS_CLK SYS_2x_CLK}] -to [get_clocks \
 {clksdram SD_DDR_CLK SD_DDR_CLKn}]
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
# External Delay Information
###############################################################################
set_input_delay  8 -clock [get_clocks {clkpci}] -max [get_ports {pidsel}]
set_input_delay  2 -clock [get_clocks {clkpci}] -min [get_ports {pidsel}]
set_input_delay  8 -clock [get_clocks {clkpci}] -max [get_ports {pgnt_n}]
set_input_delay  2 -clock [get_clocks {clkpci}] -min [get_ports {pgnt_n}]
set_input_delay  8 -clock [get_clocks {clkpci}] -max [get_ports {pm66en}]
set_input_delay  2 -clock [get_clocks {clkpci}] -min [get_ports {pm66en}]
set_input_delay  8 -clock [get_clocks {clkpci}] -max [get_ports {pdevsel_n}]
set_input_delay  2 -clock [get_clocks {clkpci}] -min [get_ports {pdevsel_n}]
set_output_delay  4 -clock [get_clocks {clkpci}] -max [get_ports {pdevsel_n}]
set_output_delay  -1 -clock [get_clocks {clkpci}] -min [get_ports {pdevsel_n}]
set_input_delay  8 -clock [get_clocks {clkpci}] -max [get_ports {pstop_n}]
set_input_delay  2 -clock [get_clocks {clkpci}] -min [get_ports {pstop_n}]
set_output_delay  4 -clock [get_clocks {clkpci}] -max [get_ports {pstop_n}]
set_output_delay  -1 -clock [get_clocks {clkpci}] -min [get_ports {pstop_n}]
set_input_delay  8 -clock [get_clocks {clkpci}] -max [get_ports {pperr_n}]
set_input_delay  2 -clock [get_clocks {clkpci}] -min [get_ports {pperr_n}]
set_output_delay  4 -clock [get_clocks {clkpci}] -max [get_ports {pperr_n}]
set_output_delay  -1 -clock [get_clocks {clkpci}] -min [get_ports {pperr_n}]
set_input_delay  8 -clock [get_clocks {clkpci}] -max [get_ports {pserr_n}]
set_input_delay  2 -clock [get_clocks {clkpci}] -min [get_ports {pserr_n}]
set_output_delay  4 -clock [get_clocks {clkpci}] -max [get_ports {pserr_n}]
set_output_delay  -1 -clock [get_clocks {clkpci}] -min [get_ports {pserr_n}]
set_input_delay  8 -clock [get_clocks {clkpci}] -max [get_ports {ppar}]
set_input_delay  2 -clock [get_clocks {clkpci}] -min [get_ports {ppar}]
set_output_delay  4 -clock [get_clocks {clkpci}] -max [get_ports {ppar}]
set_output_delay  -1 -clock [get_clocks {clkpci}] -min [get_ports {ppar}]
set_input_delay  8 -clock [get_clocks {clkpci}] -max [get_ports {{pc_be[3]}}]
set_input_delay  2 -clock [get_clocks {clkpci}] -min [get_ports {{pc_be[3]}}]
set_output_delay  4 -clock [get_clocks {clkpci}] -max [get_ports {{pc_be[3]}}]
set_output_delay  -1 -clock [get_clocks {clkpci}] -min [get_ports {{pc_be[3]}}]
set_input_delay  8 -clock [get_clocks {clkpci}] -max [get_ports {{pc_be[2]}}]
set_input_delay  2 -clock [get_clocks {clkpci}] -min [get_ports {{pc_be[2]}}]
set_output_delay  4 -clock [get_clocks {clkpci}] -max [get_ports {{pc_be[2]}}]
set_output_delay  -1 -clock [get_clocks {clkpci}] -min [get_ports {{pc_be[2]}}]
set_input_delay  8 -clock [get_clocks {clkpci}] -max [get_ports {{pc_be[1]}}]
set_input_delay  2 -clock [get_clocks {clkpci}] -min [get_ports {{pc_be[1]}}]
set_output_delay  4 -clock [get_clocks {clkpci}] -max [get_ports {{pc_be[1]}}]
set_output_delay  -1 -clock [get_clocks {clkpci}] -min [get_ports {{pc_be[1]}}]
set_input_delay  8 -clock [get_clocks {clkpci}] -max [get_ports {{pc_be[0]}}]
set_input_delay  2 -clock [get_clocks {clkpci}] -min [get_ports {{pc_be[0]}}]
set_output_delay  4 -clock [get_clocks {clkpci}] -max [get_ports {{pc_be[0]}}]
set_output_delay  -1 -clock [get_clocks {clkpci}] -min [get_ports {{pc_be[0]}}]
set_input_delay  8 -clock [get_clocks {clkpci}] -max [get_ports {pframe_n}]
set_input_delay  2 -clock [get_clocks {clkpci}] -min [get_ports {pframe_n}]
set_output_delay  4 -clock [get_clocks {clkpci}] -max [get_ports {pframe_n}]
set_output_delay  -1 -clock [get_clocks {clkpci}] -min [get_ports {pframe_n}]
set_input_delay  8 -clock [get_clocks {clkpci}] -max [get_ports {ptrdy_n}]
set_input_delay  2 -clock [get_clocks {clkpci}] -min [get_ports {ptrdy_n}]
set_output_delay  4 -clock [get_clocks {clkpci}] -max [get_ports {ptrdy_n}]
set_output_delay  -1 -clock [get_clocks {clkpci}] -min [get_ports {ptrdy_n}]
set_input_delay  8 -clock [get_clocks {clkpci}] -max [get_ports {pirdy_n}]
set_input_delay  2 -clock [get_clocks {clkpci}] -min [get_ports {pirdy_n}]
set_output_delay  4 -clock [get_clocks {clkpci}] -max [get_ports {pirdy_n}]
set_output_delay  -1 -clock [get_clocks {clkpci}] -min [get_ports {pirdy_n}]
set_input_delay  8 -clock [get_clocks {clkpci}] -max [get_ports {{pad[15]}}]
set_input_delay  2 -clock [get_clocks {clkpci}] -min [get_ports {{pad[15]}}]
set_output_delay  4 -clock [get_clocks {clkpci}] -max [get_ports {{pad[15]}}]
set_output_delay  -1 -clock [get_clocks {clkpci}] -min [get_ports {{pad[15]}}]
set_input_delay  8 -clock [get_clocks {clkpci}] -max [get_ports {{pad[14]}}]
set_input_delay  2 -clock [get_clocks {clkpci}] -min [get_ports {{pad[14]}}]
set_output_delay  4 -clock [get_clocks {clkpci}] -max [get_ports {{pad[14]}}]
set_output_delay  -1 -clock [get_clocks {clkpci}] -min [get_ports {{pad[14]}}]
set_input_delay  8 -clock [get_clocks {clkpci}] -max [get_ports {{pad[13]}}]
set_input_delay  2 -clock [get_clocks {clkpci}] -min [get_ports {{pad[13]}}]
set_output_delay  4 -clock [get_clocks {clkpci}] -max [get_ports {{pad[13]}}]
set_output_delay  -1 -clock [get_clocks {clkpci}] -min [get_ports {{pad[13]}}]
set_input_delay  8 -clock [get_clocks {clkpci}] -max [get_ports {{pad[12]}}]
set_input_delay  2 -clock [get_clocks {clkpci}] -min [get_ports {{pad[12]}}]
set_output_delay  4 -clock [get_clocks {clkpci}] -max [get_ports {{pad[12]}}]
set_output_delay  -1 -clock [get_clocks {clkpci}] -min [get_ports {{pad[12]}}]
set_input_delay  8 -clock [get_clocks {clkpci}] -max [get_ports {{pad[11]}}]
set_input_delay  2 -clock [get_clocks {clkpci}] -min [get_ports {{pad[11]}}]
set_output_delay  4 -clock [get_clocks {clkpci}] -max [get_ports {{pad[11]}}]
set_output_delay  -1 -clock [get_clocks {clkpci}] -min [get_ports {{pad[11]}}]
set_input_delay  8 -clock [get_clocks {clkpci}] -max [get_ports {{pad[10]}}]
set_input_delay  2 -clock [get_clocks {clkpci}] -min [get_ports {{pad[10]}}]
set_output_delay  4 -clock [get_clocks {clkpci}] -max [get_ports {{pad[10]}}]
set_output_delay  -1 -clock [get_clocks {clkpci}] -min [get_ports {{pad[10]}}]
set_input_delay  8 -clock [get_clocks {clkpci}] -max [get_ports {{pad[9]}}]
set_input_delay  2 -clock [get_clocks {clkpci}] -min [get_ports {{pad[9]}}]
set_output_delay  4 -clock [get_clocks {clkpci}] -max [get_ports {{pad[9]}}]
set_output_delay  -1 -clock [get_clocks {clkpci}] -min [get_ports {{pad[9]}}]
set_input_delay  8 -clock [get_clocks {clkpci}] -max [get_ports {{pad[8]}}]
set_input_delay  2 -clock [get_clocks {clkpci}] -min [get_ports {{pad[8]}}]
set_output_delay  4 -clock [get_clocks {clkpci}] -max [get_ports {{pad[8]}}]
set_output_delay  -1 -clock [get_clocks {clkpci}] -min [get_ports {{pad[8]}}]
set_input_delay  8 -clock [get_clocks {clkpci}] -max [get_ports {{pad[7]}}]
set_input_delay  2 -clock [get_clocks {clkpci}] -min [get_ports {{pad[7]}}]
set_output_delay  4 -clock [get_clocks {clkpci}] -max [get_ports {{pad[7]}}]
set_output_delay  -1 -clock [get_clocks {clkpci}] -min [get_ports {{pad[7]}}]
set_input_delay  8 -clock [get_clocks {clkpci}] -max [get_ports {{pad[6]}}]
set_input_delay  2 -clock [get_clocks {clkpci}] -min [get_ports {{pad[6]}}]
set_output_delay  4 -clock [get_clocks {clkpci}] -max [get_ports {{pad[6]}}]
set_output_delay  -1 -clock [get_clocks {clkpci}] -min [get_ports {{pad[6]}}]
set_input_delay  8 -clock [get_clocks {clkpci}] -max [get_ports {{pad[5]}}]
set_input_delay  2 -clock [get_clocks {clkpci}] -min [get_ports {{pad[5]}}]
set_output_delay  4 -clock [get_clocks {clkpci}] -max [get_ports {{pad[5]}}]
set_output_delay  -1 -clock [get_clocks {clkpci}] -min [get_ports {{pad[5]}}]
set_input_delay  8 -clock [get_clocks {clkpci}] -max [get_ports {{pad[4]}}]
set_input_delay  2 -clock [get_clocks {clkpci}] -min [get_ports {{pad[4]}}]
set_output_delay  4 -clock [get_clocks {clkpci}] -max [get_ports {{pad[4]}}]
set_output_delay  -1 -clock [get_clocks {clkpci}] -min [get_ports {{pad[4]}}]
set_input_delay  8 -clock [get_clocks {clkpci}] -max [get_ports {{pad[3]}}]
set_input_delay  2 -clock [get_clocks {clkpci}] -min [get_ports {{pad[3]}}]
set_output_delay  4 -clock [get_clocks {clkpci}] -max [get_ports {{pad[3]}}]
set_output_delay  -1 -clock [get_clocks {clkpci}] -min [get_ports {{pad[3]}}]
set_input_delay  8 -clock [get_clocks {clkpci}] -max [get_ports {{pad[2]}}]
set_input_delay  2 -clock [get_clocks {clkpci}] -min [get_ports {{pad[2]}}]
set_output_delay  4 -clock [get_clocks {clkpci}] -max [get_ports {{pad[2]}}]
set_output_delay  -1 -clock [get_clocks {clkpci}] -min [get_ports {{pad[2]}}]
set_input_delay  8 -clock [get_clocks {clkpci}] -max [get_ports {{pad[1]}}]
set_input_delay  2 -clock [get_clocks {clkpci}] -min [get_ports {{pad[1]}}]
set_output_delay  4 -clock [get_clocks {clkpci}] -max [get_ports {{pad[1]}}]
set_output_delay  -1 -clock [get_clocks {clkpci}] -min [get_ports {{pad[1]}}]
set_input_delay  8 -clock [get_clocks {clkpci}] -max [get_ports {{pad[0]}}]
set_input_delay  2 -clock [get_clocks {clkpci}] -min [get_ports {{pad[0]}}]
set_output_delay  4 -clock [get_clocks {clkpci}] -max [get_ports {{pad[0]}}]
set_output_delay  -1 -clock [get_clocks {clkpci}] -min [get_ports {{pad[0]}}]
set_output_delay  4 -clock [get_clocks {clkpci}] -max [get_ports {preq_n}]
set_output_delay  -1 -clock [get_clocks {clkpci}] -min [get_ports {preq_n}]
set_input_delay  0.8 -clock [get_clocks {clksdram}] -max [get_ports \
 {{sd_DQ[15]}}]
set_input_delay  0.2 -clock [get_clocks {clksdram}] -min [get_ports \
 {{sd_DQ[15]}}]
set_input_delay  0.8 -clock [get_clocks {clksdram}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[15]}}]
set_input_delay  0.2 -clock [get_clocks {clksdram}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[15]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -max [get_ports \
 {{sd_DQ[15]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -min [get_ports \
 {{sd_DQ[15]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[15]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[15]}}]
set_input_delay  0.8 -clock [get_clocks {clksdram}] -max [get_ports \
 {{sd_DQ[14]}}]
set_input_delay  0.2 -clock [get_clocks {clksdram}] -min [get_ports \
 {{sd_DQ[14]}}]
set_input_delay  0.8 -clock [get_clocks {clksdram}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[14]}}]
set_input_delay  0.2 -clock [get_clocks {clksdram}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[14]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -max [get_ports \
 {{sd_DQ[14]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -min [get_ports \
 {{sd_DQ[14]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[14]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[14]}}]
set_input_delay  0.8 -clock [get_clocks {clksdram}] -max [get_ports \
 {{sd_DQ[13]}}]
set_input_delay  0.2 -clock [get_clocks {clksdram}] -min [get_ports \
 {{sd_DQ[13]}}]
set_input_delay  0.8 -clock [get_clocks {clksdram}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[13]}}]
set_input_delay  0.2 -clock [get_clocks {clksdram}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[13]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -max [get_ports \
 {{sd_DQ[13]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -min [get_ports \
 {{sd_DQ[13]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[13]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[13]}}]
set_input_delay  0.8 -clock [get_clocks {clksdram}] -max [get_ports \
 {{sd_DQ[12]}}]
set_input_delay  0.2 -clock [get_clocks {clksdram}] -min [get_ports \
 {{sd_DQ[12]}}]
set_input_delay  0.8 -clock [get_clocks {clksdram}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[12]}}]
set_input_delay  0.2 -clock [get_clocks {clksdram}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[12]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -max [get_ports \
 {{sd_DQ[12]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -min [get_ports \
 {{sd_DQ[12]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[12]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[12]}}]
set_input_delay  0.8 -clock [get_clocks {clksdram}] -max [get_ports \
 {{sd_DQ[11]}}]
set_input_delay  0.2 -clock [get_clocks {clksdram}] -min [get_ports \
 {{sd_DQ[11]}}]
set_input_delay  0.8 -clock [get_clocks {clksdram}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[11]}}]
set_input_delay  0.2 -clock [get_clocks {clksdram}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[11]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -max [get_ports \
 {{sd_DQ[11]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -min [get_ports \
 {{sd_DQ[11]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[11]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[11]}}]
set_input_delay  0.8 -clock [get_clocks {clksdram}] -max [get_ports \
 {{sd_DQ[10]}}]
set_input_delay  0.2 -clock [get_clocks {clksdram}] -min [get_ports \
 {{sd_DQ[10]}}]
set_input_delay  0.8 -clock [get_clocks {clksdram}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[10]}}]
set_input_delay  0.2 -clock [get_clocks {clksdram}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[10]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -max [get_ports \
 {{sd_DQ[10]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -min [get_ports \
 {{sd_DQ[10]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[10]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[10]}}]
set_input_delay  0.8 -clock [get_clocks {clksdram}] -max [get_ports \
 {{sd_DQ[9]}}]
set_input_delay  0.2 -clock [get_clocks {clksdram}] -min [get_ports \
 {{sd_DQ[9]}}]
set_input_delay  0.8 -clock [get_clocks {clksdram}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[9]}}]
set_input_delay  0.2 -clock [get_clocks {clksdram}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[9]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -max [get_ports \
 {{sd_DQ[9]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -min [get_ports \
 {{sd_DQ[9]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[9]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[9]}}]
set_input_delay  0.8 -clock [get_clocks {clksdram}] -max [get_ports \
 {{sd_DQ[8]}}]
set_input_delay  0.2 -clock [get_clocks {clksdram}] -min [get_ports \
 {{sd_DQ[8]}}]
set_input_delay  0.8 -clock [get_clocks {clksdram}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[8]}}]
set_input_delay  0.2 -clock [get_clocks {clksdram}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[8]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -max [get_ports \
 {{sd_DQ[8]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -min [get_ports \
 {{sd_DQ[8]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[8]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[8]}}]
set_input_delay  0.8 -clock [get_clocks {clksdram}] -max [get_ports \
 {{sd_DQ[7]}}]
set_input_delay  0.2 -clock [get_clocks {clksdram}] -min [get_ports \
 {{sd_DQ[7]}}]
set_input_delay  0.8 -clock [get_clocks {clksdram}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[7]}}]
set_input_delay  0.2 -clock [get_clocks {clksdram}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[7]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -max [get_ports \
 {{sd_DQ[7]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -min [get_ports \
 {{sd_DQ[7]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[7]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[7]}}]
set_input_delay  0.8 -clock [get_clocks {clksdram}] -max [get_ports \
 {{sd_DQ[6]}}]
set_input_delay  0.2 -clock [get_clocks {clksdram}] -min [get_ports \
 {{sd_DQ[6]}}]
set_input_delay  0.8 -clock [get_clocks {clksdram}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[6]}}]
set_input_delay  0.2 -clock [get_clocks {clksdram}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[6]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -max [get_ports \
 {{sd_DQ[6]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -min [get_ports \
 {{sd_DQ[6]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[6]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[6]}}]
set_input_delay  0.8 -clock [get_clocks {clksdram}] -max [get_ports \
 {{sd_DQ[5]}}]
set_input_delay  0.2 -clock [get_clocks {clksdram}] -min [get_ports \
 {{sd_DQ[5]}}]
set_input_delay  0.8 -clock [get_clocks {clksdram}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[5]}}]
set_input_delay  0.2 -clock [get_clocks {clksdram}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[5]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -max [get_ports \
 {{sd_DQ[5]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -min [get_ports \
 {{sd_DQ[5]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[5]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[5]}}]
set_input_delay  0.8 -clock [get_clocks {clksdram}] -max [get_ports \
 {{sd_DQ[4]}}]
set_input_delay  0.2 -clock [get_clocks {clksdram}] -min [get_ports \
 {{sd_DQ[4]}}]
set_input_delay  0.8 -clock [get_clocks {clksdram}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[4]}}]
set_input_delay  0.2 -clock [get_clocks {clksdram}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[4]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -max [get_ports \
 {{sd_DQ[4]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -min [get_ports \
 {{sd_DQ[4]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[4]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[4]}}]
set_input_delay  0.8 -clock [get_clocks {clksdram}] -max [get_ports \
 {{sd_DQ[3]}}]
set_input_delay  0.2 -clock [get_clocks {clksdram}] -min [get_ports \
 {{sd_DQ[3]}}]
set_input_delay  0.8 -clock [get_clocks {clksdram}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[3]}}]
set_input_delay  0.2 -clock [get_clocks {clksdram}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[3]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -max [get_ports \
 {{sd_DQ[3]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -min [get_ports \
 {{sd_DQ[3]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[3]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[3]}}]
set_input_delay  0.8 -clock [get_clocks {clksdram}] -max [get_ports \
 {{sd_DQ[2]}}]
set_input_delay  0.2 -clock [get_clocks {clksdram}] -min [get_ports \
 {{sd_DQ[2]}}]
set_input_delay  0.8 -clock [get_clocks {clksdram}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[2]}}]
set_input_delay  0.2 -clock [get_clocks {clksdram}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[2]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -max [get_ports \
 {{sd_DQ[2]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -min [get_ports \
 {{sd_DQ[2]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[2]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[2]}}]
set_input_delay  0.8 -clock [get_clocks {clksdram}] -max [get_ports \
 {{sd_DQ[1]}}]
set_input_delay  0.2 -clock [get_clocks {clksdram}] -min [get_ports \
 {{sd_DQ[1]}}]
set_input_delay  0.8 -clock [get_clocks {clksdram}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[1]}}]
set_input_delay  0.2 -clock [get_clocks {clksdram}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[1]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -max [get_ports \
 {{sd_DQ[1]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -min [get_ports \
 {{sd_DQ[1]}}]
set_output_delay  0.75 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[1]}}]
set_output_delay  -0.1 -clock [get_clocks {SD_DDR_CLK}] -clock_fall -min \
 -add_delay [get_ports {{sd_DQ[1]}}]
set_input_delay  0.8 -clock [get_clocks {clksdram}] -max [get_ports \
 {{sd_DQ[0]}}]
set_input_delay  0.2 -clock [get_clocks {clksdram}] -min [get_ports \
 {{sd_DQ[0]}}]
set_input_delay  0.8 -clock [get_clocks {clksdram}] -clock_fall -max \
 -add_delay [get_ports {{sd_DQ[0]}}]
set_input_delay  0.2 -clock [get_clocks {clksdram}] -clock_fall -min \
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
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_9/I0}]
set_clock_gating_check -fall -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_9/I0}]
set_clock_gating_check -rise -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_9/I0}]
set_clock_gating_check -fall -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_9/I0}]
set_clock_gating_check -low [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_9/I0}]
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
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_13/I0}]
set_clock_gating_check -fall -setup  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_13/I0}]
set_clock_gating_check -rise -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_13/I0}]
set_clock_gating_check -fall -hold  0 [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_13/I0}]
set_clock_gating_check -low [get_pins \
 {I_ORCA_TOP/I_SDRAM_IF/sd_mux_dq_out_13/I0}]
set_case_analysis 0 [get_ports {test_mode}]
set_case_analysis 0 [get_ports {scan_en}]
set_case_analysis 0 [get_ports {power_save}]
set_case_analysis 1 [get_ports {pm66en}]
set_case_analysis 1 [get_ports {prst_n}]
