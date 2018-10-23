#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Tue Oct 23 17:35:55 2018                
#                                                     
#######################################################

#@(#)CDS: Innovus v15.20-p005_1 (64bit) 11/11/2015 11:16 (Linux 2.6.18-194.el5)
#@(#)CDS: NanoRoute 15.20-p005_1 NR151028-1715/15_20-UB (database version 2.30, 298.6.1) {superthreading v1.26}
#@(#)CDS: AAE 15.20-p002 (64bit) 11/11/2015 (Linux 2.6.18-194.el5)
#@(#)CDS: CTE 15.20-p001_1 () Oct 29 2015 01:50:39 ( )
#@(#)CDS: SYNTECH 15.20-b002_1 () Oct 20 2015 02:35:29 ( )
#@(#)CDS: CPE v15.20-p002
#@(#)CDS: IQRC/TQRC 15.1.2-s269 (64bit) Mon Aug 24 18:22:18 PDT 2015 (Linux 2.6.18-194.el5)

set_db init_power_nets VDD
set_db init_ground_nets GND
set_multi_cpu_usage -local_cpu 8
is_attribute flow_edit_wildcard_end_steps -obj_type root
is_attribute flow_edit_wildcard_start_steps -obj_type root
is_attribute flow_footer_tcl -obj_type root
set_db flow_footer_tcl {}
is_attribute flow_header_tcl -obj_type root
set_db flow_header_tcl {}
is_attribute flow_metadata -obj_type root
set_db flow_metadata {}
is_attribute flow_step_begin_tcl -obj_type root
set_db flow_step_begin_tcl {}
is_attribute flow_step_check_tcl -obj_type root
set_db flow_step_check_tcl {}
is_attribute flow_step_end_tcl -obj_type root
set_db flow_step_end_tcl {}
is_attribute flow_step_order -obj_type root
set_db flow_step_order {}
is_attribute flow_summary_tcl -obj_type root
set_db flow_summary_tcl {}
is_attribute flow_template_feature_definition -obj_type root
set_db flow_template_feature_definition {}
is_attribute flow_template_type -obj_type root
set_db flow_template_type {}
is_attribute flow_template_version -obj_type root
set_db flow_template_version {}
is_attribute flow_user_templates -obj_type root
set_db flow_user_templates {}
is_attribute flow_branch -obj_type root
set_db flow_branch {}
is_attribute flow_caller_data -obj_type root
set_db flow_caller_data {}
is_attribute flow_current -obj_type root
set_db flow_current {}
is_attribute flow_database_directory -obj_type root
set_db flow_database_directory flow.database
is_attribute flow_exit_when_done -obj_type root
set_db flow_exit_when_done false
is_attribute flow_history -obj_type root
set_db flow_history {}
is_attribute flow_log_directory -obj_type root
set_db flow_log_directory flow.log
is_attribute flow_mail_on_error -obj_type root
set_db flow_mail_on_error false
is_attribute flow_mail_to -obj_type root
set_db flow_mail_to {}
is_attribute flow_metrics_file -obj_type root
set_db flow_metrics_file {}
is_attribute flow_metrics_snapshot_parent_uuid -obj_type root
set_db flow_metrics_snapshot_parent_uuid {}
is_attribute flow_metrics_snapshot_uuid -obj_type root
set_db flow_metrics_snapshot_uuid 2bebcc87
is_attribute flow_overwrite_database -obj_type root
set_db flow_overwrite_database false
is_attribute flow_report_directory -obj_type root
set_db flow_report_directory flow.report
is_attribute flow_run_tag -obj_type root
set_db flow_run_tag {}
is_attribute flow_schedule -obj_type root
set_db flow_schedule {}
is_attribute flow_script -obj_type root
set_db flow_script {}
is_attribute flow_starting_db -obj_type root
set_db flow_starting_db {}
is_attribute flow_status_file -obj_type root
set_db flow_status_file {}
is_attribute flow_step_canonical_current -obj_type root
set_db flow_step_canonical_current {}
is_attribute flow_step_current -obj_type root
set_db flow_step_current {}
is_attribute flow_step_last -obj_type root
set_db flow_step_last {}
is_attribute flow_step_last_msg -obj_type root
set_db flow_step_last_msg {}
is_attribute flow_step_last_status -obj_type root
set_db flow_step_last_status not_run
is_attribute flow_step_next -obj_type root
set_db flow_step_next {}
is_attribute flow_working_directory -obj_type root
set_db flow_working_directory .
read_mmmc synthesis/a-z80.mmmc.tcl
read_physical -lef {/pdk/xfab/XC018_61_3.1.3/cadence/xc018/LEF/xc018_m6_FE/xc018m6_FE.lef /pdk/xfab/XC018_61_3.1.3/cadence/xc018/LEF/xc018_m6_FE/D_CELLS.lef /pdk/xfab/XC018_61_3.1.3/cadence/xc018/LEF/xc018_m6_FE/IO_CELLS_3V.lef}
read_netlist synthesis/a-z80.v
init_design
read_metric -id current synthesis/a-z80.metrics.json
set_db timing_apply_default_primary_input_assertion false
set_db timing_clock_phase_propagation both
set_db timing_analysis_async_checks no_async
set_db extract_rc_layer_independent 1
set_db place_global_reorder_scan false
set_db extract_rc_engine pre_route
read_io_file physical/iopads.io
create_floorplan -site core -core_density_size 1 0.8 3.0 3.0 3.0 3.0
gui_fit
add_rings -spacing 0.5 -width 0.5 -layer {top M1 bottom M1 left M2 right M2} -jog_distance 2.5 -offset 1.5 -nets {GND VDD} -threshold 2.5
route_special -connect {block_pin core_pin pad_pin pad_ring floating_stripe} -layer_change_range {MET1 METTP} -block_pin_target nearest_target -pad_pin_port_connect {all_port one_geom} -block_pin use_lef -allow_jogging 1 -crossover_via_layer_range {MET1 METTP} -allow_layer_change 1 -target_via_layer_range {MET1 METTP} -nets {GND VDD}
add_stripes -block_ring_top_layer_limit M3 -max_same_layer_jog_length 6 -pad_core_ring_bottom_layer_limit M1 -set_to_set_distance 25 -pad_core_ring_top_layer_limit M3 -spacing 4 -merge_stripes_value 2.5 -layer M2 -block_ring_bottom_layer_limit M1 -width 0.5 -nets {GND VDD}
time_design -pre_place
eval_legacy { setPlaceMode -congEffort high }
eval_legacy { setPlaceMode -ignoreScan false }
place_opt_design
time_design -pre_cts
edit_pin -side Top -layer 2 -spread_type center -spacing 25.0 -pin {{nM1} {nMREQ} {nIORQ} {nRD} {nWR} {nRFSH} {nHALT} {nBUSACK} {CLK}}
edit_pin -side Bottom -layer 2 -spread_type center -spacing 20.0 -pin {{nWAIT} {nINT} {nNMI} {nRESET} {nBUSRQ} {D[0]} {D[1]} {D[2]} {D[3]} {D[4]} {D[5]} {D[6]} {D[7]}}
edit_pin -side Right -layer 3 -spread_type center -spacing 25.0 -pin {{A[0]} {A[1]} {A[2]} {A[3]} {A[4]} {A[5]} {A[6]} {A[7]}}
edit_pin -side Left -layer 3 -spread_type center -spacing 25.0 -pin {{A[8]} {A[9]} {A[10]} {A[11]} {A[12]} {A[13]} {A[14]} {A[15]}}
opt_design -pre_cts
time_design -pre_cts -expanded_views
ccopt_design
opt_design -post_cts
time_design -post_cts -expanded_views
route_design -global_detail
eval_legacy { setAnalysisMode -analysisType onChipVariation -cppr both }
time_design -post_route
opt_design -post_route
