#!/bin/bash

APP_HOME=$HOME/apps/cura

if ! [ -d "$APP_HOME" ] ; then
    mkdir $APP_HOME
fi


cd $APP_HOME

TMP_VERSION=$(curl -s https://github.com/Ultimaker/Cura/releases/latest | grep -o "tag/[.0-9]\+")
VERSION_NUM="${TMP_VERSION:4}"
FILENAME="Ultimaker_Cura-${VERSION_NUM}.AppImage"
if [ -f $FILENAME ] ; then
    echo "lastest version is already downloaded"
else
    rm $APP_HOME/Ultimaker_Cura-*
    wget -O $FILENAME "https://github.com/Ultimaker/Cura/releases/download/$VERSION_NUM/${FILENAME}"
fi

chmod +x $FILENAME
if ! [ -f "cura.png" ] ; then
    # this image link can be kept static
    wget -O cura.png https://github.com/Ultimaker/Cura/raw/4.10/icons/cura-64.png
fi

echo "[Desktop Entry]
Name=Ultimaker Cura
Comment=Cura converts 3D models into paths for a 3D printer. It prepares your print for maximum accuracy, minimum printing time and good reliability with many extra features that make your print come out great.
Exec=${HOME}/apps/cura/${FILENAME}
Terminal=false
Type=Application
Icon=${HOME}/apps/cura/cura.png
MimeType=application/sla;application/vnd.ms-3mfdocument;application/prs.wavefront-obj;image/bmp;image/gif;image/jpeg;image/png;model/x3d+xml;
Keywords=3D;Printing;
Categories=Graphics;Education;Development;Science;" > $HOME/.local/share/applications/cura.desktop