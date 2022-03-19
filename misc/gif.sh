#!/bin/sh
# Based on http://blog.pkh.me/p/21-high-quality-gif-with-ffmpeg.html

scale="${3:-800}"
fps="${4:-15}"

palette="palette.png"
filters="fps=$fps,scale=$scale:-1:flags=lanczos"

ffmpeg -v warning -i $1 -vf "$filters,palettegen" -y $palette
ffmpeg -v warning -i $1 -i $palette -lavfi "$filters,paletteuse=dither=sierra2" -y $2
rm $palette

gifsicle --optimize=3 --lossy=30 -i $2 -o $2
