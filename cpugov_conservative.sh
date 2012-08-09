#!/bin/sh
sudo cpufreq-set -c 0 -g conservative
sudo cpufreq-set -c 1 -g conservative
cpufreq-info
