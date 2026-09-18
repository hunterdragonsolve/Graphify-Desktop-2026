#!/bin/sh

LOG_FILE="system_check.log"

echo "System Check" > "$LOG_FILE"
echo "============" >> "$LOG_FILE"
echo "Hostname: $(hostname)" >> "$LOG_FILE"
echo "Date: $(date)" >> "$LOG_FILE"
echo "User: $(whoami)" >> "$LOG_FILE"
echo "Kernel: $(uname -s)" >> "$LOG_FILE"
echo "Kernel Version: $(uname -r)" >> "$LOG_FILE"
echo "Architecture: $(uname -m)" >> "$LOG_FILE"

echo >> "$LOG_FILE"
echo "Disk Usage" >> "$LOG_FILE"
echo "----------" >> "$LOG_FILE"
df -h >> "$LOG_FILE"

echo >> "$LOG_FILE"
echo "Current Directory" >> "$LOG_FILE"
echo "-----------------" >> "$LOG_FILE"
pwd >> "$LOG_FILE"

echo >> "$LOG_FILE"
echo "Directory Contents" >> "$LOG_FILE"
echo "------------------" >> "$LOG_FILE"
ls -lah >> "$LOG_FILE"

cat "$LOG_FILE"