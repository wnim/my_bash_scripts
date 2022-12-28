#!/bin/bash

while true;
do
  SECONDS=0
  for ((i=1; i<=200; i++))
  do
    sleep 0.1 ; echo hello > /dev/null ;
  done 
  elapsed_time=$SECONDS
  [ "$elapsed_time" -lt 23 ] && echo -n $elapsed_time || echo -ne "\033[1;31m$elapsed_time\033[0m"
  [ "$elapsed_time" -gt 35 ] && echo -ne "\033[1;31m!\033[0m"
  echo -n " "
#  if [ "$elapsed_time" -gt 35 ] 
#  then
#    notify-send "$pwv"
#    mail -s "tune notif `echo $pwv $1`" $USER@qti.qualcomm.com < /dev/null
#    exit 0
#  fi
done
