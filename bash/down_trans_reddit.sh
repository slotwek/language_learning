#!/bin/bash

# (not working fully)
# Provide:
# 1 - language, e.g. en, it, pt-br
# 2 - url
yt-dlp --skip-download --write-subs --write-auto-subs --sub-lang ${1} --sub-format ttml --convert-subs srt --output "transcript.%(ext)s" ${2} && sed -i '' -e '/^[0-9][0-9]:[0-9][0-9]:[0-9][0-9].[0-9][0-9][0-9] --> [0-9][0-9]:[0-9][0-9]:[0-9][0-9].[0-9][0-9][0-9]$/d' -e '/^[[:digit:]]\{1,4\}$/d' -e 's/<[^>]*>//g' ./transcript.en.srt && sed -e 's/<[^>]*>//g' -e '/^[[:space:]]*$/d' transcript.en.srt > output.txt && rm transcript.en.srt 


