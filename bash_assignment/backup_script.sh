#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 source_directory destination_directory"
    exit 1
fi

# Assign arguments to variables
source_directory="$1"
destination_directory="$2"

# Check if the source directory exists
if [ ! -d "$source_directory" ]; then
    echo "Error: Source directory '$source_directory' does not exist."
    exit 1
fi

# Check if the destination directory exists, if not, create it
if [ ! -d "$destination_directory" ]; then
    mkdir -p "$destination_directory"
fi

# Create a timestamp for the backup file
timestamp=$(date "+%Y%m%d_%H%M%S")
backup_filename="backup_${timestamp}.tar.gz"

# Create a tar archive of the source directory and save it in the destination directory
tar -czvf "${destination_directory}/${backup_filename}" -C "$source_directory" .

echo "Backup completed successfully. Backup file: ${destination_directory}/${backup_filename}"

