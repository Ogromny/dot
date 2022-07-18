#!/bin/sh -e

CPU="/sys/devices/system/cpu"
NO_TURBO="${CPU}/cpu/intel_pstate/no_turbo"
CPUS="${CPU}/cpu*/cpufreq"
MIN_FREQS="${CPUS}/cpuinfo_min_freq"
MAX_FREQS="${CPUS}/cpuinfo_max_freq"
GOVERNORS="${CPUS}/scaling_governor"
AVAILABLE_GOVERNORS="${CPUS}/scaling_available_governors"

required_argument() { echo "Argument required"; exit 1; }
unknown_argument() { echo "Unknown argument \"$1\""; exit 1; }

to_hz() {
    if [ "$#" -eq 0 ]; then
        required_argument; exit 1
    fi

    HZ="$1"
    UNIT=""
    while [ "$HZ" -gt 1000 ]; do
        $((HZ = HZ / 1000))
        $((i = i + 1))
        case "$UNIT" in
            *) UNIT="MHz"
        esac
    done

    echo "${HZ}-${i}"
}

turbo()
{
    if [ "$#" -eq 0 ] || [ "$1" = "show" ]; then
        RESULT=$(cat "$NO_TURBO")
        if [ $? -ne 0 ]; then
            exit $?
        elif [ "$RESULT" -eq 0 ]; then
            echo "enabled"
        else
            echo "disabled"
        fi
        exit 0
    fi

    case "$1" in
        disable) echo "1" > "$NO_TURBO" ;;
        enable) echo "0" > "$NO_TURBO" ;;
        *) unknown_argument "$1" ;;
    esac
}

governor()
{
    if [ "$#" -eq 0 ] || [ "$1" = "show" ]; then
        RESULT=$(cat ${GOVERNORS})
        if [ $? -ne 0 ]; then
            exit $?
        else
            echo "$RESULT" | uniq
        fi
        exit 0
    fi

    if [ "$1" = "available" ]; then
        RESULT=$(cat ${AVAILABLE_GOVERNORS})
        if [ $? -ne 0 ]; then
            exit $?
        else
            echo "$RESULT" | uniq
        fi
        exit 0
    fi

    if [ -z "$1" ]; then
        required_argument
        exit 1
    fi

    for file in $GOVERNORS; do
        echo "$1" > $file || exit 1
    done
}

freq()
{
    if [ "$#" -eq 0 ]; then
        required_argument
    else
        case "$1" in
            min-freq) TARGET="${MIN_FREQS}" ;;
            max-freq) TARGET="${MAX_FREQS}" ;;
            *) unknown_argument "$1" ;;
        esac
    fi

    if [ "$#" -eq 1 ] || [ "$2" = "show" ]; then
        RESULT=$(cat ${TARGET})
        if [ $? -ne 0 ]; then
            exit $?
        else
            echo "$RESULT" | uniq
        fi
        exit 0
    fi

    if [ "$1" = "available" ]; then
        RESULT=$(cat ${AVAILABLE_GOVERNORS})
        if [ $? -ne 0 ]; then
            exit $?
        else
            echo "$RESULT" | uniq
        fi
        exit 0
    fi

    if [ -z "$1" ]; then
        required_argument
        exit 1
    fi

    for file in $GOVERNORS; do
        echo "$1" > $file || exit 1
    done
}

case "$1" in
    turbo) shift; turbo "$@" ;;
    governor) shift; governor "$@" ;;
    max-freq) freq "$@" ;;
    min-freq) freq "$@" ;;
    *) unknown_argument "$1" ;;
esac

