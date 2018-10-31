# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {Common 17-41} -limit 10000000
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z010clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/Mustafa/Desktop/sd_card22/sd_card22.cache/wt [current_project]
set_property parent.project_path C:/Users/Mustafa/Desktop/sd_card22/sd_card22.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part digilentinc.com:zybo:part0:1.0 [current_project]
add_files C:/Users/Mustafa/Desktop/sd_card22/sd_card22.srcs/sources_1/bd/sd_card_design/sd_card_design.bd
set_property used_in_implementation false [get_files -all c:/Users/Mustafa/Desktop/sd_card22/sd_card22.srcs/sources_1/bd/sd_card_design/ip/sd_card_design_processing_system7_0_0/sd_card_design_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Mustafa/Desktop/sd_card22/sd_card22.srcs/sources_1/bd/sd_card_design/ip/sd_card_design_axi_gpio_0_0/sd_card_design_axi_gpio_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Mustafa/Desktop/sd_card22/sd_card22.srcs/sources_1/bd/sd_card_design/ip/sd_card_design_axi_gpio_0_0/sd_card_design_axi_gpio_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Mustafa/Desktop/sd_card22/sd_card22.srcs/sources_1/bd/sd_card_design/ip/sd_card_design_axi_gpio_0_0/sd_card_design_axi_gpio_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Mustafa/Desktop/sd_card22/sd_card22.srcs/sources_1/bd/sd_card_design/ip/sd_card_design_rst_processing_system7_0_100M_0/sd_card_design_rst_processing_system7_0_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Mustafa/Desktop/sd_card22/sd_card22.srcs/sources_1/bd/sd_card_design/ip/sd_card_design_rst_processing_system7_0_100M_0/sd_card_design_rst_processing_system7_0_100M_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Mustafa/Desktop/sd_card22/sd_card22.srcs/sources_1/bd/sd_card_design/ip/sd_card_design_rst_processing_system7_0_100M_0/sd_card_design_rst_processing_system7_0_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Mustafa/Desktop/sd_card22/sd_card22.srcs/sources_1/bd/sd_card_design/ip/sd_card_design_auto_pc_0/sd_card_design_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all C:/Users/Mustafa/Desktop/sd_card22/sd_card22.srcs/sources_1/bd/sd_card_design/sd_card_design_ooc.xdc]
set_property is_locked true [get_files C:/Users/Mustafa/Desktop/sd_card22/sd_card22.srcs/sources_1/bd/sd_card_design/sd_card_design.bd]

read_vhdl -library xil_defaultlib C:/Users/Mustafa/Desktop/sd_card22/sd_card22.srcs/sources_1/bd/sd_card_design/hdl/sd_card_design_wrapper.vhd
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top sd_card_design_wrapper -part xc7z010clg400-1


write_checkpoint -force -noxdef sd_card_design_wrapper.dcp

catch { report_utilization -file sd_card_design_wrapper_utilization_synth.rpt -pb sd_card_design_wrapper_utilization_synth.pb }