#!/bin/bash
# Author: monikasahu0098 (204BEY10128)
# Purpose: Accept a target log file as $1. Add a comment suggesting a realistic log path for VLC. Use a 'while read' loop to count occurrences of a keyword ($2), then use 'tail' to print the last 5 matches.
# Suggested log path: /var/log/syslog

echo "================================================================================"
echo "                   VLC AUDIT - LOG FILE ANALYZER            "
echo "================================================================================"

target_log="$1"
keyword="$2"

count=0
while read -r line; do
  if [[ "$line" == *"$keyword"* ]]; then
    ((count++))
  fi
done < "$target_log"
echo "Found $count occurrences of '$keyword' in $target_log"

tail -n 5 "$target_log" | grep "$keyword"
echo "================================================================================"