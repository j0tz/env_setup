#!/bin/bash

echo
echo "#################################################";
echo "######## Installing UnRAR #######################";
echo "#################################################";
echo

if ! type -p unrar; then
	sudo apt install -y unrar
fi
