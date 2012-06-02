#!/bin/bash
str=`acpi`
str1=${str#Battery*\,}
str2=${str1:1:10}
echo $str2
