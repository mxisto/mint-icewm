#!/bin/sh

amixer set Master 5%- &
notify-send "🔉-: $(amixer get Master | grep 'Front Left:' | awk '{print $5}' | tr -d '[]')" &
