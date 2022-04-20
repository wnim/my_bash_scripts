#!/bin/bash
#for file in `cleartool lsco -avobs -cview -fmt "%n\n"` ; do
#grep -P $1 $file >/dev/null
#if [ $? -eq 0 ] ; then echo $file ; grep -n --color $1 $file ; echo ""
#fi
#done

cleartool lsco -avobs -cview -fmt "%n\n" | xargs grep -n --color $1
