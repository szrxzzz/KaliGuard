#!bin/bash

echo ""
echo "==== PORT SCAN MONITOR ===="

echo "Open Ports:"
ss -tuln | head

echo ""
echo "Checking suspicious ports..."

suspicious_ports=("4444" "5555" "6666" "1337")

for port in "${suspicious_ports[@]}"
do
   if ss -tuln | grep -q ":$port"
   then 
       echo "ALERT: Suspicious port open -> $port"
       echo "$(date) Suspicious port detected: $port" >> logs/security.log
   fi
done
