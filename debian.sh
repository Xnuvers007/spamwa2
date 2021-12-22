#!/bin/bash

echo "===========Installing============="
BAR='********************'
for i in {1..20}; do
	echo -ne "\r${BAR:0:$i}"
	sleep 0.5
done

#update upgrade linux
	sudo apt full-upgrade -y && sudo apt update -y
#Install python3
	sudo apt-get install python3
#install pip
	sudo apt install python3-pip
#upgrade pip
	pip3 install --upgrade pip
#install dependencies pip
	pip3 install pyautogui
	pip3 install MouseInfo
	xhost + #activate python3-xlib
		#to solve bug raise error.DisplayConnectionError(self.display_name, r.reason) Xlib.error.DisplayConnectionError: Can't connect to display ":1.0": b'No protocol specified\n'

chmod +x start.sh
./start.sh
