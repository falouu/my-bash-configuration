#!/usr/bin/env bash

current=$(xdpyinfo  | grep -oP 'dimensions:\s+\K\S+')

if [ "$current" == "1920x1080" ]; then
  xrandr --output HDMI-0 --mode 3840x2160 --rate 60.00
else
  xrandr --output HDMI-0 --mode 1920x1080 --rate 60.00
fi


