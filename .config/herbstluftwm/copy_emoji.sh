#!/bin/bash

STDIN=$(cat)
echo $STDIN
xclip -sel clip -t image/png -i "/home/zilch/.emojis/$STDIN.png"
