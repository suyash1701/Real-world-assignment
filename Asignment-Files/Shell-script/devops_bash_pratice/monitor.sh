#!/bin/bash

echo "==== System Monitoring ===="
echo "Date: $(date)"
echo "Uptime: $(uptime)"
echo ""
echo "CPU load:"
top -bn1 | grep "load average"
echo ""
echo "Memory usage:"
free -h

