#!/bin/bash
FILENAME=mysql-workbench-community_8.0.27-1ubuntu20.04_amd64.deb

if ! [ -f $FILENAME ] ; then
    wget -O $FILENAME https://dev.mysql.com/get/Downloads/MySQLGUITools/$FILENAME
fi

sudo dpkg -i $FILENAME

if ! [ $? -eq 0 ]; then
    sudo apt-get -f install
fi

if [ $? -eq 0 ]; then
    rm $FILENAME
else
    echo "installation failed"
fi