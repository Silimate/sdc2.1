@echo off
echo #
echo # run of sdc-parser to check one file
echo # with showing extended error messages
echo #
echo # command line: sdccheck.tcl -d2 tests/dc_risc_core.sdc
echo #


call ../sdctest.bat -d2 ../tests/dc_risc_core.sdc


echo # end
