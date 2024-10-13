#!/bin/bash

# Default settings
COLOR="\e[92m"    # Default color: Green
RESET="\e[0m"
FORMAT="%s\n"     # Default format: Plain text with a new line

# Function to print usage
usage() {
    echo "Usage: $0 [-c COLOR] [-f FORMAT]"
    echo "Options:"
    echo "  -c COLOR     Set text color (e.g., red, green, yellow)"
    echo "  -f FORMAT    Set display format (e.g., plain, inline)"
}

# Parse command-line options
while getopts ":c:f:" opt; do
    case ${opt} in
        c)
            case ${OPTARG} in
                red) COLOR="\e[91m" ;;
                green) COLOR="\e[92m" ;;
                yellow) COLOR="\e[93m" ;;
                *) echo "Invalid color: $OPTARG"; usage; exit 1 ;;
            esac
            ;;
        f)
            case ${OPTARG} in
                plain) FORMAT="%s\n" ;;
                inline) FORMAT="%s " ;;
                *) echo "Invalid format: $OPTARG"; usage; exit 1 ;;
            esac
            ;;
        *)
            usage
            exit 1
            ;;
    esac
done

# Fetch CPU temperatures using lm_sensors
CPU_TEMP=$(sensors | grep 'Package id 0:' | awk '{print $4}')

# Display the temperature with the chosen settings
printf "${COLOR}${FORMAT}${RESET}" "${CPU_TEMP}"

