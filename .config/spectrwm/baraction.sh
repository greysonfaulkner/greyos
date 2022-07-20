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
       LUM_RAW=`brightnessctl g`
       if [ "$LUM_RAW" = 0 ]
        then LUM="0%"
       elif [ "$LUM_RAW" = 13 ]
        then LUM="5%"
		elif [ "$LUM_RAW" = 8 ]
        then LUM="5%"
		elif [ "$LUM_RAW" = 26 ]
        then LUM="10%"
		elif [ "$LUM_RAW" = 21 ]
        then LUM="10%"
        elif [ "$LUM_RAW" = 39 ]
        then LUM="15%"
		elif [ "$LUM_RAW" = 34 ]
        then LUM="15%"
        elif [ "$LUM_RAW" = 52 ]
        then LUM="20%"
		elif [ "$LUM_RAW" = 47 ]
        then LUM="20%"
        elif [ "$LUM_RAW" = 65 ]
        then LUM="25%"
		elif [ "$LUM_RAW" = 60 ]
        then LUM="25%"
		elif [ "$LUM_RAW" = 73 ]
        then LUM="30%"
        elif [ "$LUM_RAW" = 78 ]
        then LUM="30%"
        elif [ "$LUM_RAW" = 91 ]
        then LUM="35%"
		elif [ "$LUM_RAW" = 86 ]
        then LUM="35%"
        elif [ "$LUM_RAW" = 104 ]
        then LUM="40%"
		elif [ "$LUM_RAW" = 99 ]
        then LUM="40%"
        elif [ "$LUM_RAW" = 117 ]
        then LUM="45%"
		elif [ "$LUM_RAW" = 112 ]
        then LUM="45%"
        elif [ "$LUM_RAW" = 130 ]
        then LUM="50%"
		elif [ "$LUM_RAW" = 125 ]
        then LUM="50%"
		elif [ "$LUM_RAW" = 138 ]
        then LUM="55%"
        elif [ "$LUM_RAW" = 143 ]
        then LUM="55%"
        elif [ "$LUM_RAW" = 156 ]
        then LUM="60%"
		elif [ "$LUM_RAW" = 151 ]
        then LUM="60%"
		elif [ "$LUM_RAW" = 164 ]
        then LUM="65%"
        elif [ "$LUM_RAW" = 169 ]
        then LUM="65%"
		elif [ "$LUM_RAW" = 177 ]
        then LUM="70%"
        elif [ "$LUM_RAW" = 182 ]
        then LUM="70%"
		elif [ "$LUM_RAW" = 190 ]
        then LUM="75%"
        elif [ "$LUM_RAW" = 195 ]
        then LUM="75%"
        elif [ "$LUM_RAW" = 208 ]
        then LUM="80%"
		elif [ "$LUM_RAW" = 203 ]
        then LUM="80%"
        elif [ "$LUM_RAW" = 221 ]
        then LUM="85%"
		elif [ "$LUM_RAW" = 216 ]
        then LUM="85%"
        elif [ "$LUM_RAW" = 234 ]
        then LUM="90%"
		elif [ "$LUM_RAW" = 229 ]
        then LUM="90%"
        elif [ "$LUM_RAW" = 247 ]
        then LUM="95%"
		elif [ "$LUM_RAW" = 242 ]
        then LUM="95%"
        elif [ "$LUM_RAW" = 255 ]
        then LUM="100%"
        else LUM="$LUM_RAW"
        fi
        LUM_STR="$LUM"

#Display Currently Playing Song on Spotifyd
        # SPT_SHORT=`cat /home/greyson/.config/spotifyd/now_playing.txt | awk '{print $4,$5,$6,$7,$8,$9}'`
        #SPT_STR=$SPT_SHORT

#Output
        echo -e "+@fn=0; +@fg=0;Volume: +@fg=1; $VOL_STR +@fg=0; Brightness: +@fg=1; $LUM_STR +@fg=0; Battery: +@fg=1; $POWER_STR"  #Now Playing: +@fg=1; $SPT_SHORT


        sleep $SLEEP_SEC
done
