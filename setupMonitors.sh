#!/bin/sh

# Get number of connected monitors
connectedOutputs=$(xrandr | grep " connected" | wc -l)

if [ $connectedOutputs -eq 3 ]; then
	sh $HOME/.screenlayout/three_monitor.sh
else
	sh $HOME/.screenlayout/single_monitor.sh
fi
