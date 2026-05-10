#!/bin/bash

# Check argument count
if [ $# -ne 1 ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

DIR="$1"

# Check if directory exists
if [ ! -d "$DIR" ]; then
    echo "Error: Directory does not exist."
    exit 1
fi

# Create target folders
mkdir -p "$DIR/verilog"
mkdir -p "$DIR/c_code"
mkdir -p "$DIR/docs"
mkdir -p "$DIR/others"

# Organize files
for file in "$DIR"/*; do
    if [ -f "$file" ]; then
        case "${file##*.}" in
            sv)
                mv "$file" "$DIR/verilog/"
                ;;
            c)
                mv "$file" "$DIR/c_code/"
                ;;
            txt)
                mv "$file" "$DIR/docs/"
                ;;
            *)
                mv "$file" "$DIR/others/"
                ;;
        esac
    fi
done

echo "Files organized successfully."
