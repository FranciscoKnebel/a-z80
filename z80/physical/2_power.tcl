set env(headerfile) "SINTESE FISICA - 2_power.tcl"
source ~/z80/header.tcl

# Inicialização das power nets
delete_global_net_connections
connect_global_net VDD -type pg_pin -pin_base_name vdd! -inst_base_name *
connect_global_net GND -type pg_pin -pin_base_name gnd! -inst_base_name *
connect_global_net VDD -type pg_pin -pin_base_name VDD -inst_base_name PAD_VDD*
connect_global_net GND -type pg_pin -pin_base_name GNDO -inst_base_name PAD_GND*
connect_global_net VDD -type tie_hi -inst_base_name *
connect_global_net GND -type tie_lo -inst_base_name *

# Gerar power rings
puts "
#############
### adicionando power rings...
#############
"
add_rings -spacing 1 -width 0.5 -layer {top M1 bottom M1 left M2 right M2} -jog_distance 2.5 -offset 1.5 -nets {GND VDD} -threshold 2.5

# Adiciona os stripes de VDD e GND
puts "
#############
### adicionando stripes de VDD e GND...
#############
"
add_stripes -block_ring_top_layer_limit M3 -max_same_layer_jog_length 6 -pad_core_ring_bottom_layer_limit M1 -set_to_set_distance 25 -pad_core_ring_top_layer_limit M3 -spacing 4 -merge_stripes_value 2.5 -layer M5 -block_ring_bottom_layer_limit M1 -width 0.5 -nets {GND VDD}

# Roteia a alimentação do circuito
puts "
#############
### roteando a alimentacao do circuito...
#############
"
route_special -connect {block_pin core_pin pad_pin pad_ring floating_stripe} -layer_change_range {MET1 METTP} -block_pin_target {nearest_target} -pad_pin_port_connect {all_port one_geom} -block_pin {use_lef} -allow_jogging 1  -crossover_via_layer_range {MET1 METTP} -allow_layer_change 1 -target_via_layer_range {MET1 METTP} -nets {GND VDD}
