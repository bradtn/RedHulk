#!/bin/bash

# keep wifi alive
echo "................................................"
date "+%Y.%m.%d %H:%M:%S"
echo " "
ping -c2 192.168.68.1 # replace this IP with your router IP

 
if [ $? != 0 ] 
then 
  echo " "
  echo "No network connection, restarting wlan0"
  
  sudo ifconfig wlan0 down
  sleep 30
  sudo ifconfig wlan0 up
  
else
    echo " "
    cat /proc/net/wireless
fi
echo "................................................"
echo " "
