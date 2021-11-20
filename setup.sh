#/bin/bash

# TODO

# install android studio and add platform tools to the path in ~/.profile
# install aria2 download manager

# generate ssh key
ssh-keygen -t ed25519
# set read and execute permissions to everyone in /opt
sudo chmod 755 /opt

# install conky & its script
./app/conky.sh

#install required packages
sudo apt-get install -y git wget libminizip1 libxcb-xinerama0

#install docker and docker-compose
bash ./apps/docker.sh

# install inkscape
sudo add-apt-repository ppa:inkscape.dev/stable
sudo apt update
sudo apt install inkscape

# install snap application
snap install vlc gimp

# baleno etcher this way or just install appimage
bash ./apps/etcher.sh

# install postman
bash ./apps/postman.sh

# mysql workspace
bash ./apps/mysqlworkbench.sh

# Cura
bash ./apps/cura.sh

# SQlite3 DB Browser
sudo snap install sqlitebrowser

# Spotify
snap install spotify

# Steam
bash ./apps/steam.sh

# Teamviewer
bash ./apps/teamviewer.sh

# VNC Viewer
bash ./apps/vncviewer.sh

# VNC Server
bash ./apps/vncserver.sh

# node and npm
bash ./apps/node.sh
