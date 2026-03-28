#!/bin/bash

# ============================================================================
# Script 2: FOSS Package Inspector
# Author: Isha Soni | Roll: 24BCG10022 | Course: Open Source Software | Software: Git
# ============================================================================

PACKAGE="git"

echo ""
echo "╔════════════════════════════════════════════════════════════════╗"
echo "║           FOSS PACKAGE INSPECTOR — Git Audit                   ║"
echo "║          Student: Isha Soni (24BCG10022)                       ║"
echo "╚════════════════════════════════════════════════════════════════╝"
echo ""

echo "Checking if '$PACKAGE' is installed..."
echo ""

if command -v dpkg &>/dev/null && dpkg -l | grep "^ii.*$PACKAGE" &>/dev/null; then
    echo "✓ Package '$PACKAGE' is INSTALLED on this system."
    echo ""
    echo "Package Details (from dpkg):"
    echo "───────────────────────────────────────────"
    dpkg -l | grep "^ii.*$PACKAGE"
    echo ""
    echo "Additional info:"
    dpkg -s $PACKAGE | grep -E 'Version|Description'
    echo ""

elif command -v git &>/dev/null; then
    echo "✓ Git command found in system PATH"
    echo ""
    echo "Git Version:"
    echo "───────────────────────────────────────────"
    git --version
    echo ""

else
    echo "✗ Package '$PACKAGE' is NOT installed on this system."
    echo ""
fi

echo ""
echo "═══════════════════════════════════════════════════════════════"
echo "OPEN SOURCE PHILOSOPHY NOTES:"
echo "═══════════════════════════════════════════════════════════════"
echo ""

case $PACKAGE in
    git)
        echo "📌 Git (GNU General Public License v2)"
        echo ""
        echo "\"Git is fundamentally a peer-to-peer tool, not a client-server tool.\""
        echo "                                    — Linus Torvalds, 2005"
        echo ""
        echo "Why Git was created:"
        echo "  • Linus Torvalds needed a fast, distributed version control system"
        echo "  • The BitKeeper license became proprietary (not free)"
        echo "  • Git was built to replace it — free, open, and powerful"
        echo "  • Now used by millions of developers worldwide"
        echo ""
        echo "The GPL v2 license ensures:"
        echo "  ✓ Freedom to use Git for any purpose"
        echo "  ✓ Freedom to study how it works"
        echo "  ✓ Freedom to modify and improve it"
        echo "  ✓ Freedom to share copies and modifications"
        echo ""
        ;;
esac

echo "═══════════════════════════════════════════════════════════════"
echo ""
