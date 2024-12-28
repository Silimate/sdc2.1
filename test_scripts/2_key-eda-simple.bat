@echo off
echo #
echo # run of sdc-parser to check one file
echo # with enabling EDA callback procedure
echo #
echo # command line: sdccheck.tcl -eda eda_sample.tcl tests/dc_risc_core.sdc
echo #

if exist eda_result.sdc del eda_result.sdc

cd ..
call eda_sample.bat tests/dc_risc_core.sdc |more
cd test_scripts

echo # end
