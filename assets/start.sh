#!/bin/sh

if [ ! -f /config/vlmcsd.ini ]; then
   echo "creating default config file"
   echo "Listen = 0.0.0.0:1688" > /config/vlmcsd.ini
fi

echo "Starting vlmcsd..."
/usr/bin/vlmcsd -D -e -i /config/vlmcsd.ini