# 
# Synthesis run script generated by Vivado
# 

set_param gui.test TreeTableDev
debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

create_project -in_memory -part xc7z010clg400-1
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/steven/Desktop/65816_Interface_System/65816_Interface_System.cache/wt [current_project]
set_property parent.project_path /home/steven/Desktop/65816_Interface_System/65816_Interface_System.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part digilentinc.com:zybo:part0:1.0 [current_project]
set_property ip_repo_paths /home/steven/Desktop/65816_Interface_System/65816_Interface_System.ipdefs/Vivado_Custom_IP_Repo [current_project]
add_files /home/steven/Desktop/65816_Interface_System/65816_Interface_System.srcs/sources_1/bd/Interface_Master_BD/Interface_Master_BD.bd
set_property used_in_implementation false [get_files -all /home/steven/Desktop/65816_Interface_System/65816_Interface_System.srcs/sources_1/bd/Interface_Master_BD/ip/Interface_Master_BD_processing_system7_0_0/Interface_Master_BD_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/steven/Desktop/65816_Interface_System/65816_Interface_System.srcs/sources_1/bd/Interface_Master_BD/ip/Interface_Master_BD_clk_wiz_0_0/Interface_Master_BD_clk_wiz_0_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/steven/Desktop/65816_Interface_System/65816_Interface_System.srcs/sources_1/bd/Interface_Master_BD/ip/Interface_Master_BD_clk_wiz_0_0/Interface_Master_BD_clk_wiz_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/steven/Desktop/65816_Interface_System/65816_Interface_System.srcs/sources_1/bd/Interface_Master_BD/ip/Interface_Master_BD_clk_wiz_0_0/Interface_Master_BD_clk_wiz_0_0_late.xdc]
set_property used_in_implementation false [get_files -all /home/steven/Desktop/65816_Interface_System/65816_Interface_System.srcs/sources_1/bd/Interface_Master_BD/ip/Interface_Master_BD_clk_wiz_0_0/Interface_Master_BD_clk_wiz_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/steven/Desktop/65816_Interface_System/65816_Interface_System.srcs/sources_1/bd/Interface_Master_BD/ip/Interface_Master_BD_rst_processing_system7_0_71M_0/Interface_Master_BD_rst_processing_system7_0_71M_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/steven/Desktop/65816_Interface_System/65816_Interface_System.srcs/sources_1/bd/Interface_Master_BD/ip/Interface_Master_BD_rst_processing_system7_0_71M_0/Interface_Master_BD_rst_processing_system7_0_71M_0.xdc]
set_property used_in_implementation false [get_files -all /home/steven/Desktop/65816_Interface_System/65816_Interface_System.srcs/sources_1/bd/Interface_Master_BD/ip/Interface_Master_BD_rst_processing_system7_0_71M_0/Interface_Master_BD_rst_processing_system7_0_71M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/steven/Desktop/65816_Interface_System/65816_Interface_System.srcs/sources_1/bd/Interface_Master_BD/ip/Interface_Master_BD_xbar_0/Interface_Master_BD_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/steven/Desktop/65816_Interface_System/65816_Interface_System.srcs/sources_1/bd/Interface_Master_BD/ip/Interface_Master_BD_auto_pc_0/Interface_Master_BD_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/steven/Desktop/65816_Interface_System/65816_Interface_System.srcs/sources_1/bd/Interface_Master_BD/Interface_Master_BD_ooc.xdc]
set_property is_locked true [get_files /home/steven/Desktop/65816_Interface_System/65816_Interface_System.srcs/sources_1/bd/Interface_Master_BD/Interface_Master_BD.bd]

read_vhdl -library xil_defaultlib /home/steven/Desktop/65816_Interface_System/65816_Interface_System.srcs/sources_1/bd/Interface_Master_BD/hdl/Interface_Master_BD_wrapper.vhd
read_xdc /home/steven/Desktop/65816_Interface_System/65816_Interface_System.srcs/constrs_1/imports/65816_Interface_System/ZYBO_Master.xdc
set_property used_in_implementation false [get_files /home/steven/Desktop/65816_Interface_System/65816_Interface_System.srcs/constrs_1/imports/65816_Interface_System/ZYBO_Master.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
catch { write_hwdef -file Interface_Master_BD_wrapper.hwdef }
synth_design -top Interface_Master_BD_wrapper -part xc7z010clg400-1
write_checkpoint -noxdef Interface_Master_BD_wrapper.dcp
catch { report_utilization -file Interface_Master_BD_wrapper_utilization_synth.rpt -pb Interface_Master_BD_wrapper_utilization_synth.pb }