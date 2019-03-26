#!/bin/bash

today=`date '+%Y/%m/%d'`
thisyear=`echo $today | cut -d '/' -f 1`
thismonth=`echo $today | cut -d '/' -f 2`
directory="${HOME}/Dropbox/daily-log/$thisyear"

echo $today
echo $directory
if [ ! -d "$directory" ]; then
    mkdir -p "$directory"
fi
