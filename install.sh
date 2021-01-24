#!/bin/bash
#Clean Install
rm -f ~/bin/termux-url-opener
mkdir ~/bin
#Installing dependencies
pkg update -y && pkg install wget -y && pkg install python -y && pkg install ffmpeg -y
yes | pip install -U youtube-dl && yes | pip install -U spotdl && yes | pip install -U youtube-dlc && yes | pip install -U you-get

#Installing the script
wget -P ~/bin/ --no-check-certificate https://raw.githubusercontent.com/Addicted5/youtubedl-termux-url-opener/main/termux-url-opener
chmod +x ~/bin/termux-url-opener
termux-setup-storage
