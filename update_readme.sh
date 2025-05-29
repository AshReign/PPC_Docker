#!/bin/bash

USERNAME=$1
TIMESTAMP=$(date)

{
    echo -e "\n## New Analysis Report"
    echo "**Contributor:** $USERNAME"
    echo "**Timestamp:** $TIMESTAMP"
    echo ""
    cat results.txt
} >> README.md
