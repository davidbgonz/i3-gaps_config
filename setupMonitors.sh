#!/bin/sh

# Get number of connected monitors
connectedOutputs=$(xrandr | grep " connected" | wc -l)

if [ $connectedOutputs -eq 3 ]; then
	sh $HOME/.screenlayout/three_monitor.sh
elif [ $connectedOutputs -eq 2 ]; then
	sh $HOME/.screenlayout/dual_monitor_dock.sh
else
	sh $HOME/.screenlayout/single_monitor.sh
fi

# Set backgrounds for connected monitors
#feh --randomize --bg-scale ~/Pictures/material_*
feh --bg-fill /usr/share/backgrounds/static/lan-before-time.jpg
