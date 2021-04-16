#!/bin/bash

# File Name: rhel6-system-initial-script.sh
# Author: Charles Wu <qi.wu@outlook.com>
# Created Date: 2016-10-07
# Last Modified: 2021-04-16 20:04:54
# Tel: +86-139-1762-3018
# REV: 1.0




## Change teminal default directory to $HOME
gconftool-2 --direct --config-source xml:readwrite:/etc/gconf/gconf.xml.defaults --set --type=bool /apps/nautilus-open-terminal/desktop_opens_home_dir true



## Set New Windows Alway On Top
gconftool-2 --direct --config-source xml:readwrite:/etc/gconf/gconf.xml.defaults --set --type=bool /apps/metacity/general/new_windows_always_on_top true



## turn off authentucation window popup in VNC Desktop
policy_file=/usr/share/polkit-1/actions/org.freedesktop.packagekit.policy
cp $policy_file ~/policy_auth.bak

sed -i 's/auth_admin<\/allow_any>/no<\/allow_any>/g' $policy_file
sed -i 's/auth_admin<\/allow_inactive>/no<\/allow_inactive>/g' $policy_file



## turn off display user on login screen
gconftool-2 --direct --config-source xml:readwrite:/etc/gconf/gconf.xml.defaults --set --type=bool /apps/gdm/simple-greeter/disable_user_list true




## turnoff and disable iptables
/sbin/service iptables stop
/sbin/chkconfig iptables off



## Disable SELINUX
/usr/sbin/setenforce 0
sed -i 's/SELINUX=enforcing/SELINUX=disabled/' /etc/selinux/config

