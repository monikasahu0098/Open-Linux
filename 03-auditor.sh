#!/bin/bash
# Author: monikasahu0098 (204BEY10128)
# Purpose: Define an array of directories and dynamically append 2 specific paths for VLC. Loop through them, check existence, and use 'awk' to extract size, permissions, and owner into clean columns.

echo "================================================================================"
echo "                   VLC AUDIT - DIRECTORY AUDITOR              "
echo "================================================================================"

dirs=("/etc" "/var/log" "/usr/bin" "/usr/lib" "/var/tmp")
dirs+=("/usr/lib/vlc" "/var/lib/vlc")

echo "Directory          Size          Permissions          Owner"
echo "--------------------------------------------------------------------------------"
for dir in "${dirs[@]}"; do
  if [ -d "$dir" ]; then
    size=$(du -sh "$dir" | awk '{print $1}')
    perms=$(stat -c "%a" "$dir")
    owner=$(stat -c "%U:%G" "$dir")
    echo "$dir          $size          $perms          $owner"
  else
    echo "$dir          NOT FOUND"
  fi
done
echo "================================================================================"