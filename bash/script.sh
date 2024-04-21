#!/bin/bash

yt-dlp -o "./%(playlist)s/2%(playlist_index)02d_%(title)s.%(ext)s"  -x --audio-format mp3  https://www.youtube.com/playlist?list=PLzMffrYfWh46v9uXukWe4KpCwgi41y1rC  --download-archive archive.txt
