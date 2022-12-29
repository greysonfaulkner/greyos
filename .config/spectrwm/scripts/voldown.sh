#!/bin/bash

mpv --keep-open=no --volume=80 --no-video ~/.sounds/vol.wav

pactl set-sink-volume @DEFAULT_SINK@ -5%

#VOL_NUM=`volumectl | awk '{printf("%d", $2)}'`

#/home/greyson/.config/openbox/notify-send.sh --replace=555 --icon=/home/greyson/.icons/TokyoNight/apps/symbolic/volume-knob-symbolic.svg "Volume" $VOL_NUM%