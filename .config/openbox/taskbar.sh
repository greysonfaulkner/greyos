#!/bin/bash

killall vala-panel
killall plank
killall xfce4-panel
killall dunst

xfce4-panel &
dunst -config ~/.config/dunst/dunstrc-taskbar &