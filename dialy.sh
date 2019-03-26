#!/bin/bash

today=`date '+%Y.%m.%d'`
thisyear=`echo $today | cut -d '.' -f 1`
thismonth=`echo $today | cut -d '.' -f 2`
thisday=`echo $today | cut -d '.' -f 3`
directory="${HOME}/Dropbox/daily-log/$thisyear"
dialyfile="$thismonth.$thisday"

if [ ! -d "$directory" ]; then
    mkdir -p "$directory"
fi

if [ ! -e "$directory/$dialyfile" ]; then
    echo $today >> "$directory/$dialyfile"
fi

vim "$directory/$dialyfile"
