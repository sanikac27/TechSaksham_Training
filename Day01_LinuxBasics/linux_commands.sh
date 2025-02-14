#!/bin/bash

# Print the current working directory
echo "Current Directory:"
pwd

echo "----------------------"

# List files and directories in the current location
echo "Listing Files:"
ls -la

echo "----------------------"

# Create a new directory
echo "Creating a directory named 'my_folder'"
mkdir my_folder

echo "----------------------"

# Change into the new directory
echo "Navigating into 'my_folder'"
cd my_folder
pwd

echo "----------------------"

# Create an empty file
echo "Creating a file named 'myfile.txt'"
touch myfile.txt

echo "----------------------"

# Display files in the directory
echo "Listing files in 'my_folder'"
ls -la

echo "----------------------"

# Write text to the file
echo "Writing to 'myfile.txt'"
echo "Hello, Linux!" > myfile.txt
cat myfile.txt

echo "----------------------"

# Go back to the previous directory
echo "Moving back to the previous directory"
cd ..
pwd

echo "----------------------"

# Remove the created file and directory
echo "Removing 'myfile.txt' and 'my_folder'"
rm my_folder/myfile.txt
rmdir my_folder

echo "Script execution completed."
