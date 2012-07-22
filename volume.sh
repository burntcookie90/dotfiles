#!/bin/bash
str=`amixer sget Master`
str1=${str#*\[}
v1=${str1%%]*]}

echo $v1

