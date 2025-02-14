#!/bin/bash
# Script for changing file permissions and ownership

echo "Setting permissions for a file..."
chmod 755 file.txt
ls -l file.txt

echo "Changing ownership of a file..."
sudo chown $USER file.txt
ls -l file.txt

# File operations
echo "Creating a new directory..."
mkdir my_folder
ls -ld my_folder

echo "Removing the directory..."
rmdir my_folder
ls -ld my_folder || echo "Directory removed"

echo "Creating an empty file..."
touch newfile.txt
ls -l newfile.txt
