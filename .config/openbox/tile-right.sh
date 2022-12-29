#!/bin/bash

MSTATE=`xinput --query-state 12 | awk '{printf( $0)}' | awk '{printf( $4)}' | sed -e 's/button\[1\]\=//'`

if [ "$MSTATE" = "down" ]
	then xdotool key super+alt+Right
fi