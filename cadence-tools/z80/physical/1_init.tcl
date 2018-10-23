set env(headerfile) "SINTESE FISICA - 1_init.tcl"
source ~/z80/header.tcl

puts "### Inicializando VDD e GND.";
set_db init_power_nets {VDD}
set_db init_ground_nets {GND}

# Lê o arquivo de setup criado pelo Genus
puts "### Lendo arquivo de setup...";
source ~/z80/synthesis/a-z80.invs_setup.tcl

puts "### Lendo iopads.io...";
read_io_file physical/iopads.io
puts "### iopads xablauzado.";

# Cria o floorplan
puts "### Criando floorplan...";
create_floorplan -site core -core_density_size 1 0.8 3.0 3.0 3.0 3.0
puts "### floorplan finalizado.";

gui_fit
