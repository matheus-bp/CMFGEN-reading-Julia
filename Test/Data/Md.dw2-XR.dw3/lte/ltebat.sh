#!/bin/tcsh

#**********************************************************************
#   Define directories (CAPITAL LETTERS)
#**********************************************************************

# MODEL is model directory
# ATOMIC is atomic data directory

setenv cmfdist /home/Tux/mbperon/cmfgen/05may17/cur_cmf #

#setenv LTE_PROG $cmfdist/exe/main_lte.exe
setenv LTE_PROG $cmfdist/exe/main_lte.exe

#
# Assign atomic data files
#
../batch.sh ass

rm -f ltebat.log

echo "Program started on:" > 'ltebat.log'
date >> 'ltebat.log'
echo "Machine name is :" >> 'ltebat.log'
uname -n >> 'ltebat.log'
(exec nice $LTE_PROG  >>& 'ltebat.log')&
wait
#
echo "Program finished on:" >> 'ltebat.log'
date >> 'ltebat.log'
