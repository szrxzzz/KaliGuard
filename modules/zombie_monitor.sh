#!bin/bash

echo ""
echo "==== ZOMBIE MONITOR ===="

zombies=$(ps aux | awk '{print $8,$2,$11}' | grep "^z")

if [ -z "$zombies" ]
then
    echo "No zombie processes found."
else
    echo "Zombie processes detected!"
    echo "$zombies"
    echo "$(date) Zombie process detected: $zombies" >> logs/security.log
fi
