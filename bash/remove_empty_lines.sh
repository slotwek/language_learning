#!/bin/bash

# Input subtitle file
subtitle_file="$1"

# Remove empty lines
sed '/^$/d' "$subtitle_file"  > ___.txt
sed -i '/^$/d' "$subtitle_file" 
