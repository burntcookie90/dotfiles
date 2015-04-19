#!/bin/bash
touchpad_off=`synclient -l  | grep -c 'TouchpadOff.*=.*0' | head -c 1`
TOUCHPAD_ON=1

if [ "$touchpad_off" -eq $TOUCHPAD_ON ]; then
    touchpad_string="on"
else
    touchpad_string="off"
fi
echo $touchpad_string
