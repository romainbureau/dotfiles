#!/bin/sh
IMAGE=/tmp/i3lock.png
scrot $IMAGE
convert $IMAGE -blur 14x14 $IMAGE
i3lock -i $IMAGE
rm $IMAGE
sleep 1
#xset dpms force standby
