#!/bin/bash

echo
echo "#################################################";
echo "######## Installing PyCharm CE ##################";
echo "#################################################";
echo

if ! type -p pycharm-community; then
	sudo snap install -y pycharm-community --classic
fi
