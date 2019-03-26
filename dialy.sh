#!/bin/bash

today=`date '+%Y.%m.%d'`
thisyear=`echo $today | cut -d '.' -f 1`
directory="${HOME}/Dropbox/daily-log/$thisyear"
dialyfile=$today

echo $today
echo $thisyear
echo $directory
echo $dialyfile
if [ ! -d "$directory" ]; then
    mkdir -p "$directory"
fi
#if [ ! -e "$dialyfile" ]; then
    #echo $today
