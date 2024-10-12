#!/bin/bash

# Set threshold for CPU usage
threshold=80

# Get CPU usage (calculating it from the idle percentage)
# This works for macOS
cpu_usage=$(top -l 1 | grep "CPU usage" | awk '{print 100 - $7}' | cut -d. -f1)

# Debugging output to check values
echo "CPU Usage: $cpu_usage%"
echo "Threshold: $threshold%"

# Check if cpu_usage is a valid integer
if ! [[ "$cpu_usage" =~ ^[0-9]+$ ]]; then
    echo "Error: Unable to retrieve CPU usage."
    exit 1
fi

# Compare CPU usage against the threshold
if [ "$cpu_usage" -gt "$threshold" ]; then
    echo "High CPU usage detected: $cpu_usage%"
    # Add alert/notification logic here
else
    echo "CPU usage is normal: $cpu_usage%"
fi

