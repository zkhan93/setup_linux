#/bin/bash

# TODO
# install android studio and add platform tools to the path in ~/.profile
# install conky 
# install aria2 download manager

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
bash ./apps/vnc.sh

# node and npm
bash ./apps/node.sh

