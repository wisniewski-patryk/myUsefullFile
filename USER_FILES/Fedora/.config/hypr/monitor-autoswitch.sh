#!/bin/bash

# Check currently connected monitors
CONNECTED=$(hyprctl monitors -j | jq -r '.[].name')

if echo "$CONNECTED" | grep -q "HDMI-A-1" && echo "$CONNECTED" | grep -q "DP-1"; then
    # Docked mode (two external monitors)
    hyprctl keyword source "~/.config/hypr/monitors-dock.conf"
else
    # Laptop mode
    hyprctl keyword source "~/.config/hypr/monitors-laptop.conf"
fi

