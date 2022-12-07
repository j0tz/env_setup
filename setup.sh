#!/bin/bash

if [ "$(lsb_release -i -s)" != "Ubuntu" ] || [ "$(lsb_release -c -s)" != "jammy" ]; then
	>&2 echo "E: Unable to continue, this script is incompatible with your Linux distribution and/or version."
	exit 1
fi

./ascii_art.sh

echo "WARNING: By proceeding with the execution of the script, unwanted changes may be made to your machine."
read -r -p "Do you want to continue? [Y/n] " continue

if [[ "$continue" =~ ^([nN][oO]|[nN])$ ]]; then
	echo "bye!"
	exit 0
fi

# Software installation
./software/install_htop.sh
./software/install_git.sh
./software/install_flameshot.sh
./software/install_pycharm_ce.sh

echo
echo "SUCESSFULY COMPLETED."
echo "Finally, you can restart your computer now, or if you prefer, you can do it later."
read -r -p "Do you want to restart your computer now? [Y/n] " restart

if [[ "$restart" =~ ^([yY][eE][sS]|[yY])$ ]]; then
	sudo shutdown -r now
else
	exit 0
fi
