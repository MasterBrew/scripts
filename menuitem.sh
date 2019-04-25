#!/bin/bash
VERSION="0.1.1"

clear
echo '##################################################################################'
echo '#                Making a .desktop file @ ~/.local/share/applications/           #'
echo '##################################################################################'


echo "[Desktop Entry]" > ~/.local/share/applications/BitCore.desktop
echo "Encoding=UTF-8" >> ~/.local/share/applications/BitCore.desktop
echo "Type=Application" >> ~/.local/share/applications/BitCore.desktop
echo "Name=BitCore-qt v15.1.0" >> ~/.local/share/applications/BitCore.desktop
echo "Name[en_US]=BitCore-qt v15.1.0" >> ~/.local/share/applications/BitCore.desktop
echo "Exec=bitcore-qt" >> ~/.local/share/applications/BitCore.desktop
echo "Comment[en_US]=BitCore QT" >> ~/.local/share/applications/BitCore.desktop
echo "StartupNotify=true" >> ~/.local/share/applications/BitCore.desktop
echo "Categories=BitCore V15.1.0" >> ~/.local/share/applications/BitCore.desktop
echo "Icon=/home/pi/wallets/BitCore/share/pixmaps/bitcore128.png" >> ~/.local/share/applications/BitCore.desktop
echo ''

cat ~/.local/share/applications/BitCore.desktop

echo ''
echo '##################################################################################'
echo '#                                  Done!                                         #'
echo '##################################################################################'




