# A-Z80

### 0. Setup
`cd z80`
`tcsh`
`source /scripts/set_cadence.csh && source 
/scripts/set_cadence_innovus161.csh`

### 1. Logical Synthesis
`genus -overwrite -log ~/z80/logs/0_logic`
`include 0_logical.tcl`

Will generate netlist in syntehsis/a-z80.v

### 2. Physical Synthesis

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

## Authors

<table style="text-align: center;">
  <th>Contributors</th>
  <th>Contributions</th>
  <tr>
    <td>
      <img src="https://avatars.githubusercontent.com/FranciscoKnebel?s=75">
      <br>
      <a href="https://github.com/FranciscoKnebel">Francisco Knebel</a>
    </td>
    <td>
      <a href="https://github.com/FranciscoKnebel/a_z-80/commits?author=FranciscoKnebel">Contributions</a> by FranciscoKnebel
    </td>
  </tr>
  <tr>
    <td>
      <img src="https://avatars.githubusercontent.com/lzancan?s=75">
      <br>
      <a href="https://github.com/lzancan">Luciano Zancan</a>
    </td>
    <td>
      <a href="https://github.com/FranciscoKnebel/a_z-80/commits?author=lzancan">Contributions</a> by lzancan
    </td>
  </tr>
  <tr>
    <td>
      <img src="https://avatars.githubusercontent.com/rodrigodalri?s=75">
      <br>
      <a href="https://github.com/rodrigodalri">Rodrigo Dal Ri</a>
    </td>
    <td>
      <a href="https://github.com/FranciscoKnebel/a_z-80/commits?author=rodrigodalri">Contributions</a> by rodrigodalri
    </td>
  </tr>
</table>

See also the full list of [contributors](https://github.com/FranciscoKnebel/a_z-80/contributors) who participated in this project.