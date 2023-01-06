#!/bin/bash

LOG_FILE_LOCATION=/home/$(id -un)
exec > >(tee -i $LOG_FILE_LOCATION/"Log file.log")
exec 2>&1

# Styles
RED_BOLD="\033[1;31m"
GREEN_BOLD="\033[1;32m"
RESET_STYLE="\033[00m"

if [ "$(lsb_release -i -s)" != "Ubuntu" ] || [ "$(lsb_release -c -s)" != "jammy" ]; then
	>&2 echo -e "$RED_BOLD"E: Unable to continue, this script is incompatible with your Linux distribution and/or version."$RESET_STYLE"
	exit 1
fi

./ascii_art.sh

echo -e "$RED_BOLD"WARNING:"$RESET_STYLE" "By proceeding with the execution of the script, unwanted changes may be made to your machine."
read -r -p "Do you want to continue? [Y/n] " continue

if [[ "$continue" =~ ^([nN][oO]|[nN])$ ]]; then
	echo "bye!"
	exit 0
fi

# Software installation
./software/install_curl.sh
./software/install_flameshot.sh
./software/install_gdebi.sh
./software/install_gedit.sh
./software/install_git.sh
./software/install_htop.sh
./software/install_neofetch.sh
./software/install_peek.sh
./software/install_pycharm_pe.sh
./software/install_rar.sh
./software/install_startup_disk_creator.sh
./software/install_vs_code.sh

echo
echo -e "$GREEN_BOLD"SUCESSFULY COMPLETED."$RESET_STYLE"
echo "Finally, you can restart your computer now, or if you prefer, you can do it later."
read -r -p "Do you want to restart your computer now? [Y/n] " restart

if [[ "$restart" =~ ^([yY][eE][sS]|[yY])$ ]]; then
	sudo shutdown -r now
else
	exit 0
fi
