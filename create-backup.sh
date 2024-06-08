#!/bin/bash

# Function to create a backup
create_backup() {
  local backup_dir=$1
  local date=$(date +%Y-%m-%d)
  local backup_file="$backup_dir/backup-$date.tar.gz"

  tar -czf "$backup_file" /
}

# Prompt for the backup directory
read -p "Enter the name of the backup directory: " backup_dir

# Create the backup
create_backup "$backup_dir"

# Display a confirmation message
echo "The backup has been created."
