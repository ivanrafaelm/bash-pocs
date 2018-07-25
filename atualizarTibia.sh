#!/bin/bash
userLauncherDownloadFolder=$HOME/.tibia/bin
userDataFolder=$HOME/.tibia
desktopFile=$HOME/.local/share/applications/Tibia.desktop
rm -rf ~/.local/share/CipSoft\ GmbH/Tibia
mkdir -p $userLauncherDownloadFolder $userDataFolder/characterdata $userDataFolder/conf $userDataFolder/minimap
wget http://download.tibia.com/tibia.x64.tar.gz -O$userLauncherDownloadFolder/Tibia.tar.gz
tar zxvf $userLauncherDownloadFolder/Tibia.tar.gz -C $userLauncherDownloadFolder
echo "[Desktop Entry]
Encoding=UTF-8
Type=Application
Name=Tibia
Comment=MMORPG
Exec=${userLauncherDownloadFolder}/Tibia/start-tibia-launcher.sh
Icon=${userLauncherDownloadFolder}/Tibia/tibia.ico
StartupNotify=false
Terminal=false
Keywords=tibia" > $desktopFile
chmod 644 $desktopFile
chmod +x $desktopFile