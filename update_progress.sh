#!/bin/bash

# Specify the path to your README file
readme_path="./Progress.md"

# Get the current changed Swift files
changed_files=$(git diff --name-only -- '*.swift')

# Get the current date
current_date=$(date +"%Y %b %e, %l:%M %p")

for file in $changed_files; do
    echo -e "| $current_date | $file |           |" >> "$readme_path"
done

echo -e "\nTable updated in $readme_path"
