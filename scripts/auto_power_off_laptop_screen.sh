#!/bin/sh -e


internal_monitor="eDP-1"
external_monitor="DP-3"

if [ ! "$(wlr-randr | grep "$external_monitor")" ]; then
    # external monitor isn't connected
    exit 0
fi

wlr-randr --output "$internal_monitor" --off
# dwl doesn't support monitor hot plug
# hacky fix
wlr-randr --output "$external_monitor" --pos 0,0
wlr-randr --output "$internal_monitor" --off
