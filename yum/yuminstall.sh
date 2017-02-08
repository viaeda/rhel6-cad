#!/bin/bash

# File Name: yuminstall.sh
# Author: Charles Wu <charles.wu@viaeda.com>
# Created Date: 2016-08-29
# Last Modified: 2017-02-08 22:53:01
# Tel: +86-13917126915
# REV: 1.0


while read line
do
  yum groupinstall "$line" -y
done < groups.list


## Remove subscription pop-up
yum remove subscription-manager -y
yum remove subscription-manager-migration-data -y

## Remove Smart Card pop-up

