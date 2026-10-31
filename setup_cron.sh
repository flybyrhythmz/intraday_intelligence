#!/bin/bash
# -----------------------------------------------------------------------------
# Automated Crontab Installer for Intraday Intelligence Agent
# Author: Chaitanya Chennavajjula
# -----------------------------------------------------------------------------

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PYTHON_BIN="$(which python3)"
AGENT_PATH="$SCRIPT_DIR/market_agent.py"
LOG_PATH="$SCRIPT_DIR/agent.log"

CRON_JOB="50 8 * * 1-5 $PYTHON_BIN $AGENT_PATH --notify --all >> $LOG_PATH 2>&1"

echo "=========================================================="
echo " Pre-Market Intraday Intelligence Agent Setup"
echo " Author: Chaitanya Chennavajjula"
echo "=========================================================="
echo "Script location: $AGENT_PATH"
echo "Python binary  : $PYTHON_BIN"
echo "Schedule       : 08:50 AM IST (Monday to Friday)"
echo ""

(crontab -l 2>/dev/null | grep -v "$AGENT_PATH"; echo "$CRON_JOB") | crontab -

echo "✓ Cron job successfully scheduled!"
echo "Current crontab entries:"
crontab -l | grep "market_agent.py"
echo "=========================================================="
