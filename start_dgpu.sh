#!/bin/sh

echo 1 | tee /sys/bus/platform/devices/MSHW0041:00/dgpu_power
echo 1 > /sys/bus/pci/rescan
setpci -H1 -s 01:00.0 6a.b=81
setpci -H1 -s 01:00.0 4.w=0407
echo 1 > /sys/bus/pci/rescan
setpci -s 01:00.0 4.w
setpci -s 01:00.0 6a.b
