################################################
## A-Z80
## Francisco Knebel, Luciano Zancan, Rodrigo Dal Ri
##
################################################


set_units -capacitance fF -time ns

create_clock -name clock -period 25.0 [get_ports CLK]

set_false_path -from [get_ports nRESET]

set_clock_transition -rise 0.5 [get_clocks clock]
set_clock_transition -fall 0.5 [get_clocks clock]

set_ideal_network [get_nets {CLK}]

set_input_transition -rise 0.5 [all_inputs]
set_input_transition -fall 0.5 [all_inputs]

set_load 8 [all_outputs]

