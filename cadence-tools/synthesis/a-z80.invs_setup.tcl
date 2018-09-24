#####################################################################
#
# Innovus setup file
# Created by Genus(TM) Synthesis Solution on 09/24/2018 13:50:02
#
# This file can only be run in Innovus Common UI mode.
#
#####################################################################


# User Specified CPU usage for Innovus
######################################
set_multi_cpu_usage -local_cpu 8


# Design Import
###########################################################
## Reading FlowKit settings file
source synthesis/a-z80.flowkit_settings.tcl

source synthesis/a-z80.invs_init.tcl

# Reading metrics file
######################
read_metric -id current synthesis/a-z80.metrics.json 



# Mode Setup
###########################################################
source synthesis/a-z80.mode
