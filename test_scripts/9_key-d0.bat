@echo off
echo #
echo # run of sdc-parser to check one file
echo # without showing any error messages
echo #
echo # command line: sdccheck.tcl -d0 tests/dc_risc_core.sdc
echo #


call ../sdctest.bat -d0 ../tests/dc_risc_core.sdc


echo # end
