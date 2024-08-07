#!/bin/bash

# Get subtitles
# yt-dlp --skip-download \
#     --write-sub --write-auto-subs --sub-lang ${1} --sub-format vtt ${2} \
#     -o "./%(playlist)s/%(playlist_index)03d_%(title)s.%(ext)s" \
#     --download-archive download_archive.txt \
#     --match-filter "duration > 600"

for n in LearnAmo_raw/*.vtt; do
    echo $n
    filename=$(basename "${n}")
    bfn=$($filename%%.*)
    # echo $filename, $bfn

    # sed -e '/^[0-9][0-9]:..*/d' -e '/^$/d' -e '/^\[..*\]$/d' ${n} > ${n}.txt
done
