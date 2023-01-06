#!/bin/bash

echo
echo "#################################################";
echo "######## Installing RAR #########################";
echo "#################################################";
echo

if ! type -p rar; then
	sudo apt install -y rar
fi
