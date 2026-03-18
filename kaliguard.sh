#!/bin/bash

trap "echo 'KaliGuard stopped'; exit" SIGINT

while true
do
clear

echo "============================"
echo "        KALI GUARDIAN       "
echo "   LIVE SECURITY DASHBOARD  "
echo "============================"

echo "Time: $(date)"
echo ""

bash modules/process_monitor.sh
bash modules/network_monitor.sh
bash modules/login_monitor.sh
bash modules/zombie_monitor.sh
bash modules/disk_monitor.sh
bash modules/port_scan.sh
bash modules/intrusion_monitor.sh

echo ""
echo "Refreshing in 10 seconds..."
sleep 10

done
