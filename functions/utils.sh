#!/usr/bin/env bash

function screenshot() {
	local date="$(date +'%Y-%m-%d-%H%M%S')"
	grim -g "$(slurp)" "$date.png"
}
