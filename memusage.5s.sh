#!/bin/bash

RAM_FREE=$(free --kilo | grep Mem | awk '{print $3}')
RAM_TOTAL=$(free --kilo | grep Mem | awk '{print $2}')
RAM_USED=$(expr $RAM_TOTAL - $RAM_FREE)

RAM_USED_FORMAT=$(echo "scale=2 ; $RAM_USED / 1024 / 1024" | bc)
RAM_TOTAL_FORMAT=$(echo "scale=2 ; $RAM_TOTAL / 1024 / 1024" | bc)

echo 🐏 $RAM_USED_FORMAT / $RAM_TOTAL_FORMAT GB
