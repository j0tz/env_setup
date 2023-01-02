#!/bin/bash

echo
echo "#################################################";
echo "######## Installing PyCharm Pro Edition #########";
echo "#################################################";
echo

if ! type -p pycharm-professional; then
	sudo snap install -y pycharm-professional --classic
fi
