#!/bin/bash

if ! [ -d "$HOME/apps/balenaEtcher" ] ; then
    mkdir $HOME/apps/balenaEtcher
fi

cd $HOME/apps/balenaEtcher

VERSION=$(curl -s https://github.com/balena-io/etcher/releases/latest | grep -o "v[.0-9]\+")
VERSION_NUM="${VERSION:1}"
FILENAME="balenaEtcher-${VERSION_NUM}-x64.AppImage"
if [ -f $FILENAME ] ; then
    echo "lastest version is already downloaded"
else
    rm $HOME/apps/balenaEtcher/balenaEtcher-*
    wget -O $FILENAME "https://github.com/balena-io/etcher/releases/download/$VERSION/${FILENAME}"
fi

chmod +x $FILENAME
if ! [ -f "balenaEtcher.png" ] ; then
    # this image link can be kept static
    wget -O balenaEtcher.png https://github.com/balena-io/etcher/raw/v1.7.0/assets/icon.png
fi

echo "[Desktop Entry]
Name=BalenaEtcher
Comment=Flash OS images to SD cards and USB drives, safely and easily.
Exec=${HOME}/apps/balenaEtcher/${FILENAME}
Terminal=false
Type=Application
Icon=${HOME}/apps/balenaEtcher/balenaEtcher.png
Categories=Utility;" > $HOME/.local/share/applications/balena-etcher.desktop