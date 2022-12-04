#!/bin/bash

if [ "$(lsb_release -i -s)" != "Ubuntu" ] || [ "$(lsb_release -c -s)" != "jammy" ]; then
	>&2 echo "E: Unable to continue, this script is incompatible with your Linux distribution and/or version."
	exit 1
fi

echo "                                                    __ ";
echo " _____     _ _        _ _ _     _                  |  |";
echo "|  |  |___| | |___   | | | |___| |___ ___ _____ ___|  |";
echo "|     | -_| | | . |  | | | | -_| |  _| . |     | -_|__|";
echo "|__|__|___|_|_|___|  |_____|___|_|___|___|_|_|_|___|__|";
echo "                                                       ";

echo "               ,     \    /      ,                ";
echo "              / \    )\__/(     / \               ";        
echo "             /   \  (_\  /_)   /   \              "; 
echo " ___________/_____\__\@  @/___/_____\____________ ";
echo "|                    |\../|                      |";
echo "|                     \VV/                       |";
echo "|    This script will automate the process of    |";
echo "|  installing and configuring programs on a new  |";
echo "|  Linux system (Ubuntu 22.04 and derivatives).  |";
echo "|     https://github.com/j0tz/my_workstation     |";
echo "|              ~ Created by @j0tz ~              |";
echo "|________________________________________________|";
echo " |    /\ /              \\\              \ /\    |";
echo " |  /   V                ))              V   \  | ";
echo " |/     \`               //               ´     \|";
echo " \`                     //                       ´";
echo "                       V                          ";
echo "                                                  ";

echo "WARNING: By proceeding with the execution of the script, unwanted changes may be made to your machine."
read -r -p "Do you want to continue? [Y/n] " continue

if [[ "$continue" =~ ^([nN][oO]|[nN])$ ]]; then
	echo "bye!"
	exit 0
fi

# Software installation
./software/install_htop.sh
./software/install_git.sh
./software/install_flameshot.sh

echo
echo "SUCESSFULY COMPLETED."
read -r -p "Do you want to restart this PC now? [Y/n] " reboot # TO DO: The reset message should be changed to a more technical message.

if [[ "$reboot" =~ ([yY][eE][sS]|[yY])$ ]]; then
	sudo shutdown -r now
else
	exit 0
fi
