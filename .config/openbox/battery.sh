#!/bin/bash

BATT=`acpi | awk '{printf($4)}' | sed -e s/,//`

~/.config/openbox/notify-send.sh --replace=555 --icon=/home/$USER/.icons/tokyo-night/apps/symbolic/battery-symbolic.svg "Battery" $BATT