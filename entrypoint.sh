#!/bin/bash

python3 analyze_vowels.py > results.txt
USERNAME=$(git log -1 --pretty=format:'%an')
./update_readme.sh "$USERNAME"
