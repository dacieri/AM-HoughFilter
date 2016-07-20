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
echo "xvhdl -m64 --relax -prj Column_TB_vhdl.prj"
ExecStep $xv_path/bin/xvhdl -m64 --relax -prj Column_TB_vhdl.prj 2>&1 | tee -a compile.log
