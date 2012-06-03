#!/bin/bash
str=`amixer sget Master`
str1=${str#Simple*\[}
v1=${str1%%]*]}

echo $v1

