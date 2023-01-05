#!/bin/bash

echo
echo "#################################################";
echo "######## Installing gedit #######################";
echo "#################################################";
echo

if ! type -p gedit; then
	sudo apt install -y gedit
fi
