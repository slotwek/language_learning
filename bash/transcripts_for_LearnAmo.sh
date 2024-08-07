#!/bin/bash

# Get subtitles
yt-dlp --skip-download --write-sub --write-auto-subs --sub-lang ${1} --sub-format vtt ${2} -o "./%(playlist)s/%(playlist_index)03d_%(title)s.%(ext)s" --download-archive download_archive.txt

# sed -e '/^[0-9][0-9]:..*/d' -e '/^$/d' -e '/^\[..*\]$/d' transcript.it.vtt
