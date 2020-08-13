#!/usr/bin/bash

function ffmpeg_4k_to_1080p {
  local input="$1"
  local basefilename="$(echo $input|cut -d. -f1)"
  local extension="$(echo $input|cut -d. -f2)"
  local output="./${basefilename}-1080p.${extension}"
  ffmpeg -i $input -vf scale=1920:1080 -c:v libx264 -crf 18 -preset medium -c:a copy $output
}
