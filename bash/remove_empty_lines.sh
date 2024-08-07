#!/bin/bash

# Input subtitle file
subtitle_file="$1"

# Remove empty lines
sed -i '/^$/d' "$subtitle_file" > ${1}.txt
