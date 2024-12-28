@echo off
echo #
echo # run of sdc-parser to check one file
echo # with enabling EDA callback procedure
echo # then run of sdc-parser to check results file
echo # and comparing two results
echo #
echo # STEP 1
echo # command line: sdccheck.tcl -eda eda_write_sdc.tcl tests/dc_risc_core.sdc
echo #

if exist eda_result.sdc del eda_result.sdc

call ../sdctest.bat -eda ../eda_write_sdc.tcl ../tests/dc_risc_core.sdc

echo #
echo # STEP 2
echo # renaming eda_result.sdc to eda_result1.sdc
echo # command line: sdccheck.tcl -eda eda_write_sdc.tcl eda_result1.sdc
echo #

if exist eda_result1.sdc del eda_result1.sdc
ren eda_result.sdc eda_result1.sdc

call  ../sdctest.bat -eda ../eda_write_sdc.tcl eda_result1.sdc

echo #
echo # result of comparing results:
echo #

fc eda_result1.sdc eda_result.sdc

echo # end
