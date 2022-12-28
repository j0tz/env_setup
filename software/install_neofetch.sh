#!/bin/bash

echo
echo "#################################################";
echo "######## Installing Neofetch ####################";
echo "#################################################";
echo

if ! type -p neofetch; then
	sudo apt install -y neofetch
fi