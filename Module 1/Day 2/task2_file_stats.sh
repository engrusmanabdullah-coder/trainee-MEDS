#!/bin/bash

# Check arguments
if [ $# -ne 1 ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

DIR="$1"

# Verify directory
if [ ! -d "$DIR" ]; then
    echo "Error: Directory not found."
    exit 1
fi

# Count files
total_files=$(find "$DIR" -type f | wc -l)

# Count directories
total_dirs=$(find "$DIR" -type d | wc -l)

# Largest file
largest_file=$(find "$DIR" -type f -exec ls -s {} + | sort -nr | head -1)

# Most recently modified file
recent_file=$(find "$DIR" -type f -printf "%T@ %p\n" | sort -nr | head -1 | cut -d' ' -f2-)

echo "===== File Statistics ====="
echo "Total files       : $total_files"
echo "Total directories : $total_dirs"

echo ""
echo "Largest file:"
echo "$largest_file"

echo ""
echo "Most recently modified file:"
echo "$recent_file"
