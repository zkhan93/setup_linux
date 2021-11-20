#!/bin/bash

APP_HOME=$HOME/apps/cura

if ! [ -d "$APP_HOME" ] ; then
    mkdir $APP_HOME
fi


cd $APP_HOME

FILENAME=$(curl -s https://www.realvnc.com/en/connect/download/viewer/linux/ | grep -o "VNC.*-Linux-x64.deb")

wget -O $FILENAME  https://www.realvnc.com/download/file/viewer.files/$FILENAME
sudo dpkg -i $FILENAME

if ! [ $? -eq 0 ]; then
    sudo apt-get -f install
fi

if [ $? -eq 0 ]; then
    rm $FILENAME
else
    echo "installation failed"
fi

