#!/bin/bash

echo
echo "#################################################";
echo "######## Installing cURL ########################";
echo "#################################################";
echo

if ! type -p curl; then
	sudo apt install -y curl
fi
