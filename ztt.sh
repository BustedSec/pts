#!/bin/bash

if [ -z "$1"]; then
	echo "ztt usage : $0 <domain name>"
	exit 0
fi

for server in $(host -t ns $1 |cut -d" " -f4); do
	 host -l $1 $server| grep "has address"
done
