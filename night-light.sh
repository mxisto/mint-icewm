#!/bin/sh

# requires the xsct package

estado=$(xsct | awk '/^Screen/ {print $5}')

valor=0

turn="off"

if [ $estado -eq 6500 ]; then #temperature value, change this to you preferred temperature
	valor=3500
	turn="on"
else
	valor=0
	turn="off"
fi

xsct $valor && notify-send "💡Night Light:" $turn
