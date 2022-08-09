#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar-1.log /tmp/polybar-2.log /tmp/polybar-3.log /tmp/polybar-4.log
polybar main >>/tmp/polybar-1.log 2>&1 &
sleep 2
polybar workspace >>/tmp/polybar-2.log 2>&1 &
polybar header >>/tmp/polybar-3.log 2>&1 &
#polybar music >>/tmp/polybar-4.log 2>&1 &

echo "Bars launched..."
