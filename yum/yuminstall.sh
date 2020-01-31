#!/bin/bash

# File Name: yuminstall.sh
# Author: Charles Wu <qi.wu@outlook.com>
# Created Date: 2016-08-29
# Last Modified: 2018-03-28 15:49:24
# Tel: +86-13917126915
# REV: 1.0


while read line
do
  yum groupinstall "$line" -y
done < groups.list
