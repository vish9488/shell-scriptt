#!/bin/bash

# Prompt for username and password
read -p "Enter username: " username
read -p "Enter password: " password

# Create the user
useradd -m -s /bin/bash $username

# Set the user's password
echo "$username:$password" | chpasswd

# Print a success message
echo "User $username created successfully!"
