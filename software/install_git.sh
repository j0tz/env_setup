#!/bin/bash

echo
echo "#################################################";
echo "######## Installing Git #########################";
echo "#################################################";
echo

if ! type -p git; then
	sudo apt-get install -y git
fi
