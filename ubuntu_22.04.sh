#!/bin/bash

# Print out Linux distribution and kernel version
cat /etc/*-release
uname -a

# Apps to Install Script

# System Update
sudo apt update
sudo apt install -y ubuntu-restricted-extras gnome-tweaks gnome-shell-extension-manager

# Apps
sudo apt install -y zsh terminator git curl sysbench
sudo apt install -y vlc gimp inkscape ffmpeg
sudo apt install -y build-essential python3-pip virtualenv

##Google Chrome
cd Downloads
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

##Zoom
wget https://zoom.us/client/latest/zoom_amd64.deb
sudo apt install ./zoom_amd64.deb

## Arduino CLI
curl -fsSL https://raw.githubusercontent.com/arduino/arduino-cli/master/install.sh | sh

# Node 18
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt-get install -y nodejs npm

# Create basic folders
mkdir dev
mkdir tools

# Arduino
sudo snap install arduino
sudo usermod -a -G dialout $USER

## Kicad 6.0
sudo add-apt-repository --yes ppa:kicad/kicad-6.0-releases
sudo apt update
sudo apt install --install-recommends -y kicad

# Finishing Things Up
## System Update and Upgrade
sudo apt update
sudo apt upgrade --allow-downgrades -y
sudo apt full-upgrade --allow-downgrades -y
## System Clean Up
sudo apt install -f
sudo apt autoremove -y
sudo apt autoclean
sudo apt clean

# End of Script
echo "All done, now lets get to work!" 

# sudo reboot

