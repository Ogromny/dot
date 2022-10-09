#!/bin/sh -e

export XKB_DEFAULT_LAYOUT="us,ru"
export XKB_DEFAULT_VARIANT="euro"
export XKB_DEFAULT_OPTIONS="compose:ralt,grp:alt_shift_toggle"

dbus-run-session river
