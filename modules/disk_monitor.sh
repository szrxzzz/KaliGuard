#!bin/bash

echo ""
echo "==== DISK USAGE MONITOR ===="

usage=$(df / | tail -1 | awk '{print $5}' | sed 's/%//')

echo "Disk usage: $usage%"

if [ "$usage" -gt 80 ]
then
    echo "WARNING: Disk usage above 80%"
    echo "$(date) Disk usage critical: $usage%" >> logs/security.log
fi
