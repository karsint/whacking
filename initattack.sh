#!/bin/bash
echo 'Stopping NetworkManager'
sudo service NetworkManager stop
echo 'Stopping wpa_supplicant'
sudo service wpa_supplicant stop
echo 'Bringing down wireless interfaces'
sudo ip link set wlan0 down
sudo ip link set wlan1 down
sudo ip link set wlan2 down
echo 'Setting interfaces to monitor mode'
sudo iwconfig wlan0 mode monitor
sudo iwconfig wlan1 mode monitor
sudo iwconfig wlan2 mode monitor
echo 'Bringing antennas online'
sudo ip link set wlan0 up
sudo ip link set wlan1 up
sudo ip link set wlan2 up
echo 'Confirming monitor status'
sudo iwconfig |grep onitor
echo ''
echo 'Ready to snoop!'
