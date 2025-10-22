#!/bin/bash

# Set the log directory relative to this script
LOG_DIR="./logs"   # Place your log files inside a "logs" folder in the repo
ERROR_PATTERNS=("ERROR" "FATAL" "CRITICAL")
REPORT_FILE="./log_analysis_report.txt"  # Report will be saved in the repo root

echo "Analyzing log files" > "$REPORT_FILE"
echo "====================" >> "$REPORT_FILE"

# List log files updated in the last 24 hours
echo -e "\nList of log files updated in the last 24 hours:" >> "$REPORT_FILE"
LOG_FILES=$(find "$LOG_DIR" -name "*.log" -mtime -1)
echo "$LOG_FILES" >> "$REPORT_FILE"

# Loop through each log file safely
for LOG_FILE in $LOG_FILES; do

    echo -e "\n" >> "$REPORT_FILE"
    echo "================================" >> "$REPORT_FILE"
    echo "=== Analyzing file: $LOG_FILE ===" >> "$REPORT_FILE"
    echo "================================" >> "$REPORT_FILE"

    for PATTERN in "${ERROR_PATTERNS[@]}"; do

        # Search for logs with the pattern
        echo -e "\nSearching for $PATTERN logs in $LOG_FILE:" >> "$REPORT_FILE"
        grep "$PATTERN" "$LOG_FILE" >> "$REPORT_FILE"

        # Count logs with the pattern
        ERROR_COUNT=$(grep -c "$PATTERN" "$LOG_FILE")
        echo -e "\nNumber of $PATTERN logs found in $LOG_FILE:" >> "$REPORT_FILE"
        echo "$ERROR_COUNT" >> "$REPORT_FILE"

        if [ "$ERROR_COUNT" -ge 5 ]; then
            echo -e "\nAction Required: too many $PATTERN errors in log file $LOG_FILE" >> "$REPORT_FILE"
        fi

    done      
done <<< "$LOG_FILES"

echo -e "\nLog analysis completed. Report saved to $REPORT_FILE"
