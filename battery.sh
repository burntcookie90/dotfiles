#!/bin/bash
str=`acpi`
str1=${str#Battery*\,}
str2=${str1:1:3}
str3=${str1:5:6}
echo $str2 :$str3
