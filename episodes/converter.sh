#!/bin/bash
for f in *.mp3
do 
    echo "Processing $f file.."; 
    name=$(echo "$f" | cut -f 1 -d '.')
    ffmpeg -i $f -c:a aac -vbr 4 $name.m4a
    ffmpeg -i $f -acodec libvorbis $name.ogg
done