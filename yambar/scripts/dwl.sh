#!/bin/sh -e

first_last_n_lines=24
number_of_tags=9

yambar_print() {
    # VALUE can be empty
    if [ "$#" -lt 3 ]; then
        echo "yambar_print() USAGE: NAME TYPE VALUE"
        exit 1
    fi

    value=""
    case "$2" in
        string) value="$3" ;;
        bool) [ "$3" = "0" ] && value="false" || value="true" ;;
        int) value="$3" ;;
        *) echo "yambar_print() unknown TYPE $3"; exit 1 ;;
    esac

    echo "$1|$2|$value"
}

if [ "$#" -lt 2 ]; then
    printf "USAGE: MONITOR FILE TAGS*\n"
    printf "\tTAGS: a list of tag:name\n"
    printf "\t\t1:code 2:firefox 3:mail\n"
    exit 1
fi

if [ ! -r "$2" ]; then
    echo "Cannot read \"$2\""
    exit 1
fi

monitor="$1"
file="$2"
set -f

shift 2

# TODO: handle tags

# dwl output 6 lines per change
tail -f -n 6 "$file" | while read -r line; do
    set -- $line

    # At least there should be 2 arguments
    if [ "$#" -lt 2 ]; then
        echo "Unrecognized info: $@"
        continue
    fi

    # $1    -> monitor
    # $2    -> action
    # $3... -> args

    if [ "$1" != "$monitor" ]; then
        continue
    fi

    case "$2" in
        title) yambar_print "$2" string "$3" ;;
        fullscreen) continue ;;
        floating) continue ;;
        selmon)
            # already checked for the monitor, so it implies selmon == true
            continue ;;
        tags)
            shift 2

            # $1 -> mask
            # $2 ->
            # $3 ->
            # $4 -> urgent
            echo "---DEBUG---"
            echo "nr args: $#"
            echo "1)     : $1"
            echo "2)     : $2"
            echo "3)     : $3"
            echo "4)     : $4"
            echo "---GUBED---"

            i=1
            while [ "$i" -le "$number_of_tags" ]; do
                tag="$((1 << ($i - 1)))"
                if [ "$(($tag & $1))" -ne 0 ]; then
                    # todo replace $3 with optional name (icon, etc)
                    yambar_print "tag_$i" string "tag_$i"
                fi
                if [ "$(($tag & $2))" -ne 0 ]; then
                    yambar_print "tag_${i}_selected" bool 1
                fi
                i=$((i + 1))
            done
        ;;
        layout) yambar_print "$2" string "$3" ;;
        *) echo "Unknown action $2" ;;
    esac
done
