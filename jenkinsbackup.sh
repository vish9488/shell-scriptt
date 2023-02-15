#!/bin/bash

# Define variables
jenkins_url="http://localhost:8080"
jenkins_home="/var/lib/jenkins"
backup_dir="/opt/jenkins-backup"

# Create backup directory
mkdir -p $backup_dir

# Backup Jenkins
java -jar $jenkins_home/war/WEB-INF/jenkins-cli.jar -s $jenkins_url safe-shutdown
tar -czf $backup_dir/jenkins-backup-$(date +%F).tar.gz $jenkins_home
java -jar $jenkins_home/war/WEB-INF/jenkins-cli.jar -s $jenkins_url start

# Print a success message
echo "Jenkins backup completed successfully!"
