#!/bin/bash -f
xv_path="/data/Xilinx/Vivado/2015.4"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xelab -wto 44d57e804d9047749d53460dcdd5e5c1 -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot Filter_TB_behav xil_defaultlib.Filter_TB -log elaborate.log
