#!/bin/bash

source ~/dotfiles/notify.sh

amixer set Master 2%+
str=`amixer sget Master`
str1=${str#*\[}
v1=${str1%%]*]}

displayString="Volume: $v1"
echo $displayString | notify
