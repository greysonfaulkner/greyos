#!/bin/bash

sleep 0.1


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

#LUM_STR=`brightnessctl i | awk '{printf( $4)}' | sed -e 's/class//' | sed -e 's/(//' | sed -e 's/)//'` # System Agnostic

~/.config/openbox/notify-send.sh --replace=555 --icon=/home/$USER/.icons/tokyo-night/apps/symbolic/display-brightness-symbolic.svg "Brightness" $LUM_STR

