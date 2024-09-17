#!/bin/bash

# Author: Duy Tran
# Date Created: 14Aug2024
# Date Modified: 14Aug2024

# Description
# Create a backup in the users current directory of all files in the home directory

# Usage:
# backup_script

echo "Hello $USER"
echo "I will now backup your home directory, $(echo $HOME)"

currentdir=$(pwd)
echo "You are running this script from $currentdir"


# Remove -v (verbose) option which listed out archiving process (output of tar command)
# to make the echo command more visible
tar -cf $currentdir/my_backup_"$(date +%d-%m-%Y_%H-%M-%S)".tar $HOME/* 2>/dev/null

echo "Therefore, I will save the backup in $currentdir"
echo "Backup Completed Successfully."

