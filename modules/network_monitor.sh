#!/bin/bash

echo ""
echo "==== NETWORK MONITOR ===="

echo "Active Network Connections:"
netstat -tuln | head

echo ""
echo "Checking for suspicious ports..."

suspicious_ports="4444 5555 6666"

for port in $suspicious_ports
do
    if netstat -tuln | grep -q ":$port"
    then
       echo "💀 ALERT: Suspicious port $port detected!"
       echo "$(date) Suspicious port open: $port" >> logs/security.log
    fi
done
