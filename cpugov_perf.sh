#!/bin/sh
sudo cpufreq-set -c 0 -g performance
sudo cpufreq-set -c 1 -g performance
cpufreq-info
