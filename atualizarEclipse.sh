#!/bin/bash
destinationDir=$HOME/tools/eclipse
destinationDownloadDir=$HOME/tools/eclipse/download
packageName=eclipse-java-oxygen-3a-linux-gtk-x86_64.tar.gz
eclipseName=$(eclipses=$(echo $packageName | tr "." "\n"); set -- $eclipses; echo $1)
desktopShortcut=$HOME/.local/share/applications/eclipse.desktop
mkdir -p $destinationDir/$eclipseName $destinationDownloadDir
wget http://mirror.nbtelecom.com.br/eclipse/technology/epp/downloads/release/oxygen/3a/$packageName -O$destinationDownloadDir/$packageName
wget https://img00.deviantart.net/6fe2/i/2012/326/7/4/eclipse_ide_icon_by_necromod-d5lt9zc.png -O$destinationDownloadDir/eclipse.png
wget https://projectlombok.org/downloads/lombok.jar -O$destinationDownloadDir/lombok.jar
tar zxvf $destinationDownloadDir/$packageName -C $destinationDir/$eclipseName/
cp -f $destinationDownloadDir/eclipse.png $HOME/.local/share/icons/
echo "[Desktop Entry]
Type=Application
Name=Eclipse
Comment=Eclipse Integrated Development Environment
Icon=${HOME}/.local/share/icons/eclipse.png
Exec=${destinationDir}/${eclipseName}/eclipse/eclipse
Terminal=false
Categories=Development;IDE;Java;
" > $desktopShortcut
chmod 644 $desktopShortcut
chmod +x $desktopShortcut
java -jar $destinationDownloadDir/lombok.jar