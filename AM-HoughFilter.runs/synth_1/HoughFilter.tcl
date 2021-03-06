# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7k480tffg901-2

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir /net/home/ppd/nlk16165/AM/AM-HoughFilter/AM-HoughFilter.cache/wt [current_project]
set_property parent.project_path /net/home/ppd/nlk16165/AM/AM-HoughFilter/AM-HoughFilter.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property vhdl_version vhdl_2k [current_fileset]
read_vhdl -library xil_defaultlib {
  /net/home/ppd/nlk16165/AM/AM-HoughFilter/AM-HoughFilter.srcs/sources_1/new/HoughFilter_pkg.vhd
  /net/home/ppd/nlk16165/AM/AM-HoughFilter/AM-HoughFilter.srcs/sources_1/new/HoughCell.vhd
  /net/home/ppd/nlk16165/AM/AM-HoughFilter/AM-HoughFilter.srcs/sources_1/new/HoughColumn.vhd
  /net/home/ppd/nlk16165/AM/AM-HoughFilter/AM-HoughFilter.srcs/sources_1/new/HoughFilter.vhd
}
read_xdc /net/home/ppd/nlk16165/AM/AM-HoughFilter/AM-HoughFilter.srcs/constrs_1/new/HoughFilter_constr.xdc
set_property used_in_implementation false [get_files /net/home/ppd/nlk16165/AM/AM-HoughFilter/AM-HoughFilter.srcs/constrs_1/new/HoughFilter_constr.xdc]

synth_design -top HoughFilter -part xc7k480tffg901-2 -flatten_hierarchy none
write_checkpoint -noxdef HoughFilter.dcp
catch { report_utilization -file HoughFilter_utilization_synth.rpt -pb HoughFilter_utilization_synth.pb }
