#!/bin/bash

# Prompt for folder or file name
read -p "Enter folder or file name: " name

# Search for the folder or file
find / -name "$name"

# Print a success message
echo "Search complete"
