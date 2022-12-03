#!/bin/bash

echo
echo "#################################################";
echo "######## Installing htop ########################";
echo "#################################################";
echo

if ! type -p htop; then
	sudo apt install -y htop
fi
