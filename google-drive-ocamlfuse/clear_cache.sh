#!/bin/bash
######################################################

######################################################
#
# Author: iespeleta
#
# Website: manualesfaciles.com
#
######################################################

#VARIABLES

LOG=cache_clear.log
ID=$(whoami)

######################################################
###
### With the PREPOINT you can say to the program the route
### I'm mouting the DRIVE unit in the HOME/USER/PREPOINT
### Feel free to change it.
###
#######################################################

PREPOINT=plex
MOUNTPOINT=/home/$ID/$PREPOINT

######################################################
###
### How much space we will allow to set
### You can chek the ammount using this math operation
###
### Example 40G  : 40 * 1024 * 1024 = 41943040
###
### Example 300M : 300 * 1024 = 307200
###
#######################################################

LIMIT=41943040

######################################################
### Here you must put the mount point that you wanna check
###
### Example: PARTITION="/dev/sda2"
###
#######################################################

PARTITION="/dev/sda2"

######################################################
###
### Here you must specify the options for the launchment
###
#######################################################

FOPTION="allow_other,ro,otomic_o_trunc,large_read,default_permissions"

# FUNCTIONS

######################################################
###
### I'm so lazy to put this line too many times
###
#######################################################

function AMMOUNT {

printf -v STORAGE '%d\n' "$(df | grep  $PARTITION | awk {'print $3'})" 2>/dev/null

}

# MAIN CODE

WIP...
