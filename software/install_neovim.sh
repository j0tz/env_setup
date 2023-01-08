#!/bin/bash

echo
echo "#################################################";
echo "######## Installing Neovim ######################";
echo "#################################################";
echo

if ! type -p nvim; then
	sudo apt install -y neovim
fi
