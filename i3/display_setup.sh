#!/bin/bash

# Detect connected displays
EXTERNAL_DISPLAY_DOCK=$(xrandr | grep 'DP-3-1 connected' | awk '{print $1}')  # Assuming dock uses DP-1
EXTERNAL_DISPLAY_HDMI=$(xrandr | grep 'HDMI-1 connected' | awk '{print $1}')
LAPTOP_DISPLAY=$(xrandr | grep 'eDP-1 connected' | awk '{print $1}')

# Check if dock is connected (if DP-1 exists)
if [ -n "$EXTERNAL_DISPLAY_DOCK" ]; then
    # Move main screen to dock's display and disable laptop screen
    xrandr --output "$LAPTOP_DISPLAY" --off \
           --output "$EXTERNAL_DISPLAY_DOCK" --primary --auto
    i3-msg "workspace 1, move workspace to output $EXTERNAL_DISPLAY_DOCK"
elif [ -n "$EXTERNAL_DISPLAY_HDMI" ]; then
    # HDMI is connected
    xrandr --output "$LAPTOP_DISPLAY" --auto --primary \
           --output "$EXTERNAL_DISPLAY_HDMI" --auto --right-of "$LAPTOP_DISPLAY"

    # Move workspace 6 to the HDMI monitor
    i3-msg "workspace 6, move workspace to output $EXTERNAL_DISPLAY_HDMI"
else
    # No external display connected, turn laptop screen back on
    xrandr --output "$LAPTOP_DISPLAY" --auto --primary
fi

