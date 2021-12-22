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

chmod +x start.sh
./start.sh
