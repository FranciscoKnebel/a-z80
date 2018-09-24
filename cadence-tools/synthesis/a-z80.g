######################################################################

# Created by Genus(TM) Synthesis Solution GENUS15.22 - 15.20-s024_1 on Mon Sep 24 13:50:01 -0300 2018

# This file contains the RC script for design:z80_top_direct_n

######################################################################

set_db / .information_level 0
set_db / .design_mode_process 230.0
set_db / .phys_assume_met_fill 0.0
set_db / .runtime_by_stage { {to_generic 3 35 2 23}  {first_condense 49 88 60 87}  {reify 14 102 43 131}  {global_incr_map 2 104 2 134} }
set_db / .tinfo_tstamp_file .rs_rodrigo.ri.tstamp
set_db / .script_search_path ./
set_db / .use_area_from_lef true
set_db / .flow_metrics_snapshot_uuid 2bfd7391
set_db / .super_thread_servers {localhost localhost localhost localhost localhost localhost localhost localhost   }
::legacy::set_attribute -quiet phys_use_segment_parasitics true /
::legacy::set_attribute -quiet probabilistic_extraction true /
::legacy::set_attribute -quiet ple_correlation_factors {1.9000 2.0000} /
::legacy::set_attribute -quiet maximum_interval_of_vias infinity /
::legacy::set_attribute -quiet ple_mode global /
::legacy::set_attribute -quiet wireload_selection wireload_selection:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/4_metls_routing /
::legacy::set_attribute -quiet tree_type balanced_tree operating_condition:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/typ_1_98V_0C
::legacy::set_attribute -quiet tree_type balanced_tree operating_condition:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/typ_1_98V_25C
::legacy::set_attribute -quiet tree_type balanced_tree operating_condition:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/typ_1_62V_70C
::legacy::set_attribute -quiet tree_type balanced_tree operating_condition:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/typ_1_62V_25C
::legacy::set_attribute -quiet tree_type balanced_tree operating_condition:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/typ_1_80V_70C
::legacy::set_attribute -quiet tree_type balanced_tree operating_condition:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/typ_1_80V_0C
::legacy::set_attribute -quiet tree_type balanced_tree operating_condition:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/TYPICAL
::legacy::set_attribute -quiet tree_type balanced_tree operating_condition:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/typ_1_80V_25C
::legacy::set_attribute -quiet tree_type balanced_tree operating_condition:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/_nominal_
::legacy::set_attribute -quiet tree_type balanced_tree operating_condition:default_emulate_libset_max/IO_CELLS_3V_MOS3ST_typ_1_80V_3_30V_25C/typ_1_80V_3_30V_25C
::legacy::set_attribute -quiet tree_type balanced_tree operating_condition:default_emulate_libset_max/IO_CELLS_3V_MOS3ST_typ_1_80V_3_30V_25C/_nominal_
# BEGIN MSV SECTION
# END MSV SECTION
define_clock -name clock -domain domain_1 -period 25000.0 -divide_period 1 -rise 0 -divide_rise 1 -fall 1 -divide_fall 2 -design design:z80_top_direct_n port:z80_top_direct_n/CLK
::legacy::set_attribute -quiet slew {500.0 500.0 500.0 500.0} clock:z80_top_direct_n/clock
::legacy::set_attribute -quiet waveform { } clock:z80_top_direct_n/clock
define_cost_group -design design:z80_top_direct_n -name clock
external_delay -accumulate -input {0.0 no_value 0.0 no_value} -clock clock:z80_top_direct_n/clock -name create_clock_delay_domain_1_clock_R_0 port:z80_top_direct_n/CLK
::legacy::set_attribute -quiet clock_network_latency_included true external_delay:z80_top_direct_n/create_clock_delay_domain_1_clock_R_0
external_delay -accumulate -input {no_value 0.0 no_value 0.0} -clock clock:z80_top_direct_n/clock -edge_fall -name create_clock_delay_domain_1_clock_F_0 port:z80_top_direct_n/CLK
::legacy::set_attribute -quiet clock_network_latency_included true external_delay:z80_top_direct_n/create_clock_delay_domain_1_clock_F_0
path_group -paths [specify_paths -to clock:z80_top_direct_n/clock]  -name clock -group cost_group:z80_top_direct_n/clock -user_priority -1047552
path_disable -paths [specify_paths -lenient -from port:z80_top_direct_n/nRESET]  -name timing.sdc_line_12 -user_priority -901120
::legacy::set_attribute -quiet sdc_filename_linenumber {{./constraint/timing.sdc 12}} exception:z80_top_direct_n/timing.sdc_line_12
# BEGIN DFT SECTION
::legacy::set_attribute -quiet dft_scan_style muxed_scan /
::legacy::set_attribute -quiet dft_scanbit_waveform_analysis false /
# END DFT SECTION
::legacy::set_attribute -quiet qos_by_stage {{to_generic {wns -11111111} {tns -111111111} {vep -111111111} {area 125308} {cell_count 5926} {utilization  0.00} {runtime 3 35 2 23} }{first_condense {wns -11111111} {tns -111111111} {vep -111111111} {area 83167} {cell_count 4368} {utilization  0.00} {runtime 49 88 60 87} }{reify {wns 17} {tns 0} {vep 0} {area 65659} {cell_count 2909} {utilization  0.00} {runtime 14 102 43 131} }{global_incr_map {wns 10} {tns 0} {vep 0} {area 64823} {cell_count 2897} {utilization  0.00} {runtime 2 104 2 134} }} design:z80_top_direct_n
::legacy::set_attribute -quiet hdl_user_name z80_top_direct_n design:z80_top_direct_n
::legacy::set_attribute -quiet hdl_filelist {{default -v2001 {SYNTHESIS} {rtl/z80_top_direct_n.v rtl/address_latch.v rtl/address_mux.v rtl/address_pins.v rtl/alu_bit_select.v rtl/alu_control.v rtl/alu_core.v rtl/alu_flags.v rtl/alu_mux_2.v rtl/alu_mux_2z.v rtl/alu_mux_3z.v rtl/alu_mux_4.v rtl/alu_mux_8.v rtl/alu_prep_daa.v rtl/alu_select.v rtl/alu_shifter_core.v rtl/alu_slice.v rtl/alu.v rtl/bus_control.v rtl/bus_switch.v rtl/clk_delay.v rtl/control_pins_n.v rtl/data_pins.v rtl/data_switch_mask.v rtl/data_switch.v rtl/decode_state.v rtl/execute.v rtl/inc_dec_2bit.v rtl/inc_dec.v rtl/interrupts.v rtl/ir.v rtl/memory_ifc.v rtl/pin_control.v rtl/pla_decode.v rtl/reg_control.v rtl/reg_file.v rtl/reg_latch.v rtl/resets.v rtl/sequencer.v} {./rtl}}} design:z80_top_direct_n
::legacy::set_attribute -quiet verification_directory fv/z80_top_direct_n design:z80_top_direct_n
::legacy::set_attribute -quiet seq_reason_deleted {{fpga_reset_reg {{constant 0}}} {memory_ifc__wait_iorqinta_reg {{constant 0}}} {memory_ifc__DFFE_intr_ff3_reg {{constant 0}}}} design:z80_top_direct_n
::legacy::set_attribute -quiet arch_filename ./rtl/z80_top_direct_n.v design:z80_top_direct_n
::legacy::set_attribute -quiet entity_filename ./rtl/z80_top_direct_n.v design:z80_top_direct_n
::legacy::set_attribute -quiet input_slew_max_rise 500.0 port:z80_top_direct_n/nWAIT
::legacy::set_attribute -quiet input_slew_max_fall 500.0 port:z80_top_direct_n/nWAIT
::legacy::set_attribute -quiet input_slew_min_rise 500.0 port:z80_top_direct_n/nWAIT
::legacy::set_attribute -quiet input_slew_min_fall 500.0 port:z80_top_direct_n/nWAIT
::legacy::set_attribute -quiet fixed_slew {500.0 500.0 500.0 500.0} port:z80_top_direct_n/nWAIT
::legacy::set_attribute -quiet input_slew_max_rise 500.0 port:z80_top_direct_n/nINT
::legacy::set_attribute -quiet input_slew_max_fall 500.0 port:z80_top_direct_n/nINT
::legacy::set_attribute -quiet input_slew_min_rise 500.0 port:z80_top_direct_n/nINT
::legacy::set_attribute -quiet input_slew_min_fall 500.0 port:z80_top_direct_n/nINT
::legacy::set_attribute -quiet fixed_slew {500.0 500.0 500.0 500.0} port:z80_top_direct_n/nINT
::legacy::set_attribute -quiet input_slew_max_rise 500.0 port:z80_top_direct_n/nNMI
::legacy::set_attribute -quiet input_slew_max_fall 500.0 port:z80_top_direct_n/nNMI
::legacy::set_attribute -quiet input_slew_min_rise 500.0 port:z80_top_direct_n/nNMI
::legacy::set_attribute -quiet input_slew_min_fall 500.0 port:z80_top_direct_n/nNMI
::legacy::set_attribute -quiet fixed_slew {500.0 500.0 500.0 500.0} port:z80_top_direct_n/nNMI
::legacy::set_attribute -quiet input_slew_max_rise 500.0 port:z80_top_direct_n/nRESET
::legacy::set_attribute -quiet input_slew_max_fall 500.0 port:z80_top_direct_n/nRESET
::legacy::set_attribute -quiet input_slew_min_rise 500.0 port:z80_top_direct_n/nRESET
::legacy::set_attribute -quiet input_slew_min_fall 500.0 port:z80_top_direct_n/nRESET
::legacy::set_attribute -quiet fixed_slew {500.0 500.0 500.0 500.0} port:z80_top_direct_n/nRESET
::legacy::set_attribute -quiet input_slew_max_rise 500.0 port:z80_top_direct_n/nBUSRQ
::legacy::set_attribute -quiet input_slew_max_fall 500.0 port:z80_top_direct_n/nBUSRQ
::legacy::set_attribute -quiet input_slew_min_rise 500.0 port:z80_top_direct_n/nBUSRQ
::legacy::set_attribute -quiet input_slew_min_fall 500.0 port:z80_top_direct_n/nBUSRQ
::legacy::set_attribute -quiet fixed_slew {500.0 500.0 500.0 500.0} port:z80_top_direct_n/nBUSRQ
::legacy::set_attribute -quiet is_ideal_network true port:z80_top_direct_n/CLK
::legacy::set_attribute -quiet input_slew_max_rise 500.0 port:z80_top_direct_n/CLK
::legacy::set_attribute -quiet input_slew_max_fall 500.0 port:z80_top_direct_n/CLK
::legacy::set_attribute -quiet input_slew_min_rise 500.0 port:z80_top_direct_n/CLK
::legacy::set_attribute -quiet input_slew_min_fall 500.0 port:z80_top_direct_n/CLK
::legacy::set_attribute -quiet ideal_network true port:z80_top_direct_n/CLK
::legacy::set_attribute -quiet fixed_slew {500.0 500.0 500.0 500.0} port:z80_top_direct_n/CLK
::legacy::set_attribute -quiet external_pin_cap_min 8.0 {port:z80_top_direct_n/D[7]}
::legacy::set_attribute -quiet external_capacitance_max {8.0 8.0} {port:z80_top_direct_n/D[7]}
::legacy::set_attribute -quiet external_capacitance_min 8.0 {port:z80_top_direct_n/D[7]}
::legacy::set_attribute -quiet input_slew_max_rise 500.0 {port:z80_top_direct_n/D[7]}
::legacy::set_attribute -quiet input_slew_max_fall 500.0 {port:z80_top_direct_n/D[7]}
::legacy::set_attribute -quiet input_slew_min_rise 500.0 {port:z80_top_direct_n/D[7]}
::legacy::set_attribute -quiet input_slew_min_fall 500.0 {port:z80_top_direct_n/D[7]}
::legacy::set_attribute -quiet fixed_slew {500.0 500.0 500.0 500.0} {port:z80_top_direct_n/D[7]}
::legacy::set_attribute -quiet external_pin_cap {8.0 8.0} {port:z80_top_direct_n/D[7]}
::legacy::set_attribute -quiet external_pin_cap_min 8.0 {port:z80_top_direct_n/D[6]}
::legacy::set_attribute -quiet external_capacitance_max {8.0 8.0} {port:z80_top_direct_n/D[6]}
::legacy::set_attribute -quiet external_capacitance_min 8.0 {port:z80_top_direct_n/D[6]}
::legacy::set_attribute -quiet input_slew_max_rise 500.0 {port:z80_top_direct_n/D[6]}
::legacy::set_attribute -quiet input_slew_max_fall 500.0 {port:z80_top_direct_n/D[6]}
::legacy::set_attribute -quiet input_slew_min_rise 500.0 {port:z80_top_direct_n/D[6]}
::legacy::set_attribute -quiet input_slew_min_fall 500.0 {port:z80_top_direct_n/D[6]}
::legacy::set_attribute -quiet fixed_slew {500.0 500.0 500.0 500.0} {port:z80_top_direct_n/D[6]}
::legacy::set_attribute -quiet external_pin_cap {8.0 8.0} {port:z80_top_direct_n/D[6]}
::legacy::set_attribute -quiet external_pin_cap_min 8.0 {port:z80_top_direct_n/D[5]}
::legacy::set_attribute -quiet external_capacitance_max {8.0 8.0} {port:z80_top_direct_n/D[5]}
::legacy::set_attribute -quiet external_capacitance_min 8.0 {port:z80_top_direct_n/D[5]}
::legacy::set_attribute -quiet input_slew_max_rise 500.0 {port:z80_top_direct_n/D[5]}
::legacy::set_attribute -quiet input_slew_max_fall 500.0 {port:z80_top_direct_n/D[5]}
::legacy::set_attribute -quiet input_slew_min_rise 500.0 {port:z80_top_direct_n/D[5]}
::legacy::set_attribute -quiet input_slew_min_fall 500.0 {port:z80_top_direct_n/D[5]}
::legacy::set_attribute -quiet fixed_slew {500.0 500.0 500.0 500.0} {port:z80_top_direct_n/D[5]}
::legacy::set_attribute -quiet external_pin_cap {8.0 8.0} {port:z80_top_direct_n/D[5]}
::legacy::set_attribute -quiet external_pin_cap_min 8.0 {port:z80_top_direct_n/D[4]}
::legacy::set_attribute -quiet external_capacitance_max {8.0 8.0} {port:z80_top_direct_n/D[4]}
::legacy::set_attribute -quiet external_capacitance_min 8.0 {port:z80_top_direct_n/D[4]}
::legacy::set_attribute -quiet input_slew_max_rise 500.0 {port:z80_top_direct_n/D[4]}
::legacy::set_attribute -quiet input_slew_max_fall 500.0 {port:z80_top_direct_n/D[4]}
::legacy::set_attribute -quiet input_slew_min_rise 500.0 {port:z80_top_direct_n/D[4]}
::legacy::set_attribute -quiet input_slew_min_fall 500.0 {port:z80_top_direct_n/D[4]}
::legacy::set_attribute -quiet fixed_slew {500.0 500.0 500.0 500.0} {port:z80_top_direct_n/D[4]}
::legacy::set_attribute -quiet external_pin_cap {8.0 8.0} {port:z80_top_direct_n/D[4]}
::legacy::set_attribute -quiet external_pin_cap_min 8.0 {port:z80_top_direct_n/D[3]}
::legacy::set_attribute -quiet external_capacitance_max {8.0 8.0} {port:z80_top_direct_n/D[3]}
::legacy::set_attribute -quiet external_capacitance_min 8.0 {port:z80_top_direct_n/D[3]}
::legacy::set_attribute -quiet input_slew_max_rise 500.0 {port:z80_top_direct_n/D[3]}
::legacy::set_attribute -quiet input_slew_max_fall 500.0 {port:z80_top_direct_n/D[3]}
::legacy::set_attribute -quiet input_slew_min_rise 500.0 {port:z80_top_direct_n/D[3]}
::legacy::set_attribute -quiet input_slew_min_fall 500.0 {port:z80_top_direct_n/D[3]}
::legacy::set_attribute -quiet fixed_slew {500.0 500.0 500.0 500.0} {port:z80_top_direct_n/D[3]}
::legacy::set_attribute -quiet external_pin_cap {8.0 8.0} {port:z80_top_direct_n/D[3]}
::legacy::set_attribute -quiet external_pin_cap_min 8.0 {port:z80_top_direct_n/D[2]}
::legacy::set_attribute -quiet external_capacitance_max {8.0 8.0} {port:z80_top_direct_n/D[2]}
::legacy::set_attribute -quiet external_capacitance_min 8.0 {port:z80_top_direct_n/D[2]}
::legacy::set_attribute -quiet input_slew_max_rise 500.0 {port:z80_top_direct_n/D[2]}
::legacy::set_attribute -quiet input_slew_max_fall 500.0 {port:z80_top_direct_n/D[2]}
::legacy::set_attribute -quiet input_slew_min_rise 500.0 {port:z80_top_direct_n/D[2]}
::legacy::set_attribute -quiet input_slew_min_fall 500.0 {port:z80_top_direct_n/D[2]}
::legacy::set_attribute -quiet fixed_slew {500.0 500.0 500.0 500.0} {port:z80_top_direct_n/D[2]}
::legacy::set_attribute -quiet external_pin_cap {8.0 8.0} {port:z80_top_direct_n/D[2]}
::legacy::set_attribute -quiet external_pin_cap_min 8.0 {port:z80_top_direct_n/D[1]}
::legacy::set_attribute -quiet external_capacitance_max {8.0 8.0} {port:z80_top_direct_n/D[1]}
::legacy::set_attribute -quiet external_capacitance_min 8.0 {port:z80_top_direct_n/D[1]}
::legacy::set_attribute -quiet input_slew_max_rise 500.0 {port:z80_top_direct_n/D[1]}
::legacy::set_attribute -quiet input_slew_max_fall 500.0 {port:z80_top_direct_n/D[1]}
::legacy::set_attribute -quiet input_slew_min_rise 500.0 {port:z80_top_direct_n/D[1]}
::legacy::set_attribute -quiet input_slew_min_fall 500.0 {port:z80_top_direct_n/D[1]}
::legacy::set_attribute -quiet fixed_slew {500.0 500.0 500.0 500.0} {port:z80_top_direct_n/D[1]}
::legacy::set_attribute -quiet external_pin_cap {8.0 8.0} {port:z80_top_direct_n/D[1]}
::legacy::set_attribute -quiet external_pin_cap_min 8.0 {port:z80_top_direct_n/D[0]}
::legacy::set_attribute -quiet external_capacitance_max {8.0 8.0} {port:z80_top_direct_n/D[0]}
::legacy::set_attribute -quiet external_capacitance_min 8.0 {port:z80_top_direct_n/D[0]}
::legacy::set_attribute -quiet input_slew_max_rise 500.0 {port:z80_top_direct_n/D[0]}
::legacy::set_attribute -quiet input_slew_max_fall 500.0 {port:z80_top_direct_n/D[0]}
::legacy::set_attribute -quiet input_slew_min_rise 500.0 {port:z80_top_direct_n/D[0]}
::legacy::set_attribute -quiet input_slew_min_fall 500.0 {port:z80_top_direct_n/D[0]}
::legacy::set_attribute -quiet fixed_slew {500.0 500.0 500.0 500.0} {port:z80_top_direct_n/D[0]}
::legacy::set_attribute -quiet external_pin_cap {8.0 8.0} {port:z80_top_direct_n/D[0]}
::legacy::set_attribute -quiet external_pin_cap_min 8.0 port:z80_top_direct_n/nM1
::legacy::set_attribute -quiet external_capacitance_max {8.0 8.0} port:z80_top_direct_n/nM1
::legacy::set_attribute -quiet external_capacitance_min 8.0 port:z80_top_direct_n/nM1
::legacy::set_attribute -quiet external_pin_cap {8.0 8.0} port:z80_top_direct_n/nM1
::legacy::set_attribute -quiet external_pin_cap_min 8.0 port:z80_top_direct_n/nMREQ
::legacy::set_attribute -quiet external_capacitance_max {8.0 8.0} port:z80_top_direct_n/nMREQ
::legacy::set_attribute -quiet external_capacitance_min 8.0 port:z80_top_direct_n/nMREQ
::legacy::set_attribute -quiet external_pin_cap {8.0 8.0} port:z80_top_direct_n/nMREQ
::legacy::set_attribute -quiet external_pin_cap_min 8.0 port:z80_top_direct_n/nIORQ
::legacy::set_attribute -quiet external_capacitance_max {8.0 8.0} port:z80_top_direct_n/nIORQ
::legacy::set_attribute -quiet external_capacitance_min 8.0 port:z80_top_direct_n/nIORQ
::legacy::set_attribute -quiet external_pin_cap {8.0 8.0} port:z80_top_direct_n/nIORQ
::legacy::set_attribute -quiet external_pin_cap_min 8.0 port:z80_top_direct_n/nRD
::legacy::set_attribute -quiet external_capacitance_max {8.0 8.0} port:z80_top_direct_n/nRD
::legacy::set_attribute -quiet external_capacitance_min 8.0 port:z80_top_direct_n/nRD
::legacy::set_attribute -quiet external_pin_cap {8.0 8.0} port:z80_top_direct_n/nRD
::legacy::set_attribute -quiet external_pin_cap_min 8.0 port:z80_top_direct_n/nWR
::legacy::set_attribute -quiet external_capacitance_max {8.0 8.0} port:z80_top_direct_n/nWR
::legacy::set_attribute -quiet external_capacitance_min 8.0 port:z80_top_direct_n/nWR
::legacy::set_attribute -quiet external_pin_cap {8.0 8.0} port:z80_top_direct_n/nWR
::legacy::set_attribute -quiet external_pin_cap_min 8.0 port:z80_top_direct_n/nRFSH
::legacy::set_attribute -quiet external_capacitance_max {8.0 8.0} port:z80_top_direct_n/nRFSH
::legacy::set_attribute -quiet external_capacitance_min 8.0 port:z80_top_direct_n/nRFSH
::legacy::set_attribute -quiet external_pin_cap {8.0 8.0} port:z80_top_direct_n/nRFSH
::legacy::set_attribute -quiet external_pin_cap_min 8.0 port:z80_top_direct_n/nHALT
::legacy::set_attribute -quiet external_capacitance_max {8.0 8.0} port:z80_top_direct_n/nHALT
::legacy::set_attribute -quiet external_capacitance_min 8.0 port:z80_top_direct_n/nHALT
::legacy::set_attribute -quiet external_pin_cap {8.0 8.0} port:z80_top_direct_n/nHALT
::legacy::set_attribute -quiet external_pin_cap_min 8.0 port:z80_top_direct_n/nBUSACK
::legacy::set_attribute -quiet external_capacitance_max {8.0 8.0} port:z80_top_direct_n/nBUSACK
::legacy::set_attribute -quiet external_capacitance_min 8.0 port:z80_top_direct_n/nBUSACK
::legacy::set_attribute -quiet external_pin_cap {8.0 8.0} port:z80_top_direct_n/nBUSACK
::legacy::set_attribute -quiet external_pin_cap_min 8.0 {port:z80_top_direct_n/A[15]}
::legacy::set_attribute -quiet external_capacitance_max {8.0 8.0} {port:z80_top_direct_n/A[15]}
::legacy::set_attribute -quiet external_capacitance_min 8.0 {port:z80_top_direct_n/A[15]}
::legacy::set_attribute -quiet external_pin_cap {8.0 8.0} {port:z80_top_direct_n/A[15]}
::legacy::set_attribute -quiet external_pin_cap_min 8.0 {port:z80_top_direct_n/A[14]}
::legacy::set_attribute -quiet external_capacitance_max {8.0 8.0} {port:z80_top_direct_n/A[14]}
::legacy::set_attribute -quiet external_capacitance_min 8.0 {port:z80_top_direct_n/A[14]}
::legacy::set_attribute -quiet external_pin_cap {8.0 8.0} {port:z80_top_direct_n/A[14]}
::legacy::set_attribute -quiet external_pin_cap_min 8.0 {port:z80_top_direct_n/A[13]}
::legacy::set_attribute -quiet external_capacitance_max {8.0 8.0} {port:z80_top_direct_n/A[13]}
::legacy::set_attribute -quiet external_capacitance_min 8.0 {port:z80_top_direct_n/A[13]}
::legacy::set_attribute -quiet external_pin_cap {8.0 8.0} {port:z80_top_direct_n/A[13]}
::legacy::set_attribute -quiet external_pin_cap_min 8.0 {port:z80_top_direct_n/A[12]}
::legacy::set_attribute -quiet external_capacitance_max {8.0 8.0} {port:z80_top_direct_n/A[12]}
::legacy::set_attribute -quiet external_capacitance_min 8.0 {port:z80_top_direct_n/A[12]}
::legacy::set_attribute -quiet external_pin_cap {8.0 8.0} {port:z80_top_direct_n/A[12]}
::legacy::set_attribute -quiet external_pin_cap_min 8.0 {port:z80_top_direct_n/A[11]}
::legacy::set_attribute -quiet external_capacitance_max {8.0 8.0} {port:z80_top_direct_n/A[11]}
::legacy::set_attribute -quiet external_capacitance_min 8.0 {port:z80_top_direct_n/A[11]}
::legacy::set_attribute -quiet external_pin_cap {8.0 8.0} {port:z80_top_direct_n/A[11]}
::legacy::set_attribute -quiet external_pin_cap_min 8.0 {port:z80_top_direct_n/A[10]}
::legacy::set_attribute -quiet external_capacitance_max {8.0 8.0} {port:z80_top_direct_n/A[10]}
::legacy::set_attribute -quiet external_capacitance_min 8.0 {port:z80_top_direct_n/A[10]}
::legacy::set_attribute -quiet external_pin_cap {8.0 8.0} {port:z80_top_direct_n/A[10]}
::legacy::set_attribute -quiet external_pin_cap_min 8.0 {port:z80_top_direct_n/A[9]}
::legacy::set_attribute -quiet external_capacitance_max {8.0 8.0} {port:z80_top_direct_n/A[9]}
::legacy::set_attribute -quiet external_capacitance_min 8.0 {port:z80_top_direct_n/A[9]}
::legacy::set_attribute -quiet external_pin_cap {8.0 8.0} {port:z80_top_direct_n/A[9]}
::legacy::set_attribute -quiet external_pin_cap_min 8.0 {port:z80_top_direct_n/A[8]}
::legacy::set_attribute -quiet external_capacitance_max {8.0 8.0} {port:z80_top_direct_n/A[8]}
::legacy::set_attribute -quiet external_capacitance_min 8.0 {port:z80_top_direct_n/A[8]}
::legacy::set_attribute -quiet external_pin_cap {8.0 8.0} {port:z80_top_direct_n/A[8]}
::legacy::set_attribute -quiet external_pin_cap_min 8.0 {port:z80_top_direct_n/A[7]}
::legacy::set_attribute -quiet external_capacitance_max {8.0 8.0} {port:z80_top_direct_n/A[7]}
::legacy::set_attribute -quiet external_capacitance_min 8.0 {port:z80_top_direct_n/A[7]}
::legacy::set_attribute -quiet external_pin_cap {8.0 8.0} {port:z80_top_direct_n/A[7]}
::legacy::set_attribute -quiet external_pin_cap_min 8.0 {port:z80_top_direct_n/A[6]}
::legacy::set_attribute -quiet external_capacitance_max {8.0 8.0} {port:z80_top_direct_n/A[6]}
::legacy::set_attribute -quiet external_capacitance_min 8.0 {port:z80_top_direct_n/A[6]}
::legacy::set_attribute -quiet external_pin_cap {8.0 8.0} {port:z80_top_direct_n/A[6]}
::legacy::set_attribute -quiet external_pin_cap_min 8.0 {port:z80_top_direct_n/A[5]}
::legacy::set_attribute -quiet external_capacitance_max {8.0 8.0} {port:z80_top_direct_n/A[5]}
::legacy::set_attribute -quiet external_capacitance_min 8.0 {port:z80_top_direct_n/A[5]}
::legacy::set_attribute -quiet external_pin_cap {8.0 8.0} {port:z80_top_direct_n/A[5]}
::legacy::set_attribute -quiet external_pin_cap_min 8.0 {port:z80_top_direct_n/A[4]}
::legacy::set_attribute -quiet external_capacitance_max {8.0 8.0} {port:z80_top_direct_n/A[4]}
::legacy::set_attribute -quiet external_capacitance_min 8.0 {port:z80_top_direct_n/A[4]}
::legacy::set_attribute -quiet external_pin_cap {8.0 8.0} {port:z80_top_direct_n/A[4]}
::legacy::set_attribute -quiet external_pin_cap_min 8.0 {port:z80_top_direct_n/A[3]}
::legacy::set_attribute -quiet external_capacitance_max {8.0 8.0} {port:z80_top_direct_n/A[3]}
::legacy::set_attribute -quiet external_capacitance_min 8.0 {port:z80_top_direct_n/A[3]}
::legacy::set_attribute -quiet external_pin_cap {8.0 8.0} {port:z80_top_direct_n/A[3]}
::legacy::set_attribute -quiet external_pin_cap_min 8.0 {port:z80_top_direct_n/A[2]}
::legacy::set_attribute -quiet external_capacitance_max {8.0 8.0} {port:z80_top_direct_n/A[2]}
::legacy::set_attribute -quiet external_capacitance_min 8.0 {port:z80_top_direct_n/A[2]}
::legacy::set_attribute -quiet external_pin_cap {8.0 8.0} {port:z80_top_direct_n/A[2]}
::legacy::set_attribute -quiet external_pin_cap_min 8.0 {port:z80_top_direct_n/A[1]}
::legacy::set_attribute -quiet external_capacitance_max {8.0 8.0} {port:z80_top_direct_n/A[1]}
::legacy::set_attribute -quiet external_capacitance_min 8.0 {port:z80_top_direct_n/A[1]}
::legacy::set_attribute -quiet external_pin_cap {8.0 8.0} {port:z80_top_direct_n/A[1]}
::legacy::set_attribute -quiet external_pin_cap_min 8.0 {port:z80_top_direct_n/A[0]}
::legacy::set_attribute -quiet external_capacitance_max {8.0 8.0} {port:z80_top_direct_n/A[0]}
::legacy::set_attribute -quiet external_capacitance_min 8.0 {port:z80_top_direct_n/A[0]}
::legacy::set_attribute -quiet external_pin_cap {8.0 8.0} {port:z80_top_direct_n/A[0]}
::legacy::set_attribute -quiet external_pin_cap_min 8.0 {port:z80_top_direct_n/D[7]}
::legacy::set_attribute -quiet external_capacitance_max {8.0 8.0} {port:z80_top_direct_n/D[7]}
::legacy::set_attribute -quiet external_capacitance_min 8.0 {port:z80_top_direct_n/D[7]}
::legacy::set_attribute -quiet input_slew_max_rise 500.0 {port:z80_top_direct_n/D[7]}
::legacy::set_attribute -quiet input_slew_max_fall 500.0 {port:z80_top_direct_n/D[7]}
::legacy::set_attribute -quiet input_slew_min_rise 500.0 {port:z80_top_direct_n/D[7]}
::legacy::set_attribute -quiet input_slew_min_fall 500.0 {port:z80_top_direct_n/D[7]}
::legacy::set_attribute -quiet fixed_slew {500.0 500.0 500.0 500.0} {port:z80_top_direct_n/D[7]}
::legacy::set_attribute -quiet external_pin_cap {8.0 8.0} {port:z80_top_direct_n/D[7]}
::legacy::set_attribute -quiet external_pin_cap_min 8.0 {port:z80_top_direct_n/D[6]}
::legacy::set_attribute -quiet external_capacitance_max {8.0 8.0} {port:z80_top_direct_n/D[6]}
::legacy::set_attribute -quiet external_capacitance_min 8.0 {port:z80_top_direct_n/D[6]}
::legacy::set_attribute -quiet input_slew_max_rise 500.0 {port:z80_top_direct_n/D[6]}
::legacy::set_attribute -quiet input_slew_max_fall 500.0 {port:z80_top_direct_n/D[6]}
::legacy::set_attribute -quiet input_slew_min_rise 500.0 {port:z80_top_direct_n/D[6]}
::legacy::set_attribute -quiet input_slew_min_fall 500.0 {port:z80_top_direct_n/D[6]}
::legacy::set_attribute -quiet fixed_slew {500.0 500.0 500.0 500.0} {port:z80_top_direct_n/D[6]}
::legacy::set_attribute -quiet external_pin_cap {8.0 8.0} {port:z80_top_direct_n/D[6]}
::legacy::set_attribute -quiet external_pin_cap_min 8.0 {port:z80_top_direct_n/D[5]}
::legacy::set_attribute -quiet external_capacitance_max {8.0 8.0} {port:z80_top_direct_n/D[5]}
::legacy::set_attribute -quiet external_capacitance_min 8.0 {port:z80_top_direct_n/D[5]}
::legacy::set_attribute -quiet input_slew_max_rise 500.0 {port:z80_top_direct_n/D[5]}
::legacy::set_attribute -quiet input_slew_max_fall 500.0 {port:z80_top_direct_n/D[5]}
::legacy::set_attribute -quiet input_slew_min_rise 500.0 {port:z80_top_direct_n/D[5]}
::legacy::set_attribute -quiet input_slew_min_fall 500.0 {port:z80_top_direct_n/D[5]}
::legacy::set_attribute -quiet fixed_slew {500.0 500.0 500.0 500.0} {port:z80_top_direct_n/D[5]}
::legacy::set_attribute -quiet external_pin_cap {8.0 8.0} {port:z80_top_direct_n/D[5]}
::legacy::set_attribute -quiet external_pin_cap_min 8.0 {port:z80_top_direct_n/D[4]}
::legacy::set_attribute -quiet external_capacitance_max {8.0 8.0} {port:z80_top_direct_n/D[4]}
::legacy::set_attribute -quiet external_capacitance_min 8.0 {port:z80_top_direct_n/D[4]}
::legacy::set_attribute -quiet input_slew_max_rise 500.0 {port:z80_top_direct_n/D[4]}
::legacy::set_attribute -quiet input_slew_max_fall 500.0 {port:z80_top_direct_n/D[4]}
::legacy::set_attribute -quiet input_slew_min_rise 500.0 {port:z80_top_direct_n/D[4]}
::legacy::set_attribute -quiet input_slew_min_fall 500.0 {port:z80_top_direct_n/D[4]}
::legacy::set_attribute -quiet fixed_slew {500.0 500.0 500.0 500.0} {port:z80_top_direct_n/D[4]}
::legacy::set_attribute -quiet external_pin_cap {8.0 8.0} {port:z80_top_direct_n/D[4]}
::legacy::set_attribute -quiet external_pin_cap_min 8.0 {port:z80_top_direct_n/D[3]}
::legacy::set_attribute -quiet external_capacitance_max {8.0 8.0} {port:z80_top_direct_n/D[3]}
::legacy::set_attribute -quiet external_capacitance_min 8.0 {port:z80_top_direct_n/D[3]}
::legacy::set_attribute -quiet input_slew_max_rise 500.0 {port:z80_top_direct_n/D[3]}
::legacy::set_attribute -quiet input_slew_max_fall 500.0 {port:z80_top_direct_n/D[3]}
::legacy::set_attribute -quiet input_slew_min_rise 500.0 {port:z80_top_direct_n/D[3]}
::legacy::set_attribute -quiet input_slew_min_fall 500.0 {port:z80_top_direct_n/D[3]}
::legacy::set_attribute -quiet fixed_slew {500.0 500.0 500.0 500.0} {port:z80_top_direct_n/D[3]}
::legacy::set_attribute -quiet external_pin_cap {8.0 8.0} {port:z80_top_direct_n/D[3]}
::legacy::set_attribute -quiet external_pin_cap_min 8.0 {port:z80_top_direct_n/D[2]}
::legacy::set_attribute -quiet external_capacitance_max {8.0 8.0} {port:z80_top_direct_n/D[2]}
::legacy::set_attribute -quiet external_capacitance_min 8.0 {port:z80_top_direct_n/D[2]}
::legacy::set_attribute -quiet input_slew_max_rise 500.0 {port:z80_top_direct_n/D[2]}
::legacy::set_attribute -quiet input_slew_max_fall 500.0 {port:z80_top_direct_n/D[2]}
::legacy::set_attribute -quiet input_slew_min_rise 500.0 {port:z80_top_direct_n/D[2]}
::legacy::set_attribute -quiet input_slew_min_fall 500.0 {port:z80_top_direct_n/D[2]}
::legacy::set_attribute -quiet fixed_slew {500.0 500.0 500.0 500.0} {port:z80_top_direct_n/D[2]}
::legacy::set_attribute -quiet external_pin_cap {8.0 8.0} {port:z80_top_direct_n/D[2]}
::legacy::set_attribute -quiet external_pin_cap_min 8.0 {port:z80_top_direct_n/D[1]}
::legacy::set_attribute -quiet external_capacitance_max {8.0 8.0} {port:z80_top_direct_n/D[1]}
::legacy::set_attribute -quiet external_capacitance_min 8.0 {port:z80_top_direct_n/D[1]}
::legacy::set_attribute -quiet input_slew_max_rise 500.0 {port:z80_top_direct_n/D[1]}
::legacy::set_attribute -quiet input_slew_max_fall 500.0 {port:z80_top_direct_n/D[1]}
::legacy::set_attribute -quiet input_slew_min_rise 500.0 {port:z80_top_direct_n/D[1]}
::legacy::set_attribute -quiet input_slew_min_fall 500.0 {port:z80_top_direct_n/D[1]}
::legacy::set_attribute -quiet fixed_slew {500.0 500.0 500.0 500.0} {port:z80_top_direct_n/D[1]}
::legacy::set_attribute -quiet external_pin_cap {8.0 8.0} {port:z80_top_direct_n/D[1]}
::legacy::set_attribute -quiet external_pin_cap_min 8.0 {port:z80_top_direct_n/D[0]}
::legacy::set_attribute -quiet external_capacitance_max {8.0 8.0} {port:z80_top_direct_n/D[0]}
::legacy::set_attribute -quiet external_capacitance_min 8.0 {port:z80_top_direct_n/D[0]}
::legacy::set_attribute -quiet input_slew_max_rise 500.0 {port:z80_top_direct_n/D[0]}
::legacy::set_attribute -quiet input_slew_max_fall 500.0 {port:z80_top_direct_n/D[0]}
::legacy::set_attribute -quiet input_slew_min_rise 500.0 {port:z80_top_direct_n/D[0]}
::legacy::set_attribute -quiet input_slew_min_fall 500.0 {port:z80_top_direct_n/D[0]}
::legacy::set_attribute -quiet fixed_slew {500.0 500.0 500.0 500.0} {port:z80_top_direct_n/D[0]}
::legacy::set_attribute -quiet external_pin_cap {8.0 8.0} {port:z80_top_direct_n/D[0]}
::legacy::set_attribute -quiet preserve const_prop_delete_ok {hnet:z80_top_direct_n/sw1__SYNTHESIZED_WIRE_1[0]}
::legacy::set_attribute -quiet preserve const_prop_delete_ok {hnet:z80_top_direct_n/sw1__SYNTHESIZED_WIRE_1[1]}
::legacy::set_attribute -quiet preserve const_prop_delete_ok {hnet:z80_top_direct_n/sw1__SYNTHESIZED_WIRE_2[0]}
::legacy::set_attribute -quiet preserve const_prop_delete_ok {hnet:z80_top_direct_n/sw1__SYNTHESIZED_WIRE_2[1]}
::legacy::set_attribute -quiet preserve const_prop_delete_ok {hnet:z80_top_direct_n/sw1__SYNTHESIZED_WIRE_2[2]}
::legacy::set_attribute -quiet hdl_user_name alu module:z80_top_direct_n/alu
::legacy::set_attribute -quiet hdl_filelist {{default -v2001 {SYNTHESIS} {rtl/alu_bit_select.v rtl/alu_core.v rtl/alu_mux_2z.v rtl/alu_mux_3z.v rtl/alu_prep_daa.v rtl/alu_shifter_core.v rtl/alu_slice.v rtl/alu.v} {./rtl}}} module:z80_top_direct_n/alu
::legacy::set_attribute -quiet arch_filename ./rtl/alu.v module:z80_top_direct_n/alu
::legacy::set_attribute -quiet entity_filename ./rtl/alu.v module:z80_top_direct_n/alu
::legacy::set_attribute -quiet preserve const_prop_delete_ok hnet:z80_top_direct_n/alu_/b2v_input_shift_SYNTHESIZED_WIRE_10
::legacy::set_attribute -quiet preserve const_prop_delete_ok hnet:z80_top_direct_n/alu_/b2v_input_shift_SYNTHESIZED_WIRE_11
::legacy::set_attribute -quiet preserve const_prop_delete_ok hnet:z80_top_direct_n/alu_/b2v_input_shift_SYNTHESIZED_WIRE_13
::legacy::set_attribute -quiet preserve const_prop_delete_ok hnet:z80_top_direct_n/alu_/b2v_input_shift_SYNTHESIZED_WIRE_14
::legacy::set_attribute -quiet preserve const_prop_delete_ok hnet:z80_top_direct_n/alu_/b2v_input_shift_SYNTHESIZED_WIRE_16
::legacy::set_attribute -quiet preserve const_prop_delete_ok hnet:z80_top_direct_n/alu_/b2v_input_shift_SYNTHESIZED_WIRE_17
::legacy::set_attribute -quiet preserve const_prop_delete_ok hnet:z80_top_direct_n/alu_/b2v_input_shift_SYNTHESIZED_WIRE_20
::legacy::set_attribute -quiet preserve const_prop_delete_ok hnet:z80_top_direct_n/alu_/b2v_input_shift_SYNTHESIZED_WIRE_21
::legacy::set_attribute -quiet preserve const_prop_delete_ok hnet:z80_top_direct_n/alu_/b2v_input_shift_SYNTHESIZED_WIRE_23
::legacy::set_attribute -quiet preserve const_prop_delete_ok hnet:z80_top_direct_n/alu_/b2v_input_shift_SYNTHESIZED_WIRE_24
::legacy::set_attribute -quiet preserve const_prop_delete_ok hnet:z80_top_direct_n/alu_/b2v_input_shift_SYNTHESIZED_WIRE_26
::legacy::set_attribute -quiet preserve const_prop_delete_ok hnet:z80_top_direct_n/alu_/b2v_input_shift_SYNTHESIZED_WIRE_27
::legacy::set_attribute -quiet preserve const_prop_delete_ok hnet:z80_top_direct_n/alu_/b2v_input_shift_SYNTHESIZED_WIRE_29
::legacy::set_attribute -quiet preserve const_prop_delete_ok hnet:z80_top_direct_n/alu_/b2v_input_shift_SYNTHESIZED_WIRE_30
::legacy::set_attribute -quiet preserve const_prop_delete_ok hnet:z80_top_direct_n/alu_/b2v_input_shift_SYNTHESIZED_WIRE_8
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/alu_/b2v_input_bit_select_cdn_loop_breaker
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/alu_/b2v_input_bit_select_cdn_loop_breaker20
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/alu_/b2v_input_bit_select_cdn_loop_breaker21
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/alu_/b2v_input_bit_select_cdn_loop_breaker22
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/alu_/b2v_input_bit_select_cdn_loop_breaker23
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/alu_/b2v_input_bit_select_cdn_loop_breaker24
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/alu_/b2v_input_bit_select_cdn_loop_breaker25
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/alu_/b2v_input_shift_cdn_loop_breaker
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/alu_/b2v_input_shift_cdn_loop_breaker43
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/alu_/b2v_input_shift_cdn_loop_breaker44
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/alu_/b2v_input_shift_cdn_loop_breaker45
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/alu_/b2v_input_shift_cdn_loop_breaker46
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/alu_/b2v_input_shift_cdn_loop_breaker47
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/alu_/b2v_input_shift_cdn_loop_breaker48
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/alu_/b2v_input_shift_cdn_loop_breaker49
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/alu_/b2v_input_shift_cdn_loop_breaker50
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/alu_/b2v_input_shift_cdn_loop_breaker51
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/alu_/b2v_input_shift_cdn_loop_breaker52
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/alu_/b2v_input_shift_cdn_loop_breaker53
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/alu_/b2v_input_shift_cdn_loop_breaker54
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/alu_/b2v_input_shift_cdn_loop_breaker55
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/alu_/b2v_input_shift_cdn_loop_breaker56
::legacy::set_attribute -quiet preserve const_prop_delete_ok hpin:z80_top_direct_n/alu_/alu_shift_in
::legacy::set_attribute -quiet preserve const_prop_delete_ok {hpin:z80_top_direct_n/alu_/bsel[2]}
::legacy::set_attribute -quiet preserve const_prop_delete_ok {hpin:z80_top_direct_n/alu_/bsel[1]}
::legacy::set_attribute -quiet preserve const_prop_delete_ok {hpin:z80_top_direct_n/alu_/bsel[0]}
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/alu_control__cdn_loop_breaker
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/alu_control__cdn_loop_breaker39
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/alu_control__cdn_loop_breaker40
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/reg_file__cdn_loop_breaker
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/reg_file__cdn_loop_breaker194
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/reg_file__cdn_loop_breaker195
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/reg_file__cdn_loop_breaker196
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/reg_file__cdn_loop_breaker197
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/reg_file__cdn_loop_breaker198
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/reg_file__cdn_loop_breaker199
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/reg_file__cdn_loop_breaker200
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/reg_file__cdn_loop_breaker201
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/reg_file__cdn_loop_breaker202
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/reg_file__cdn_loop_breaker203
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/reg_file__cdn_loop_breaker204
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/reg_file__cdn_loop_breaker205
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/reg_file__cdn_loop_breaker206
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/reg_file__cdn_loop_breaker207
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/reg_file__cdn_loop_breaker208
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/reg_file__cdn_loop_breaker209
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/reg_file__cdn_loop_breaker210
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/reg_file__cdn_loop_breaker211
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/reg_file__cdn_loop_breaker212
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/reg_file__cdn_loop_breaker213
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/reg_file__cdn_loop_breaker214
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/reg_file__cdn_loop_breaker215
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/reg_file__cdn_loop_breaker216
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/reg_file__cdn_loop_breaker217
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/reg_file__cdn_loop_breaker218
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/reg_file__cdn_loop_breaker219
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/reg_file__cdn_loop_breaker220
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/reg_file__cdn_loop_breaker221
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/reg_file__cdn_loop_breaker222
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/reg_file__cdn_loop_breaker223
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/reg_file__cdn_loop_breaker224
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/sw1__cdn_loop_breaker
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/sw1__cdn_loop_breaker28
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/sw1__cdn_loop_breaker29
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/sw1__cdn_loop_breaker30
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/sw1__cdn_loop_breaker31
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/sw1__cdn_loop_breaker32
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/sw1__cdn_loop_breaker33
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/sw1__cdn_loop_breaker34
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/sw2__cdn_loop_breaker
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/sw2__cdn_loop_breaker21
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/sw2__cdn_loop_breaker22
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/sw2__cdn_loop_breaker23
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/sw2__cdn_loop_breaker24
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/sw2__cdn_loop_breaker25
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/sw2__cdn_loop_breaker26
::legacy::set_attribute -quiet disabled_arcs lib_arc:default_emulate_libset_max/D_CELLS_MOSST_typ_1_80V_25C/BUX0/A_Q_n90 inst:z80_top_direct_n/sw2__cdn_loop_breaker27
# BEGIN PHYSICAL ANNOTATION SECTION
# END PHYSICAL ANNOTATION SECTION
