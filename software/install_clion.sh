#!/bin/bash

echo
echo "#################################################";
echo "######## Installing CLion #######################";
echo "#################################################";
echo

if ! type -p clion; then
	sudo snap install -y clion --classic
fi
