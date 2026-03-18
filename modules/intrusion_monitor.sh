#!bin/bash

echo ""
echo "==== INTRUSION MONITOR ===="

LOGFILE="logs/security.log"

user_count=$(who | wc -l)

if [ "$user_count" -gt 1 ]; then
    echo "🔴 ALERT: Multiple users logged in!"
    echo "$(date) ALERT: Multiple users logged in" >> $LOGFILE
else
    echo "🟢 Single user session"
fi

failed=$(grep "Failed password" /var/log/auth.log 2>/dev/null | tail -3)

if [ ! -z "$failed" ]; then
    echo "🔴 ALERT: Failed login attempts detected!"
    echo "$failed"
    echo "$(date) Failed login attemot detected" >> $LOGFILE
else
    echo "🟢 No failed login attempts"
fi
