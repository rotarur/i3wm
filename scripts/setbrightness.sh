#!/bin/bash

MAXBRIGHTNESS=$(cat /sys/class/backlight/intel_backlight/max_brightness)
BRIGHTNESS=$(cat /sys/class/backlight/intel_backlight/brightness)

echo $MAXBRIGHTNESS
echo $BRIGHTNESS

if [ $1 == "down" ]
then
	if [[ $BRIGHTNESS > 0 ]]
	then
		let BRIGHTNESS=$BRIGHTNESS-20
	fi
fi

if [ $1 == "up" ]
then
	if [[ $BRIGHTNESS < $MAXBRIGHTNESS ]]
	then
  	let BRIGHTNESS=$BRIGHTNESS+20
	fi
fi

echo $BRIGHTNESS > /sys/class/backlight/intel_backlight/brightness
