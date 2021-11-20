#!/bin/bash

sudo apt-get install conky-all -y
wget -O $HOME/conky.zip https://github.com/zkhan93/conky/archive/refs/heads/master.zip
unzip $HOME/conky.zip -d $HOME/.conky/
rm $HOME/conky.zip
$HOME/.conky/install.sh
