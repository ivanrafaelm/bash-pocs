#!/bin/bash
desktopFile=$HOME/.local/share/applications/TS3.desktop
mkdir -p ~/tools/TS3
cd ~/tools/TS3
# wget http://dl.4players.de/ts/releases/3.1.10/TeamSpeak3-Client-linux_amd64-3.1.10.run -OTS3.run
# wget https://www.teamspeak.com/assets/images/logos/teamspeak_small.png -OTS3.png
wget https://www.teamspeak.com/assets/images/TeamSpeakSmirk-dark.svg -OTS3.svg
sh TS3.run
ts3clients=$(ls -r | grep Team)
set -- $ts3clients
cd $1
echo "[Desktop Entry]
Encoding=UTF-8
Type=Application
Name=TeamSpeak
Comment=comunication
Exec=${HOME}/tools/TS3/${1}/ts3client_runscript.sh
Icon=${HOME}/tools/TS3/TS3.svg
StartupNotify=false
Terminal=false
Keywords=ts, ts3, teamspeak" > $desktopFile
chmod 644 $desktopFile
chmod +x $desktopFile
