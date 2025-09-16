#!/bin/sh

nvidia-settings --assign CurrentMetaMode="nvidia-auto-select +0+0 {ForceFullCompositionPipeline=On}"

# fixes for icewm
sleep 1 &
#~/.screenlayout/main.sh &
~/.screenlayout/dualscreen.sh &
icesh restart & 
nitrogen --restore &
