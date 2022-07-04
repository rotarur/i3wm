#!/bin/bash

sudo dnf install fontawesome-fonts lm_sensors acpi

cd ~/.config
git clone https://github.com/meskarune/i3lock-fancy.git
cd i3lock-fancy
sudo ln -s $PWD/lock /usr/local/bin/
sudo ln -s $PWD/icons /usr/local/bin/

git clone https://github.com/shikherverma/i3lock-multimonitor.git

sudo chgrp $USER /sys/class/backlight/intel_backlight/brightness
sudo chmod g+rwx /sys/class/backlight/intel_backlight/brightness

# xrandr --output DP-2 --auto --output HDMI-1 --auto --left-of DP-2
