#!/bin/bash

VOL_NUM=`volumectl | awk '{printf("%d", $2)}'`

~/.config/openbox/notify-send.sh --replace=555 --icon=/home/$USER/.icons/tokyo-night/apps/symbolic/volume-knob-symbolic.svg "Volume" $VOL_NUM%