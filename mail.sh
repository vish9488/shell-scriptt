#!/bin/bash

# Prompt for email details
read -p "Enter recipient's email address: " recipient
read -p "Enter email subject: " subject
read -p "Enter email body: " body

# Send the email
echo "$body" | mail -s "$subject" "$recipient"

# Print a success message
echo "Email sent successfully to $recipient"
