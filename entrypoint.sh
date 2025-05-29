#!/bin/bash

git config --global --add safe.directory /github/workspace
python3 analyze_vowels.py > results.txt
USERNAME=$(git log -1 --pretty=format:'%an')
./update_readme.sh "$USERNAME"
