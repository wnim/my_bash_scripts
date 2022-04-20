#!/bin/bash
while !(zgrep -P --color -i "$1" $2 > /dev/null)
do
  printf '.'
  sleep 10
done
printf "\n"
zgrep -P --color -i "$1" $2
echo -e "************************************************\n*-------------------grep done------------------*\n************************************************\n"
(~/scripts/tune.sh &)
