#!/bin/bash

CPUTEMP=$(cat /sys/class/thermal/thermal_zone0/temp)
CPUTEMPINT=$(($CPUTEMP/1000))
CPUTEMPDEC=$((($CPUTEMP/100) %$CPUTEMPINT))
CPUTEMPFULL=($CPUTEMPINT"."$CPUTEMPDEC)

echo $(date) @ $(hostname)
echo === Internal temperature ===
echo CPU temp=$CPUTEMPFULL\'C
echo GPU $(/opt/vc/bin/vcgencmd measure_temp)