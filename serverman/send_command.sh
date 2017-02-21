#!/bin/bash

# File Name: send_command.sh
# Author: Charles Wu <charles.wu@wztek.com>
# Created Date: 2017-02-20
# Last Modified: 2017-02-20 16:59:54
# Tel: +86-13917126915
# REV: 


hosts_list=("brix" "brix");
command=$1;
echo $command;

if [ -z "$command" ];then
	echo "please input command like 'send_command command'";
else
	for hostname in ${hosts_list[*]}
	do
	        echo "This is $hostname";
	        ssh $hostname "$command";
	done
fi

