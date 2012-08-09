#!/bin/sh
sudo cpufreq-set -c 0 -g ondemand
sudo cpufreq-set -c 1 -g ondemand
cpufreq-info
