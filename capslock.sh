#!/bin/bash
xset q | grep "00: Caps Lock:" | head  -c 25 | tail -c 17 ;echo

