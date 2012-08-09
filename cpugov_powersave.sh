#!/bin/sh
sudo cpufreq-set -c 0 -g powersave
sudo cpufreq-set -c 1 -g powersave
cpufreq-info
