#!/bin/bash

BATT=`acpi | awk '{printf($4)}'`

~/.config/openbox/notify-send.sh --replace=555 --icon=/home/$USER/.icons/tokyo-night/apps/symbolic/battery-symbolic.svg "Battery" $BATT