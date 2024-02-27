#! /bin/bash

# this script is called by ./brltty.sh brltty.conf
# it will parse the brltty configuration file and print the following information:
# - the number of braille-drivers
# - the list of braille-devices
# - the number of text tables
# - the number of contraction tables

# assign config file to variable
configfile=$1

# check if config file exists
if [ ! -f $configfile ]; then
  echo "Error: $configfile does not exist"
  exit 1
fi

# get the number of braille-drivers "#braille-driver"
# grep -c will count the number of lines that contain "braille-driver"
braille_drivers=$(grep -c "#braille-driver" $configfile)
echo $braille_drivers

# get the list of braille-devices "braille-device"
# grep "braille-device" will print the line that contains "braille-device"
# awk '{print $2}' will print the second column of the output
braille_devices=$(grep "braille-device" $configfile | awk '{print $2}')
echo $braille_devices

# get the number of text tables "#text-table"
# grep -c will count the number of lines that contain "text-table"
text_tables=$(grep -c "#text-table" $configfile)
echo $text_tables

# get the number of contraction tables "#contraction-table"
# grep -c will count the number of lines that contain "contraction-table"
contraction_tables=$(grep -c "#contraction-table" $configfile)
echo $contraction_tables
