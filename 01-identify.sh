#!/bin/bash
# Author: monikasahu0098 (204BEY10128)
# Purpose: Extract Linux Distro, Kernel, Current User, Home Directory, Uptime, and Date.

echo "================================================================================"
echo "                   VLC AUDIT - SYSTEM IDENTITY                   "
echo "================================================================================"

echo "Linux Distribution: $(lsb_release -ds)"
echo "Kernel Version:     $(uname -r)"
echo "Current User:       $(whoami)"
echo "Home Directory:     $(pwd)"
echo "System Uptime:      $(uptime)"
echo "Current Date/Time:  $(date)"
echo "--------------------------------------------------------------------------------"
echo "Message: This system runs on Open Source software, providing freedom to study, change, and distribute."
echo "================================================================================"