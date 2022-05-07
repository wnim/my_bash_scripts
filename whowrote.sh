#!/bin/bash
#usage: whowrote.sh "<string_from_file>" <path_to_file> (string from file is regex sensitive so be mindful of special characters  (escape them))
if [ -z "$1" ]||[ -z "$2" ]
then
  echo 'usage: "<string_from_file>" whowrote.sh <path_to_file>'
else
line=`cleartool lshistory $2 | grep version | grep -v checkout | awk -F "create version" '{print $2}' | cut -d '(' -f1 | xargs grep "$1" | tail -1 | cut -d ':' -f1`
echo $line
cleartool lshistory $2 | grep --color -e "$line[^0-9]\|^"
fi
