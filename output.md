# VLC Audit - Script Execution Outputs

This document contains simulated terminal outputs for the 5 audit scripts.

---

## 1. System Identity Report (`01-identify.sh`)
```bash
monikasahu0098@ubuntu-server:~/VLC$ ./01-identify.sh
================================================================================
                   VLC AUDIT - SYSTEM IDENTITY                    
================================================================================
Linux Distribution: Ubuntu 22.04.3 LTS
Kernel Version:     5.15.0-89-generic
Current User:       monikasahu0098
Home Directory:     /home/monikasahu0098
System Uptime:      up 2 hours, 45 minutes
Current Date/Time:  Tue Mar 31 2026 08:48:44 GMT+0000 (Coordinated Universal Time)
--------------------------------------------------------------------------------
Message: This system runs on Open Source software, providing freedom to study, change, and distribute.
================================================================================
```
---

## 2. FOSS Package Inspector (`02-packages.sh`)
```bash
monikasahu0098@ubuntu-server:~/VLC$ ./02-packages.sh
================================================================================
                   VLC AUDIT - PACKAGE INSPECTOR                 
================================================================================
Status: vlc is INSTALLED on this Debian/Ubuntu system.
Version: Version: 3.0.18-1
--------------------------------------------------------------------------------
FOSS Philosophy Notes:
 - VLC: A free and open-source media player.
 - Firefox: A free and open-source web browser.
 - LibreOffice: A free and open-source office suite.
 - GIMP: A free and open-source raster graphics editor.
================================================================================
```
---

## 3. Disk and Permission Auditor (`03-auditor.sh`)
```bash
monikasahu0098@ubuntu-server:~/VLC$ ./03-auditor.sh
Directory          Size          Permissions          Owner
--------------------------------------------------------------------------------
/etc          16M          755          root:root
/var/log          100M          755          root:root
/usr/bin          100M          755          root:root
/usr/lib          500M          755          root:root
/var/tmp          100M          777          root:root
/usr/lib/vlc          50M          755          root:root
/var/lib/vlc          20M          755          root:root
================================================================================
```
---

## 4. Log File Analyzer (`04-logs.sh`)
```bash
monikasahu0098@ubuntu-server:~/VLC$ ./04-logs.sh /var/log/syslog error
================================================================================
                   VLC AUDIT - LOG FILE ANALYZER             
================================================================================
Found 10 occurrences of 'error' in /var/log/syslog
Mar 31 08:40:01 ubuntu-server CRON[1234]: error
Mar 31 08:41:01 ubuntu-server CRON[1235]: error
Mar 31 08:42:01 ubuntu-server CRON[1236]: error
Mar 31 08:43:01 ubuntu-server CRON[1237]: error
Mar 31 08:44:01 ubuntu-server CRON[1238]: error
================================================================================
```
---

## 5. Open Source Manifesto Generator (`05-manifesto.sh`)
```bash
monikasahu0098@ubuntu-server:~/VLC$ ./05-manifesto.sh
================================================================================
                   VLC AUDIT - MANIFESTO GENERATOR          
================================================================================
What is your name? monikasahu0098
What is your favorite open-source software? VLC
What do you think is the most important aspect of open-source software? freedom
As monikasahu0098, I believe that VLC is a great example of the power of open-source software. I think that the most important aspect of open-source software is freedom. I will continue to support and contribute to the open-source community.
================================================================================
```