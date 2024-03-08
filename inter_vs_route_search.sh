#!/bin/bash

# Grab a list of the active virtual systems
vsids="vsx stat -v | grep Trust | awk 'NR > 1 {print $1}' FS='|'"

# Check if the argument is given
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 value"
    exit 1
fi

value="$1"

#Enter each virtual system and grab their routing table filtered by the argument given
for vsid in ${vsids[@]} ; do
        vsenv $vsid
        netstat -rn | grep $value
done
