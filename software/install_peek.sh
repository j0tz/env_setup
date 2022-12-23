#!/bin/bash

echo
echo "#################################################";
echo "######## Installing Peek ########################";
echo "#################################################";
echo

if ! type -p peek; then
	sudo apt install -y peek
fi
