#!/bin/bash

yt-dlp -o "./%(playlist)s/3%(playlist_index)02d_%(title)s.%(ext)s"  \
	-x --audio-format mp3 \
	${1} \
	--download-archive archive_como_aprender.txt
