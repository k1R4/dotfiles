#!/bin/sh
set -e
playerctl -p spotify status 2>/dev/null | grep -q "P*"
state="$(playerctl -p spotify status)"
if [ $state == 'Playing' ]; then
    suffix=""
elif [ $state == 'Paused' ]; then
    suffix=""   
fi
title="$(playerctl -p spotify metadata xesam:title)"
artist="$(playerctl -p spotify metadata xesam:artist)"
song="$artist - $title"
echo "${song:0:50}  $suffix"

