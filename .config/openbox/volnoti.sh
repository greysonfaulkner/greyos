#!/bin/bash

VOL_NUM=`volumectl | awk '{printf("%d", $2)}'`

~/.config/openbox/notify-send.sh --replace=555 --icon=~/.icons/TokyoNight/apps/symbolic/volume-knob-symbolic.svg "Volume" $VOL_NUM%