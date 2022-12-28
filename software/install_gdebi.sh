#!/bin/bash

echo
echo "#################################################";
echo "######## Installing GDebi #######################";
echo "#################################################";
echo

if ! type -p gdebi; then
	sudo apt install -y gdebi
fi