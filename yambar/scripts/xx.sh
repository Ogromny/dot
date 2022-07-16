#!/bin/sh -e
swaymsg -mt subscribe '["input"]' | while read -r LAYOUT
do
    echo "$LAYOUT"
done
