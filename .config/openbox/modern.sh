#!/bin/bash

killall plank
killall xfce4-panel
killall dunst
killall picom
killall tint2
killall vala-panel

vala-panel &
#xfce4-panel &
plank &
dunst &
picom --experimental-backends &