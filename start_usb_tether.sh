#!/bin/sh

ifconfig usb0 up && dhcpcd usb0
ip link set usb0 up && dhcpcd usb0
