#!/bin/sh

ogg_files=`cd deArnise/Audio/; ls pgnal*.ogg;`

for file in $ogg_files; do
  echo Converting $file
  deArnise/Audio/sox  deArnise/Audio/$file deArnise/Audio/${file%.ogg}.wav
  rm override/$file
done