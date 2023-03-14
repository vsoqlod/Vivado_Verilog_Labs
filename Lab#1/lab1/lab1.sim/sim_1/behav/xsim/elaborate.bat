@echo off
REM ****************************************************************************
REM Vivado (TM) v2021.1 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Wed Sep 28 13:14:42 -0700 2022
REM SW Build 3247384 on Thu Jun 10 19:36:33 MDT 2021
REM
REM IP Build 3246043 on Fri Jun 11 00:30:35 MDT 2021
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
REM elaborate design
echo "xelab -wto a04dffb762bd42028ae52a325cf60209 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L xlslice_v1_0_2 -L xlconstant_v1_1_7 -L xlconcat_v2_1_4 -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot adder_2bit_tb_behav xil_defaultlib.adder_2bit_tb xil_defaultlib.glbl -log elaborate.log"
call xelab  -wto a04dffb762bd42028ae52a325cf60209 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L xlslice_v1_0_2 -L xlconstant_v1_1_7 -L xlconcat_v2_1_4 -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot adder_2bit_tb_behav xil_defaultlib.adder_2bit_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
