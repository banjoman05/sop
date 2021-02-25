#!/bin/bash

# Updpate lists

echo "##### Updating lists #####"
/usr/bin/apt update

echo ""
echo ""

echo "##### Upgrading Packages #####"
/usr/bin/apt -y upgrade

echo "System updated at `date`" >> ~/ubuntu_update.log

echo ""
echo ""

echo "##### Restarting server #####"

/sbin/shutdown -r 5

echo "Reboot initiated at `date`" >> ~/ubuntu_update.log


# Crontab
#0 6 * * * ~/ubuntu_update.sh >/dev/null 2>&1
