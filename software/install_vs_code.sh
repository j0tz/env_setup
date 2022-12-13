#!/bin/bash

echo
echo "#################################################";
echo "######## Installing VS Code #####################";
echo "#################################################";
echo

if ! type -p code; then
	sudo snap install -y code --classic
fi
