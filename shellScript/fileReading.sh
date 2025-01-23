#!/bin/bash

# Step 1: Check if the user has provided a path
if [ "$#" -lt 1 ]; then
    echo "Please provide a file or directory path"
    exit 1
fi

# Step 2: Get the directory or file path from the command line argument
path=$1

# Check if the path exists
if [ ! -e "$path" ]; then
    echo "No such file or directory: $path"
    exit 1
fi

# Step 3: If the path is a directory, find all .log files, else just use the file
if [ -d "$path" ]; then
    files=$(find "$path" -type f -name "*.log")
else
    files="$path"
fi

# Step 4: Loop through each file and process
while IFS= read -r file; do
    echo "Processing file: $file"

    # Step 5: Extract first 5 lines and last 5 lines, then remove "ERROR" lines using sed
    echo "First 5 lines (without ERROR):"
    head -n 5 "$file" | sed '/ERROR/d'

    echo "Last 5 lines (without ERROR):"
    tail -n 5 "$file" | sed '/ERROR/d'

    # Step 6: Count occurrences of "INFO" using awk
    info_count=$(awk '/INFO/ {count++} END {print count}' "$file")
    echo "Number of INFO entries: $info_count"

    # Step 7: Use wc to count words, lines, and characters in the file
    wc_output=$(wc "$file")
    echo "Word, line, and character count: $wc_output"

    echo "----------------------------"
done <<< "$files"

