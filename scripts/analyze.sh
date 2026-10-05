#!/usr/bin/env bash

# Task 07: complete this script.
# Usage: ./scripts/analyze.sh FILE

# TODO: validate arguments
if [[ $# -ne 1 ]]; then
    echo "Usage: ./scripts/analyze.sh FILE" >&2
    exit 1
fi
# TODO: validate file existence
if [[ ! -f "$1" ]]; then
    echo "Error: file not found: $1" >&2
    exit 1
fi
# TODO: print:
# Total ERROR: <number>
# Top Code: <code>
error_count=$(grep -c ' ERROR ' "$1")
echo "Total ERROR: $error_count"
top_code=$(grep ' ERROR ' "$1" | cut -d' ' -f5 | cut -d'=' -f2 | sort | uniq -c | sort -nr | head -n 1 | awk '{print $2}')
echo "Top Code: $top_code"