
#!/bin/bash

# Set threshold for CPU usage
threshold=2

# Get CPU usage (calculating it from idle percentage)
cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}' | cut -d. -f1)

# Debugging output to check values
echo "CPU Usage: $cpu_usage"
echo "Threshold: $threshold"

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

