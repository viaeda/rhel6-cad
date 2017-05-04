#!/bin/bash

# File Name: incre-backup.sh
# Author: Charles Wu <charles.wu@wztek.com>
# Created Date: 2016-10-11
# Last Modified: 2016-10-19 12:53:30
# Tel: +86-13917126915
# REV: 


BAKTIME=`date +%F_%H-%M`
RSYNC_SERVER=brix
BAKROOT=/root/backup
EXCLUDES=/root/backup/exclude.txt
BACKUP_MODULES="c.wu s.chen"
OPTIONS="--force --ignore-errors --delete --backup -v --progress --exclude-from=$EXCLUDES -az"
LOGFILE=$BAKROOT/incre_backup_${BAKTIME}.log
INC_DIR=increment


[ ! -d $BAKROOT ] && mkdir -p $BAKROOT
[ ! -e $EXCLUDES ] && touch $EXCLUDES


date >> $LOGFILE

for bakdir in $BACKUP_MODULES
do
	SUB_OPTIONS="--backup-dir=$BAKROOT/increment/$BAKTIME"
	rsync $OPTIONS $SUB_OPTIONS $RSYNC_SERVER:/home/users/$bakdir $BAKROOT/ >> $LOGFILE
done

date >> $LOGFILE
