#!/bin/sh

amixer set Master toggle &
notify-send "🔈 Sound: $(amixer get Master | grep 'Front Left:' | awk '{print $6}' | tr -d '[]')" &
