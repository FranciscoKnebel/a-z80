# A-Z80

## 0. Setup
`cd z80`
`tcsh`
`source /scripts/set_cadence.csh && source 
/scripts/set_cadence_innovus161.csh`

## 1. Logical Synthesis
`genus -overwrite -log ~/z80/logs/0_logic`
`include 0_logical.tcl`

Will generate netlist in syntehsis/a-z80.v

## 2. Physical Synthesis

`innovus -overwrite -log ~/z80/logs/1_physical -common_ui`

```
source physical/1_init.tcl
source physical/2_power.tcl
source physical/3_place.tcl
```

or

```
source physical/0_setup.tcl
```

### Authors

Francisco Knebel, Luciano Zancan, Rodrigo Dal Ri
