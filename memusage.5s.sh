#!/bin/bash

RAM_USED=$(cat /proc/meminfo | grep "Inactive:" | awk '{print $2}')
RAM_TOTAL=$(cat /proc/meminfo | grep "MemTotal:" | awk '{print $2}')
RAM_USED_FORMAT=$(echo "scale=2 ; $RAM_USED / 1024 / 1024" | bc)
RAM_TOTAL_FORMAT=$(echo "scale=2 ; $RAM_TOTAL / 1024 / 1024" | bc)

echo 🐏 $RAM_USED_FORMAT / $RAM_TOTAL_FORMAT GB
