#!/bin/bash

#this script moves the active window to the other monitor display based on the horizontal resolution of the primary monitor

wresolution=$(xrandr | grep 'primary' | awk '{print $4}' | awk -Fx '{print $1}')

value=""

second_display_pos=$(xrandr | grep ' connected' | grep -v 'primary' | awk '{print $5}')
echo "$second_display_pos"

if [[ "$second_display_pos" == "left" ]]; then
    value="+"
else
    value="-"
fi

echo "$value$wresolution"

icesh -f restore && icesh -f moveby "$value$wresolution" -0
