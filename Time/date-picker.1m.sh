#!/bin/bash

# Display todays date and time in various formats including ISO8601 and allows copying to clipboard.

# Comment out the dates you don't need.

# <xbar.title>Date Picker</xbar.title>
# <xbar.version>v1.0</xbar.version>
# <xbar.author>Tim Battersby</xbar.author>
# <xbar.author.github>uglygus</xbar.author.github>
# <xbar.desc>Display todays date in various forms including iso8601 and copies to the clipboard.</xbar.desc>
# <xbar.dependencies></xbar.dependencies>
# <xbar.image>https://i.imgur.com/GVSUqFX.png</xbar.image>

# Appears in the menubar YYYY-MM-DDTHH:mm:SSZ
date -u +"%Y-%m-%dT%H:%M:%SZ"
echo "---"

#---ISO8601

YMD=$(date +%F)
echo "$YMD |bash='$0' param1=copy param2=$YMD terminal=false"

DATETIME=$(date -u +"%Y-%m-%dT%H:%M:%SZ")
echo "$DATETIME |bash='$0' param1=copy param2=$DATETIME terminal=false"

echo "---"

#---USA

MDY=$(date +"%Y-%m-%dT%H:%M:%SZ")
echo "$MDY |bash='$0' param1=copy param2=$MDY terminal=false"

if [[ "$#" -ge 1 ]];then
    if [[ "$1" == 'copy' ]] ; then

        echo -n "$2" | pbcopy
        echo COPIED "$2"
    fi
fi
