#!/bin/sh -e

KEYBOARD_NAME="Drop Preonic"
OUTPUT="layout|string|%s"

# first time
# en it's always the first layout to be used

printf "$OUTPUT\n" "en"
echo ""

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

    case "$JSON" in
        Russian*)
            LAYOUT="ru"
        ;;
        English*)
            LAYOUT="en"
        ;;
        *)
            LAYOUT="??"
        ;;
    esac

    printf "$OUTPUT\n" "$LAYOUT"
    echo ""
done
