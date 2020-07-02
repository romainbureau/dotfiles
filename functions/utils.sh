#!/usr/bin/env bash

function screenshot() {
	local date="$(date +'%Y-%m-%d-%H%M%S')"
  local dir="$HOME/Screenshots/"
  mkdir -p "$dir"
	grim -g "$(slurp)" "$dir/$date.png"
}
