#!/bin/bash

echo ""
echo "==== PROCESS MONITOR ===="

echo "Top CPU consuming processes:"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head

echo ""
echo "Checking for zombie processes..."

zombies=$(ps aux | awk '{if ($8=="Z") print $2 }')

if [ -z "$zombies" ]
then
    echo "No zombie processes found."
else
    echo "💀 ALERT: Zombie processes detected!"
    echo "$zombies"
    echo "$(date) Zombie process detected: $zombies" >>logs/security.log
fi
