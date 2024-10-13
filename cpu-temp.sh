#!/bin/bash

# Check if lm_sensors is installed
if ! command -v sensors &> /dev/null; then
    echo "lm_sensors is not installed. Please install it to use this script."
    exit 1
fi

# Display CPU temperature
sensors | grep 'Package id 0:' | awk '{print $4}' | sed 's/+//; s/°C//'


