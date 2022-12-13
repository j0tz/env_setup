#!/bin/bash

echo
echo "#################################################";
echo "######## Installing Startup Disk Creator ########";
echo "#################################################";
echo

if ! type -p usb-creator-gtk; then
	sudo apt install -y usb-creator-gtk
fi
