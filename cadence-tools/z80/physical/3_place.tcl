set env(headerfile) "SINTESE FISICA - 3_place.tcl"
source ~/z80/header.tcl

puts "
#############
### Posiciona as celulas...
#############
"
time_design -pre_place
eval_legacy { setPlaceMode -congEffort high }
eval_legacy { setPlaceMode -ignoreScan false }

place_opt_design
time_design -pre_cts

puts "
#############
### Espalhando pinos do circuito ao longo das bordas
#############
"
edit_pin -side Top -layer 2 -spread_type center -spacing 25.0 -pin {{nM1} {nMREQ} {nIORQ} {nRD} {nWR} {nRFSH} {nHALT} {nBUSACK} {CLK}}

edit_pin -side Bottom -layer 2 -spread_type center -spacing 20.0 -pin {{nWAIT} {nINT} {nNMI} {nRESET} {nBUSRQ} {D[0]} {D[1]} {D[2]} {D[3]} {D[4]} {D[5]} {D[6]} {D[7]}}

edit_pin -side Right -layer 3 -spread_type center -spacing 25.0 -pin {{A[0]} {A[1]} {A[2]} {A[3]} {A[4]} {A[5]} {A[6]} {A[7]}}

edit_pin -side Left -layer 3 -spread_type center -spacing 25.0 -pin {{A[8]} {A[9]} {A[10]} {A[11]} {A[12]} {A[13]} {A[14]} {A[15]}}

opt_design -pre_cts
time_design -pre_cts -expanded_views

# CTS
ccopt_design

# pós-CTS
opt_design -post_cts
time_design -post_cts -expanded_views

# Routing
route_design -global_detail
eval_legacy { setAnalysisMode -analysisType onChipVariation -cppr both }
time_design -post_route

# Post Routing Optimization
opt_design -post_route
time_design -post_route

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
write_netlist log/a-z80.v
write_sdf log/a-z80.sdf
write_parasitics -set_load_file log/a-z80.cap

report_summary
report_timing
