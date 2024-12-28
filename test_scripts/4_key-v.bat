@echo off
echo #
echo # run of sdc-parser to check one file
echo # with another sdc version
echo #
echo # command line: sdccheck.tcl -v 1.2 tests/dc_risc_core.sdc
echo #

call ../sdctest.bat -v 1.2 ../tests/dc_risc_core.sdc

echo # end
