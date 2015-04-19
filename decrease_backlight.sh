#!/bin/bash

source ~/dotfiles/notify.sh

xbacklight -dec 5
backlight=`xbacklight -get`
backlight=$( printf "%.0f" $backlight )

displayString="Backlight: $backlight"
echo $displayString | notify
