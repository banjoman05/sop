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
