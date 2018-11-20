set env(headerfile) "SINTESE FISICA - 3_place.tcl"
source ~/z80/header.tcl

puts "
#############
### Posiciona as celulas...
#############
"
time_design -pre_place -report_dir logs/timing/0_pre_place -expanded_views
eval_legacy { setPlaceMode -congEffort high }
eval_legacy { setPlaceMode -ignoreScan false }

place_opt_design

opt_design -pre_cts
time_design -pre_cts -report_dir logs/timing/1_pre_cts -expanded_views

#CTS
eval_legacy { create_ccopt_clock_tree_spec -file physical/ccopt.spec }
eval_legacy { source physical/ccopt.spec }
ccopt_design

eval_legacy { report_ccopt_clock_trees -filename logs/clock_trees.rpt }

# pós-CTS
opt_design -post_cts
time_design -post_cts -report_dir logs/timing/2_post_cts -expanded_views

# Routing
## Using nano-route: https://slideplayer.com/slide/12205479/
eval_legacy { setNanoRouteMode -routeTopRoutingLayer 6 }
eval_legacy { setNanoRouteMode -routeBottomRoutingLayer 1 }
eval_legacy { setNanoRouteMode -routeWithSiDriven true }
eval_legacy { routeDesign -globalDetail -viaOpt -wireOpt } 
eval_legacy { setAnalysisMode -analysisType onChipVariation -cppr both }

# Post Routing Optimization
opt_design -post_route
time_design -post_route -report_dir logs/timing/4_post_opt_route -expanded_views

# fillers
add_fillers -base_cells DECAP10 DECAP10LP DECAP15 DECAP15LP DECAP25 DECAP25LP DECAP3 DECAP5 DECAP5LP DECAP7 DECAP7LP FEED1 FEED10 FEED15 FEED2 FEED25 FEED3 FEED5 FEED7 FEEDCAP10 FEEDCAP10LP FEEDCAP15 FEEDCAP15LP FEEDCAP2 FEEDCAP25 FEEDCAP25LP FEEDCAP3 FEEDCAP5 FEEDCAP5LP FEEDCAP7 FEEDCAP7LP -prefix FILLER -check_drc

add_metal_fill

# Verificações finais
check_connectivity
check_drc
check_process_antenna

# Extração de RC
extract_rc

# Geração dos arquivos
write_netlist logs/a-z80.v
write_sdf logs/a-z80.sdf
write_parasitics -set_load_file logs/a-z80.cap

report_summary -out_dir logs/summaryReport
report_timing
