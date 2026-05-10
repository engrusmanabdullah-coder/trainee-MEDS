#!/bin/bash

# Check arguments
if [ $# -ne 1 ]; then
    echo "Usage: $0 <logfile>"
    exit 1
fi

LOGFILE="$1"

# Verify file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: Log file not found."
    exit 1
fi

# Count patterns
errors=$(grep -c "ERROR" "$LOGFILE")
warnings=$(grep -c "WARNING" "$LOGFILE")
passes=$(grep -c "PASS" "$LOGFILE")

echo "===== Simulation Summary ====="
echo "ERRORS   : $errors"
echo "WARNINGS : $warnings"
echo "PASSED   : $passes"

# Exit code handling
if [ "$errors" -gt 0 ]; then
    echo "Simulation FAILED."
    exit 1
else
    echo "Simulation PASSED."
    exit 0
fi
