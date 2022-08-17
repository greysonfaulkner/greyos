#!/bin/bash
#   ___ ___ _____   _____  ___  _  _   ___ _  _   _ _    _  ___  _ ___ ___
#  / __| _ \ __\ \ / / __|/ _ \| \| | | __/_\| | | | |  | |/ / \| | __| _ \
# | (_ |   / _| \ V /\__ \ (_) | .` | | _/ _ \ |_| | |__| ' <| .` | _||   /
#  \___|_|_\___| |_| |___/\___/|_|\_| |_/_/ \_\___/|____|_|\_\_|\_|___|_|_\

SLEEP_SEC=1

#loops forever outputting a line every SLEEP_SEC secs
while :; do
cairo-coloremoji
#Battery
        BAT=`acpi -b`
        CHARGE=`acpi -b | awk '{printf("%d", $4)}'`
        AC=`acpi -a | awk '{printf("%s", $3)}'`
        # if AC connected
        if [ "$AC" = 'on-line' ]
        then
                #if battery connected and charging
                if [ -n "$BAT" ]
                then
			if [ "${CHARGE}" = "100" ]
			then
				POWER="+@fg=1;${CHARGE}%"
			else
				POWER="+@fg=3;${CHARGE}%"
			fi
                else
                        POWER="AC"
                fi
        else # hence is not on AC so is discharging battery
                POWER="${CHARGE}%"
                #POWER="${CHARGE}% disch"
                if [ "$CHARGE" -gt "25" ]
                then
                POWER="${CHARGE}%"
                else POWER="+@fg=2;${CHARGE}%"
                fi
        fi
        POWER_STR="$POWER"

#Volume
        VOL_NUM=`volumectl | awk '{printf("%d", $2)}'`
        VOL_STR="$VOL_NUM%"

#Screen Brightness
		LUM_STR=`brightnessctl i | awk '{printf( $4)}' | sed -e 's/class//' | sed -e 's/(//' | sed -e 's/)//'` # System Agnostic

#Display Currently Playing Song on Spotifyd
        # SPT_SHORT=`cat /home/greyson/.config/spotifyd/now_playing.txt | awk '{print $4,$5,$6,$7,$8,$9}'`
        #SPT_STR=$SPT_SHORT

#Output
        echo -e "+@fn=0; +@fg=0;Volume: +@fg=1; $VOL_STR +@fg=0; Brightness: +@fg=1; $LUM_STR +@fg=0; Battery: +@fg=1; $POWER_STR"  #Now Playing: +@fg=1; $SPT_SHORT


        sleep $SLEEP_SEC
done
