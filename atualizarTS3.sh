#!/bin/bash
mkdir -p ~/tools/TS3
cd ~/tools/TS3
wget http://dl.4players.de/ts/releases/3.1.8/TeamSpeak3-Client-linux_amd64-3.1.8.run -OTS3.run
wget https://www.teamspeak.com/assets/images/logos/teamspeak_small.png -OTS3.png
sh TS3.run
ts3clients=$(ls -r | grep Team)
set -- $ts3clients
cd $1
echo "[Desktop Entry]
Encoding=UTF-8
Type=Application
Name=TS3
Comment=comunication
Exec=${HOME}/tools/TS3/${1}/ts3client_runscript.sh
Icon=${HOME}/tools/TS3/TS3.png
StartupNotify=false
Terminal=false
Keywords=ts" > ~/Desktop/TS3.desktop
sudo chmod 644 ~/Desktop/TS3.desktop
sudo chmod +x ~/Desktop/TS3.desktop
sudo mv -f ~/Desktop/TS3.desktop /usr/share/applications/