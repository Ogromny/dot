#!/bin/sh -e

KEYBOARD_NAME="Drop Preonic"

fmt() {
    case "$1" in
        Russian*) LAYOUT="🇷🇺" ;;
        English*) LAYOUT="🏴󠁧󠁢󠁥󠁮󠁧󠁿" ;;
        *) LAYOUT="🏳️" ;;
    esac
    printf "layout|string|%s\n" "$LAYOUT"
}

fmt "English"

swaymsg -mt subscribe '["input"]' | while read -r raw
do
    JSON=$(echo "$raw" | jq "first(select(.change == \"xkb_layout\" \
            and .input.type == \"keyboard\" \
            and .input.name == \"${KEYBOARD_NAME}\")) | .input.xkb_active_layout_name")

    if [ -z "$JSON" ]; then
        continue
    fi

    # strip \"
    JSON=$(printf "%s\n" "${JSON##\"}")
    JSON=$(printf "%s\n" "${JSON%%\"}")

    fmt "$JSON"
done
