# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param xicom.use_bs_reader 1
set_msg_config -id {Common 17-41} -limit 10000000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir {E:/One Drive/OneDrive - whu.edu.cn/Learning/computerOrg/lab_related/Computer-Organization/coursecodes/day3/Single_CPU/Single_CPU.cache/wt} [current_project]
set_property parent.project_path {E:/One Drive/OneDrive - whu.edu.cn/Learning/computerOrg/lab_related/Computer-Organization/coursecodes/day3/Single_CPU/Single_CPU.xpr} [current_project]
set_property XPM_LIBRARIES XPM_MEMORY [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part digilentinc.com:nexys-a7-100t:part0:1.3 [current_project]
set_property ip_output_repo {e:/One Drive/OneDrive - whu.edu.cn/Learning/computerOrg/lab_related/Computer-Organization/coursecodes/day3/Single_CPU/Single_CPU.cache/ip} [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files {{E:/One Drive/OneDrive - whu.edu.cn/Learning/computerOrg/lab_related/Computer-Organization/coursecodes/day3/Single_CPU/2_I_mem.coe}}
add_files {{E:/One Drive/OneDrive - whu.edu.cn/Learning/computerOrg/lab_related/Computer-Organization/coursecodes/day3/Single_CPU/2_D_mem.coe}}
add_files {{E:/One Drive/OneDrive - whu.edu.cn/Learning/computerOrg/lab_related/Computer-Organization/coursecodes/day4/test/test.coe}}
add_files {{E:/One Drive/OneDrive - whu.edu.cn/Learning/computerOrg/lab_related/Computer-Organization/coursecodes/dayn/D_mem.coe}}
add_files {{E:/One Drive/OneDrive - whu.edu.cn/Learning/computerOrg/lab_related/Computer-Organization/coursecodes/dayn/I_mem.coe}}
read_verilog -library xil_defaultlib {
  {E:/One Drive/OneDrive - whu.edu.cn/Learning/computerOrg/lab_related/Computer-Organization/coursecodes/day3/Single_CPU/IO/IO/Counter_3_IO.v}
  {E:/One Drive/OneDrive - whu.edu.cn/Learning/computerOrg/lab_related/Computer-Organization/coursecodes/holidays/pl/ctrl_encode_def.v}
  {E:/One Drive/OneDrive - whu.edu.cn/Learning/computerOrg/lab_related/Computer-Organization/coursecodes/holidays/pl/EXT.v}
  {E:/One Drive/OneDrive - whu.edu.cn/Learning/computerOrg/lab_related/Computer-Organization/coursecodes/holidays/pl/EX_MEM.v}
  {E:/One Drive/OneDrive - whu.edu.cn/Learning/computerOrg/lab_related/Computer-Organization/coursecodes/day3/Single_CPU/IO/IO/Enter.v}
  {E:/One Drive/OneDrive - whu.edu.cn/Learning/computerOrg/lab_related/Computer-Organization/coursecodes/holidays/pl/ID_EX.v}
  {E:/One Drive/OneDrive - whu.edu.cn/Learning/computerOrg/lab_related/Computer-Organization/coursecodes/holidays/pl/IF_ID.v}
  {E:/One Drive/OneDrive - whu.edu.cn/Learning/computerOrg/lab_related/Computer-Organization/coursecodes/holidays/pl/MEM_WB.v}
  {E:/One Drive/OneDrive - whu.edu.cn/Learning/computerOrg/lab_related/Computer-Organization/coursecodes/dayn/edf_file/MIO_BUS.V}
  {E:/One Drive/OneDrive - whu.edu.cn/Learning/computerOrg/lab_related/Computer-Organization/coursecodes/dayn/edf_file/Multi_8CH32.v}
  {E:/One Drive/OneDrive - whu.edu.cn/Learning/computerOrg/lab_related/Computer-Organization/coursecodes/holidays/pl/NPC.v}
  {E:/One Drive/OneDrive - whu.edu.cn/Learning/computerOrg/lab_related/Computer-Organization/coursecodes/holidays/pl/PC.v}
  {E:/One Drive/OneDrive - whu.edu.cn/Learning/computerOrg/lab_related/Computer-Organization/coursecodes/holidays/pl/RF.v}
  {E:/One Drive/OneDrive - whu.edu.cn/Learning/computerOrg/lab_related/Computer-Organization/coursecodes/holidays/pl/SCPU.v}
  {E:/One Drive/OneDrive - whu.edu.cn/Learning/computerOrg/lab_related/Computer-Organization/coursecodes/day3/Single_CPU/edf_file/edf_file/SPIO.v}
  {E:/One Drive/OneDrive - whu.edu.cn/Learning/computerOrg/lab_related/Computer-Organization/coursecodes/dayn/edf_file/SSeg7.v}
  {E:/One Drive/OneDrive - whu.edu.cn/Learning/computerOrg/lab_related/Computer-Organization/coursecodes/holidays/pl/Stall.v}
  {E:/One Drive/OneDrive - whu.edu.cn/Learning/computerOrg/lab_related/Computer-Organization/coursecodes/holidays/pl/alu.v}
  {E:/One Drive/OneDrive - whu.edu.cn/Learning/computerOrg/lab_related/Computer-Organization/coursecodes/day5/clk_div.v}
  {E:/One Drive/OneDrive - whu.edu.cn/Learning/computerOrg/lab_related/Computer-Organization/coursecodes/holidays/pl/ctrl.v}
  {E:/One Drive/OneDrive - whu.edu.cn/Learning/computerOrg/lab_related/Computer-Organization/coursecodes/day4/dm_controller.v}
  {E:/One Drive/OneDrive - whu.edu.cn/Learning/computerOrg/lab_related/Computer-Organization/coursecodes/holidays/pl/forward_mod.v}
  {E:/One Drive/OneDrive - whu.edu.cn/Learning/computerOrg/lab_related/Computer-Organization/coursecodes/day3/Single_CPU/Single_CPU.srcs/sources_1/new/top_SCPU.v}
}
read_ip -quiet {{E:/One Drive/OneDrive - whu.edu.cn/Learning/computerOrg/lab_related/Computer-Organization/coursecodes/day3/Single_CPU/Single_CPU.srcs/sources_1/ip/ROM_D_1/ROM_D.xci}}
set_property used_in_implementation false [get_files -all {{e:/One Drive/OneDrive - whu.edu.cn/Learning/computerOrg/lab_related/Computer-Organization/coursecodes/day3/Single_CPU/Single_CPU.srcs/sources_1/ip/ROM_D_1/ROM_D_ooc.xdc}}]

read_ip -quiet {{E:/One Drive/OneDrive - whu.edu.cn/Learning/computerOrg/lab_related/Computer-Organization/coursecodes/day3/Single_CPU/Single_CPU.srcs/sources_1/ip/RAM_B/RAM_B.xci}}
set_property used_in_implementation false [get_files -all {{e:/One Drive/OneDrive - whu.edu.cn/Learning/computerOrg/lab_related/Computer-Organization/coursecodes/day3/Single_CPU/Single_CPU.srcs/sources_1/ip/RAM_B/RAM_B_ooc.xdc}}]

read_edif {{E:/One Drive/OneDrive - whu.edu.cn/Learning/computerOrg/lab_related/Computer-Organization/coursecodes/dayn/edf_file/SSeg7.edf}}
read_edif {{E:/One Drive/OneDrive - whu.edu.cn/Learning/computerOrg/lab_related/Computer-Organization/coursecodes/dayn/edf_file/Multi_8CH32.edf}}
read_edif {{E:/One Drive/OneDrive - whu.edu.cn/Learning/computerOrg/lab_related/Computer-Organization/coursecodes/dayn/edf_file/MIO_BUS.edf}}
read_edif {{E:/One Drive/OneDrive - whu.edu.cn/Learning/computerOrg/lab_related/Computer-Organization/coursecodes/day3/Single_CPU/edf_file/edf_file/SPIO.edf}}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc {{E:/One Drive/OneDrive - whu.edu.cn/Learning/computerOrg/lab_related/Computer-Organization/coursecodes/day3/Single_CPU/icf.xdc}}
set_property used_in_implementation false [get_files {{E:/One Drive/OneDrive - whu.edu.cn/Learning/computerOrg/lab_related/Computer-Organization/coursecodes/day3/Single_CPU/icf.xdc}}]

set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top top_SCPU -part xc7a100tcsg324-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef top_SCPU.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file top_SCPU_utilization_synth.rpt -pb top_SCPU_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
