#!/bin/bash

# Example of usage:
# ./convert_vtt_into_text.sh "201_O que aconteceu antes da História？ Origem Humana.pt-BR.vtt"

input=${1}
filename=$(basename "${1}")
bname=${filename%%.*}

sed '/^00:/d; /^$/d; s/&nbsp;/ /g' "${input}" | tr '\r\n' ' ' | sed "s/Este vídeo foi..*//" | sed 's/\.  /\.\r\n/g' | sed 's/  */ /g' > "${bname}.txt"

