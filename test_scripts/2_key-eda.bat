@echo off
echo #
echo # run of sdc-parser to check one file
echo # with enabling EDA callback procedure
echo #
echo # command line: sdccheck.tcl -eda eda_write_sdc.tcl tests/dc_risc_core.sdc
echo #

if exist eda_result.sdc del eda_result.sdc

call ../sdctest.bat -eda ../eda_write_sdc.tcl ../tests/dc_risc_core.sdc

echo #
echo # result of EDA-tool:
echo #

more < eda_result.sdc

echo # end
