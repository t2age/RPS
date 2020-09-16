#!/bin/bash

cd /sys/class/gpio/

gp56=/sys/class/gpio/gpio56
if [ ! -L $gp56 ]; then
  echo 56 >export
fi


cd gpio56
echo in > direction 
echo 1 >active_low 

pinValue=$(cat value) 

if [ $pinValue == "1" ]; then
    systemctl stop rockchip-adbd
    modprobe g_ether
    ifconfig usb0 169.254.99.99 netmask 255.255.0.0
fi
