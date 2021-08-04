#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch mybar
echo "---" | tee -a /tmp/mybar.log
polybar mybar -c ~/.config/polybar/i3/config >>/tmp/mybar.log 2>&1 & disown
echo "Bar launched..."
