#!/bin/bash
mkdir -p ~/Tibia
mkdir -p ~/.tibia/characterdata
mkdir -p ~/.tibia/conf
mkdir -p ~/.tibia/minimap
cd ~/Tibia
wget http://download.tibia.com/tibia.x64.tar.gz -OTibia.tar.gz
tar zxvf Tibia.tar.gz
tibias=$(ls -r | grep tibia)
set -- $tibias
cd $1
rm -rf conf characterdata minimap
ln -s ~/.tibia/conf $(pwd)
ln -s ~/.tibia/characterdata $(pwd)
ln -s ~/.tibia/minimap $(pwd)
echo "[Desktop Entry]
Encoding=UTF-8
Type=Application
Name=Tibia
Comment=game
Exec=${HOME}/Tibia/${1}/start-tibia.sh
Icon=${HOME}/Tibia/${1}/tibia.ico
StartupNotify=false
Terminal=false
Keywords=tibia" > ~/Desktop/Tibia.desktop
sudo chmod 644 ~/Desktop/Tibia.desktop
sudo chmod +x ~/Desktop/Tibia.desktop
sudo mv -f ~/Desktop/Tibia.desktop /usr/share/applications/