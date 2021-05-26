#!/bin/zsh

STDIN=$(cat)
xclip -sel clip -t image/png -i "/home/gl1tch/.emojis/$STDIN.png"
