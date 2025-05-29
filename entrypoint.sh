#!/bin/bash

python3 analyze_vowels.py > results.txt
git config --global --add safe.directory /github/workspace
USERNAME=$(git log -1 --pretty=format:'%an')
./update_readme.sh "$USERNAME"
