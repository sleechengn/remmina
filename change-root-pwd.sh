#!/usr/bin/bash

#echo $(whoami) > /opt/chpasswd.log
#echo "root:$ROOT_PASSWORD" >> /opt/chpasswd.log

#if [ $ROOT_PASSWORD ]; then
#	echo "root:$ROOT_PASSWORD"|chpasswd
#fi

echo "root:root"|chpasswd
