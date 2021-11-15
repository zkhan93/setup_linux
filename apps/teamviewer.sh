#!/bin/bash
FILENAME=teamviewer_amd64.deb
wget -O $FILENAME https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
sudo dpkg -i $FILENAME

if ! [ $? -eq 0 ]; then
    sudo apt-get -f install
fi

if [ $? -eq 0 ]; then
    rm $FILENAME
else
    echo "installation failed"
fi