#!/bin/bash

# ============================================================================
# Script 1: System Identity Report
# Author: Isha Soni | Roll: 24BCG10022 | Course: Open Source Software | Software: Git
# ============================================================================

STUDENT_NAME="Isha Soni"
STUDENT_ROLL="24BCG10022"
SOFTWARE_CHOICE="Git"
SOFTWARE_LICENSE="GNU General Public License v2 (GPL v2)"

KERNEL=$(uname -r)
DISTRO=$(cat /etc/os-release | grep "^NAME=" | cut -d'"' -f2)
USER_NAME=$(whoami)
USER_HOME=$(echo $HOME)
CURRENT_DATE=$(date '+%d %B %Y')
CURRENT_TIME=$(date '+%H:%M:%S')
UPTIME=$(uptime -p)

echo ""
echo "╔════════════════════════════════════════════════════════════════╗"
echo "║         OPEN SOURCE AUDIT — SYSTEM IDENTITY REPORT             ║"
echo "╚════════════════════════════════════════════════════════════════╝"
echo ""

echo "Student Information:"
echo "  Name       : $STUDENT_NAME"
echo "  Roll No.   : $STUDENT_ROLL"
echo "  Software   : $SOFTWARE_CHOICE"
echo ""

echo "Linux System Information:"
echo "  Distribution   : $DISTRO"
echo "  Kernel Version : $KERNEL"
echo "  Current User   : $USER_NAME"
echo "  Home Directory : $USER_HOME"
echo ""

echo "System Status:"
echo "  Date & Time    : $CURRENT_DATE at $CURRENT_TIME"
echo "  System Uptime  : $UPTIME"
echo ""

echo "Open Source Declaration:"
echo "╭────────────────────────────────────────────────────────────────╮"
echo "│ This system runs on a foundation of shared, open-source code.  │"
echo "│                                                                │"
echo "│ $SOFTWARE_CHOICE is licensed under: $SOFTWARE_LICENSE       │"
echo "│                                                                │"
echo "│ This means the source code is free to use, study, modify,     │"
echo "│ and distribute — benefiting developers and users worldwide.   │"
echo "╰────────────────────────────────────────────────────────────────╯"
echo ""

echo "Report generated on: $CURRENT_DATE at $CURRENT_TIME"
echo ""
