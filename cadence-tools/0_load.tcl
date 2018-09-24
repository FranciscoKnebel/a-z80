set env(headerfile) "SINTESE LÓGICA - load.tcl"
include ~/z80/header.tcl

puts "### inicializando caminhos..."
set_db script_search_path ./
set_db init_hdl_search_path ./rtl
set_db information_level 0
puts "### caminhos inicializados.\n"

puts "### inicializando libs..."
set_db library "/pdk/xfab/XC018_61_3.1.3/synopsys/xc018/MOSST/D_CELLS_MOSST_typ_1_80V_25C.lib /pdk/xfab/XC018_61_3.1.3/synopsys/xc018/MOS3ST/IO_CELLS_3V_MOS3ST_typ_1_80V_3_30V_25C.lib"

set_db lef_library "/pdk/xfab/XC018_61_3.1.3/cadence/xc018/LEF/xc018_m6_FE/xc018m6_FE.lef /pdk/xfab/XC018_61_3.1.3/cadence/xc018/LEF/xc018_m6_FE/D_CELLS.lef /pdk/xfab/XC018_61_3.1.3/cadence/xc018/LEF/xc018_m6_FE/IO_CELLS_3V.lef"
puts "### libs lidas.\n"

puts "### Lendo arquivos HDL..."
read_hdl { z80_top_direct_n.v address_latch.v address_mux.v address_pins.v alu_bit_select.v alu_control.v alu_core.v alu_flags.v alu_mux_2.v alu_mux_2z.v alu_mux_3z.v alu_mux_4.v alu_mux_8.v alu_prep_daa.v alu_select.v alu_shifter_core.v alu_slice.v alu.v bus_control.v bus_switch.v clk_delay.v control_pins_n.v data_pins.v data_switch_mask.v data_switch.v decode_state.v execute.v inc_dec_2bit.v inc_dec.v interrupts.v ir.v memory_ifc.v pin_control.v pla_decode.v reg_control.v reg_file.v reg_latch.v resets.v sequencer.v }
puts "### arquivos HDL lidos.\n"

puts "### Elaborando o top-level module e lendo constraints..."
elaborate z80_top_direct_n

read_sdc ./constraint/timing.sdc
puts "### module elaborado e contraints lidas.\n"

puts "### Efetuando sintese genérica..."
synthesize -to_generic -eff high
puts "### encerrado sintese genérica.\n"

puts "### Efetuando mapeamento..."
synthesize -to_mapped -effort high -no_incremental
puts "### mapeamento encerrado.\n"

puts "### Escrevendo design para 'synthesis/a-z80'..."
write_design -innovus -base_name synthesis/a-z80
puts "### Escrita efetuada.\n"

puts "### Sintese lógica encerrada.\n"

# Inclui arquivo de reports de area, timing, etc
include ~/z80/reports.tcl

exit
