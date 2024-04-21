#!/bin/bash

yt-dlp -o "./%(playlist)s/3%(playlist_index)02d_%(title)s.%(ext)s" \
	--write-auto-sub --skip-download --sub-lang pt-br \
	${1} \
	--download-archive archive.txt

# yt-dlp -o "./%(playlist)s/2%(playlist_index)02d_%(title)s.%(ext)s" \
#       	-x --audio-format mp3  \
# 	${1} \
# 	--download-archive archive.txt
