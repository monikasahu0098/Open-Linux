#!/bin/bash
# Author: monikasahu0098 (204BEY10128)
# Purpose: Use OS-detection to define the correct package name for VLC. Check installation status and extract the exact version.

echo "================================================================================"
echo "                   VLC AUDIT - PACKAGE INSPECTOR                "
echo "================================================================================"

if [ -x "/usr/bin/apt" ]; then
  # Debian/Ubuntu
  PACKAGE_NAME="vlc"
elif [ -x "/usr/bin/yum" ]; then
  # RHEL/CentOS
  PACKAGE_NAME="vlc"
elif [ -x "/usr/bin/zypper" ]; then
  # OpenSUSE
  PACKAGE_NAME="vlc"
fi

if [ -n "$(dpkg -s $PACKAGE_NAME 2>/dev/null)" ]; then
  echo "Status: $PACKAGE_NAME is INSTALLED on this system."
  echo "Version: $(dpkg -s $PACKAGE_NAME | grep Version)"
else
  echo "Status: $PACKAGE_NAME is NOT installed on this system."
fi

echo "--------------------------------------------------------------------------------"
echo "FOSS Philosophy Notes:"
echo " - VLC: A free and open-source media player."
echo " - Firefox: A free and open-source web browser."
echo " - LibreOffice: A free and open-source office suite."
echo " - GIMP: A free and open-source raster graphics editor."
echo "================================================================================"