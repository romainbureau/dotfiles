#!/usr/bin/env bash

sleep 2

swaymsg exec "pulseaudio --daemonize"
swaymsg exec "redshift"
swaymsg exec "mako"
swaymsg exec "kanshi"
