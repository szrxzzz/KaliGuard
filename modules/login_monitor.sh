#!/bin/bash

echo ""
echo "==== LOGIN MONITOR ===="

users=$(who | wc -l)

echo "Currently Logged In Users:"
who

echo ""
echo "	System Uptime:"
uptime

if [ "$users" -gt 1 ]; then
   echo "💀 ALERT: Multiple users logged in!"
   mkdir -p logs
   echo "$(date) Multiple users logged in" >> logs/security.log
fi
