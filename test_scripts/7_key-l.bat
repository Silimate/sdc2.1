@echo off
echo #
echo # run of sdc-parser to check one file
echo # with saving error messages to log-file
echo #
echo # command line: sdccheck.tcl -l logfile.log tests/dc_risc_core.sdc
echo #

call ../sdctest.bat -l logfile.log ../tests/dc_risc_core.sdc

echo #
echo # contents of log-file:
echo #

more < logfile.log

echo # end
