#!/bin/bash

function createBackup() {
  local backup_dir=$1
  local date=$(date +%Y-%m-%d)
  local backup_file="$backup_dir/backup-$date.tar.gz"

  tar -czf $backup_file /
}

# Get the backup directory 
read -p "Enter the name of the backup directory: " backup_dir

# Create backup
createBackup $backup_dir

echo "The backup has been created."
