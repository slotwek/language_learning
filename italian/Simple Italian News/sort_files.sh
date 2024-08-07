#!/bin/bash

# Input file
input_file="EasyItalianNews_2018-09-14.mp3"
input_file=$1

# Extract year and month from the filename
year=$(echo $input_file | cut -d'_' -f2 | cut -d'-' -f1)
month=$(echo $input_file | cut -d'_' -f2 | cut -d'-' -f2)

# Create the target directory structure
mkdir -p $year/$month

# Move the file to the new directory
mv $input_file $year/$month/

echo "File moved to $year/$month/$input_file"
