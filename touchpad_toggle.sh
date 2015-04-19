#!/bin/bash
source ~/dotfiles/notify.sh

synclient TouchpadOff=$(synclient -l | grep -c 'TouchpadOff.*=.*0')

touchpad_off=`synclient -l  | grep -c 'TouchpadOff.*=.*0' | head -c 1`
TOUCHPAD_ON=1

if [ "$touchpad_off" -eq $TOUCHPAD_ON ]; then
    touchpad_string="on"
else
    touchpad_string="off"
fi
displayString="Touchpad: $touchpad_string"
echo $displayString | notify
