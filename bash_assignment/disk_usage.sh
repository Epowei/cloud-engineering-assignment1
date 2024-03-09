#!/bin/bash

# Default value for the number of entries
num_entries=8

# Parse command line arguments
while getopts ":dn:" opt; do
  case $opt in
    d)
      list_all=true
      ;;
    n)
      num_entries=$OPTARG
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
    :)
      echo "Option -$OPTARG requires an argument." >&2
      exit 1
      ;;
  esac
done

# Shift the command line arguments to get the list of directories
shift $((OPTIND-1))
directories=("$@")

# Check if at least one directory is provided
if [ $# -eq 0 ]; then
  echo "Usage: $0 [-d] [-n NUM] directory1 [directory2 ...]"
  exit 1
fi

# Loop through the provided directories
for directory in "${directories[@]}"; do
  echo "Disk usage for $directory:"
  
  if [ "$list_all" = true ]; then
    # List all files and directories
    du -h --max-depth=1 "$directory"
  else
    # List top N entries
    du -h --max-depth=1 "$directory" | sort -rh | head -n "$num_entries"
  fi

  echo "------------------------"
done
