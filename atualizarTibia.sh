#!/bin/bash
userInstallationFolder=$HOME/Tibia
userDataFolder=$HOME/.tibia
mkdir -p $userInstallationFolder $userDataFolder/characterdata $userDataFolder/conf $userDataFolder/minimap
desktopFile=$HOME/.local/share/applications/Tibia.desktop
wget http://download.tibia.com/tibia.x64.tar.gz -O$userInstallationFolder/Tibia.tar.gz
tar zxvf $userInstallationFolder/Tibia.tar.gz -C $userInstallationFolder
tibias=$(ls -r $userInstallationFolder/ | grep tibia)
set -- $tibias
newerTibia=$1
rm -rf $userInstallationFolder/$newerTibia/conf $userInstallationFolder/$newerTibia/characterdata $userInstallationFolder/$newerTibia/minimap
ln -s $userDataFolder/conf $userInstallationFolder/$newerTibia
ln -s $userDataFolder/characterdata $userInstallationFolder/$newerTibia
ln -s $userDataFolder/minimap $userInstallationFolder/$newerTibia
echo "[Desktop Entry]
Encoding=UTF-8
Type=Application
Name=Tibia
Comment=game
Exec=${userInstallationFolder}/${newerTibia}/start-tibia.sh
Icon=${userInstallationFolder}/${newerTibia}/tibia.ico
StartupNotify=false
Terminal=false
Keywords=tibia" > $desktopFile
chmod 644 $desktopFile
chmod +x $desktopFile