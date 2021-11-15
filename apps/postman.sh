#!/bin/bash

cd $HOME/apps
wget -O postman.tar.gz https://dl.pstmn.io/download/latest/linux64
tar -xf postman.tar.gz
rm postman.tar.gz

echo "[Desktop Entry]
Categories=Development;
Comment=Supercharge your API workflow
Exec="${HOME}/apps/Postman/Postman"
Icon=${HOME}/apps/Postman/app/resources/app/assets/icon.png
Name=Postman
Terminal=false
Type=Application
Version=1.0" > $HOME/.local/share/applications/postman.desktop
