#/bin/bash
now=$(date --iso-8601=ns)
echo "Firing up first antenna for common channels"
sudo hcxdumptool -i wlan0 -o $now.pcapng -c 1,6,11 -t 30 --enable_status=31 --error_max=1000&
now=$(date --iso-8601=ns)
echo "Firing up second antenna for 5G"
sudo hcxdumptool -i wlan1 -o $now.pcapng -s 4 -t 30 --enable_status=31 --error_max=1000&
now=$(date --iso-8601=ns)
echo "Firing up third antenna on uncommon channels"
sudo hcxdumptool -i wlan2 -o $now.pcapng -s 2 -t 30 --enable_status=31 --error_max=1000&
sleep 5
echo 'Off to the races'
ps ax|grep hcx


