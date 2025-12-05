#!/bin/bash

CHOICE=$(echo -e "󰐥\n󰜉\n󰌾" | rofi -dmenu -p "" -theme ~/.config/rofi/power-menu.rasi -selected-row 1)

case $CHOICE in
    "󰐥")
        systemctl poweroff
        ;;
    "󰜉")
        systemctl reboot
        ;;
    "󰌾")
        killall rofi
        sleep 0.5 && hyprlock
        ;;
esac
