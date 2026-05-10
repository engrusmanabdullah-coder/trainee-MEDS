#!/bin/bash

# Check arguments
if [ $# -ne 3 ]; then
    echo "Usage: $0 <prefix> <suffix> <directory>"
    exit 1
fi

PREFIX="$1"
SUFFIX="$2"
DIR="$3"

# Verify directory
if [ ! -d "$DIR" ]; then
    echo "Error: Directory does not exist."
    exit 1
fi

# Rename files
for file in "$DIR"/${PREFIX}_old_*.sv; do

    # Check if files exist
    [ -e "$file" ] || {
        echo "No matching files found."
        exit 1
    }

    filename=$(basename "$file")

    # Extract number N
    number=$(echo "$filename" | sed -E "s/${PREFIX}_old_([0-9]+)\.sv/\1/")

    newname="${SUFFIX}_new_${number}.sv"

    mv "$file" "$DIR/$newname"

    echo "Renamed:"
    echo "$filename -> $newname"

done

echo "Batch rename complete."
