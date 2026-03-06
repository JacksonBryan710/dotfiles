#!/bin/bash
# Monitors the ThinkPad tablet mode switch and starts/stops iio-hyprland accordingly.

TABLET_MODE_FILE="/sys/devices/platform/thinkpad_acpi/hotkey_tablet_mode"

# Wait for Hyprland to fully settle before starting
sleep 2

prev_state=$(< "$TABLET_MODE_FILE")

# Start iio-hyprland immediately if already in tablet mode
if [ "$prev_state" = "1" ]; then
    iio-hyprland &>/dev/null &
fi

while true; do
    state=$(< "$TABLET_MODE_FILE")
    if [ "$state" != "$prev_state" ]; then
        if [ "$state" = "1" ]; then
            iio-hyprland &>/dev/null &
        else
            pkill iio-hyprland 2>/dev/null
            hyprctl keyword monitor "eDP-1,preferred,auto,1.25,transform,0"
        fi
        prev_state=$state
    fi
    sleep 0.1
done
