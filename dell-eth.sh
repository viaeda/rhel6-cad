#!/bin/bash

# File Name: dell-eth.sh
# Author: Charles Wu <qi.wu@outlook.com> 
# Created Date: 2016-03-23
# Last Modified: 2018-01-08 22:49:09

# REV: 1.0

## add "biosdevname=0" to file /boot/grup/grup.conf right after "...=auto rhgb quiet", kernel line
## remove file /etc/udev/rules.d/70-persistent-net.rules "rm -f /etc/udev/rules.d/70-persistent-net.rules"
## then excute this file


netpath=/etc/sysconfig/network-scripts

cd $netpath

for i in 1 2 3 4
do
	j=$(($i-1))
	if [ -f ifcfg-em${i} ]; then
		echo OK   :: updating em$i to eth$j
		\mv ifcfg-em$i ifcfg-eth$j
		sed -i "s/em${i}/eth${j}/" ifcfg-eth${j}
	else
		echo ERROR:: No ifcfg-em$i found.
	fi
done
	
