#!/bin/bash

killall plank
killall xfce4-panel
killall dunst
killall picom
killall tint2
killall vala-panel

tint2 &
dunst -config /home/greyson/.config/dunst/taskbar &
picom --experimental-backends &
pcmanfm --desktop &
#nitrogen --restore