#!/bin/bash

AO_temp=$(cat /sys/devices/virtual/thermal/thermal_zone0/temp)

ao=$((AO_temp/1000))

echo "$ao"
