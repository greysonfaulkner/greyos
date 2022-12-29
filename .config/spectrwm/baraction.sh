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

# Memory
		MEM=`free | grep Mem | awk '{print $3/$2 * 100.0}'`
		MEM_PEC=`printf "%.0f" $(echo "$MEM + 0.5" | bc)`

# Temp
		TEMP=`sensors | grep -m 1 Tctl | awk '{print substr($2, 2, length($2)-5)}'`
				if [ "$TEMP" -gt "80" ]
                then
                TEMP_OUT="+@fg=2;$TEMP"
                else TEMP_OUT="$TEMP"
                fi

		WIFI=`grep "^\s*w" /proc/net/wireless | awk '{ print int($3 * 100 / 70) "%" }'`
			if [ "$WIFI" = "" ]
			then
			WIFI="N/A"
			fi

#Output
        echo -e "+@fn=1; +@fg=0; CPU Temp: +@fn=0;< +@fg=1;$TEMP_OUT°+@fg=0; >+@fn=1;  Memory: +@fn=0;<+@fg=1; $MEM_PEC% +@fg=0;>+@fn=1;  Wifi: +@fn=0;<+@fg=1; $WIFI +@fg=0;>+@fn=1;  Volume: +@fn=0;<+@fg=1; $VOL_STR +@fg=0;>+@fn=1;  Brightness: +@fn=0;<+@fg=1; $LUM_STR +@fn=1;>+@fg=0;  Battery: +@fn=0;<+@fg=1; $POWER_STR +@fg=0;>+@fn=1;"
		
		#echo -e "+@fn=1; +@fg=0; TEMP: +@fn=0;< +@fg=1;$TEMP_OUT°+@fg=0; >+@fn=1;  RAM: +@fn=0;<+@fg=1; $MEM_PEC% +@fg=0;>+@fn=1;  WIFI: +@fn=0;<+@fg=1; $WIFI +@fg=0;>+@fn=1;  VOL: +@fn=0;<+@fg=1; $VOL_STR +@fg=0;>+@fn=1;  BRIGHT: +@fn=0;<+@fg=1; $LUM_STR +@fn=1;>+@fg=0;  BAT: +@fn=0;<+@fg=1; $POWER_STR +@fg=0;>+@fn=1;"


        sleep $SLEEP_SEC
done
