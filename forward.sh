#!/bin/bash
for pos in $(cat list.txt); do
       host $pos.$1 | grep "has address" | cut -d " " -f1,4 &
 done

