set env(headerfile) "SINTESE FISICA - 3_place.tcl"
source ~/z80/header.tcl

puts "
#############
### Posiciona as celulas...
#############
"
eval_legacy { setPlaceMode -ignoreScan false }
place_opt_design

puts "
#############
### Espalhando pinos do circuito ao longo das bordas
#############
"
edit_pin -side Top -layer 2 -spread_type center -spacing 25.0 -pin {{nM1} {nMREQ} {nIORQ} {nRD} {nWR} {nRFSH} {nHALT} {nBUSACK} {CLK}}

edit_pin -side Bottom -layer 2 -spread_type center -spacing 20.0 -pin {{nWAIT} {nINT} {nNMI} {nRESET} {nBUSRQ} {D[0]} {D[1]} {D[2]} {D[3]} {D[4]} {D[5]} {D[6]} {D[7]}}

edit_pin -side Right -layer 3 -spread_type center -spacing 25.0 -pin {{A[0]} {A[1]} {A[2]} {A[3]} {A[4]} {A[5]} {A[6]} {A[7]}}

edit_pin -side Left -layer 3 -spread_type center -spacing 25.0 -pin {{A[8]} {A[9]} {A[10]} {A[11]} {A[12]} {A[13]} {A[14]} {A[15]}}

# Otimiza
ccopt_design
