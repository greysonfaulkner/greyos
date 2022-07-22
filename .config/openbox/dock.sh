#!/bin/bash

killall vala-panel
killall plank
killall xfce4-panel
killall dunst

vala-panel &
plank &
dunst -config ~/.config/dunst/dunstrc-dock &