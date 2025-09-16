#!/bin/sh

# this is a fix for when the machine goes back from xscreensaver and loses the nitrogen wallpaper

icewm --restart &
nitrogen --restore &
