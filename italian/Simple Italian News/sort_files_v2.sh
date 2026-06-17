#!/usr/bin/env bash

shopt -s nullglob

for file in EasyItalianNews_*.txt; do
    # Extract date part: YYYY-MM-DD
    date_part=$(echo "$file" | grep -oE '[0-9]{4}-[0-9]{2}-[0-9]{2}')

    [[ -z "$date_part" ]] && continue

    year=${date_part:0:4}
    month=${date_part:5:2}

    # Determine quarter
    case $month in
        01|02|03) quarter="Q1" ;;
        04|05|06) quarter="Q2" ;;
        07|08|09) quarter="Q3" ;;
        10|11|12) quarter="Q4" ;;
        *) continue ;;
    esac

    target_dir="txt/$year-$quarter"

    mkdir -p "$target_dir"
    mv "$file" "$target_dir/"
done
