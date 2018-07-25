#!/bin/bash
userDataFolder=$HOME/.tibia
rm -rf ~/.local/share/CipSoft\ GmbH/Tibia/packages/Tibia/conf ~/.local/share/CipSoft\ GmbH/Tibia/packages/Tibia/characterdata ~/.local/share/CipSoft\ GmbH/Tibia/packages/Tibia/minimap
ln -s $userDataFolder/conf ~/.local/share/CipSoft\ GmbH/Tibia/packages/Tibia
ln -s $userDataFolder/characterdata ~/.local/share/CipSoft\ GmbH/Tibia/packages/Tibia
ln -s $userDataFolder/minimap ~/.local/share/CipSoft\ GmbH/Tibia/packages/Tibia