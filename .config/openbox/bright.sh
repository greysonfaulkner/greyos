#!/bin/bash

sleep 0.1

BRIGHT=`brightnessctl i | awk '{printf( $4)}' | sed -e 's/class//' | sed -e 's/(//' | sed -e 's/)//'` # System Agnostic

~/.config/openbox/notify-send.sh --replace=555 --icon=/home/$USER/.icons/tokyo-night/apps/symbolic/display-brightness-symbolic.svg "Brightness" $BRIGHT

