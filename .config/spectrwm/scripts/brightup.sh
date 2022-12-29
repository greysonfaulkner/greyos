#!/bin/bash

brightnessctl s 5%+

mpv --keep-open=no --volume=80 --no-video ~/.sounds/vol.wav

#BRIGHT=`brightnessctl i | awk '{printf( $4)}' | sed -e 's/class//' | sed -e 's/(//' | sed -e 's/)//'` # System Agnostic

#~/.config/openbox/notify-send.sh --replace=555 --icon=/home/$USER/.icons/tokyo-night/apps/symbolic/display-brightness-symbolic.svg "Brightness" $BRIGHT