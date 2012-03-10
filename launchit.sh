#!/bin/bash

if [ ! -n "$1" ]
then
	echo "Usage: `basename $0` URL"
	exit $E_BADARGS
fi
echo

URL=$1

ffserver &
ffmpeg -f alsa -i pulse -f video4linux2 -s 352x288 -i /dev/video0 http://$URL:8090/feed1.ffm

