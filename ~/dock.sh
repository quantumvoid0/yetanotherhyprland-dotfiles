#!/bin/bash
# this script is to keybind super + w to hide and show the dock
# Check if nwg-dock-hyprland is running
if pgrep -f "nwg-dock-hyprland -x -i 55 -mb 10 -hd 999" > /dev/null; then
    # If it is running, kill the process
    echo "Stopping nwg-dock-hyprland..."
    pkill -f "nwg-dock-hyprland -x -i 55 -mb 10 -hd 999"
else
    # If it is not running, start the process
    echo "Starting nwg-dock-hyprland..."
    nwg-dock-hyprland -x -i 55 -mb 10 -hd 999 &
fi

