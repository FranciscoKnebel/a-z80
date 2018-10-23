#####################################################################
#
# Init setup file
# Created by Genus(TM) Synthesis Solution on 10/11/2018 15:33:06
#
#####################################################################


read_mmmc synthesis/a-z80.mmmc.tcl

read_physical -lef {/pdk/xfab/XC018_61_3.1.3/cadence/xc018/LEF/xc018_m6_FE/xc018m6_FE.lef /pdk/xfab/XC018_61_3.1.3/cadence/xc018/LEF/xc018_m6_FE/D_CELLS.lef /pdk/xfab/XC018_61_3.1.3/cadence/xc018/LEF/xc018_m6_FE/IO_CELLS_3V.lef}

read_netlist synthesis/a-z80.v

init_design -skip_sdc_read
