#!/bin/bash

echo
echo "#################################################";
echo "######## Installing Flameshot ###################";
echo "#################################################";
echo

if ! type -p flameshot; then
	sudo apt install -y flameshot
fi
