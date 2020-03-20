#!/usr/bim/env bash

function youdlplaylist() {
  local URL="$1"
  youtube-dl -f best -o '%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s' $URL
}

function youdlvideo() {
  local URL="$1"
  youtube-dl -f best -o '%(title)s.%(ext)s' --restrict-filenames $URL
}
