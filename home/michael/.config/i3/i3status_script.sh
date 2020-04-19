#!/bin/bash 

i3status | while :
do
	read line
	layout=$(xkblayout-state print "%n")
	
	dat="[{ \"full_text\": \"LANG: $layout\" },"
	echo "${line/[/$dat}" || exit 1
done
