#!/bin/bash
temp1=`cat /sys/class/thermal/thermal_zone0/temp`
echo `expr $temp1 / 1000`
