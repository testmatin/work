#!/bin/bash

LOG_DIR="$(pwd)/logs"
LOG_FILE="$LOG_DIR/system.log"
DATE=$(date "+%Y-%m-%d %H:%M:%S")

mkdir -p "$LOG_DIR"

echo "==========================" >> "$LOG_FILE"
echo "Log Time: $DATE" >> "$LOG_FILE"

echo "Uptime:" >> "$LOG_FILE"
uptime >> "$LOG_FILE"

echo "" >> "$LOG_FILE"
echo "Memory Usage:" >> "$LOG_FILE"
free -h >> "$LOG_FILE"

echo "" >> "$LOG_FILE"
echo "Disk Usage:" >> "$LOG_FILE"
df -h >> "$LOG_FILE"

echo "" >> "$LOG_FILE"
echo "Top Processes:" >> "$LOG_FILE"
ps aux --sort=-%mem | head -n 5 >> "$LOG_FILE"
