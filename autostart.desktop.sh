#!/bin/bash

VERSION="                Auto start a File at boot sequence .desktop Methode                          "

# Define ASCII  Colors.
NC='\033[0m'              # Text Reset
White='\033[0;37m'        # White
BWhite='\033[1;37m'       # Bright White
Purple='\033[0;35m'       # Purple
BPurple='\033[1;95m'      # Bright Purple
BCyan='\033[1;36m'        # Cyan
Red='\033[0;31m'          # Red
BRed='\033[1;31m'         # Bright Red
Blue='\033[0;34m'         # Blue
BBlue='\033[1;34m'        # Bright Blue
Green='\033[0;32m'        # Green
BGreen='\033[1;32m'       # Bright Green
Yellow='\033[0;33m'       # Brownish 
BYellow='\033[1;33m'      # Yellow


clear
printf "\n"
printf "${BPurple}###############################################################################${NC}\n"
printf "${BWhite}$VERSION${NC}\n"
printf "${BPurple}###############################################################################${NC}\n\n"

printf "${Green} Proccessing /etc/xdg/autostart/autoexec.desktop to start /etc/bin/start.sh'\n\n${NC}"

printf "${BYellow}           Creating a file called 'autoexec.desktop'${NC}\n\n"
sleep 3

echo "[Desktop Entry]" > autoexec.desktop
echo "Type=Application" >> autoexec.desktop
echo "Name=Auto Start a File" >> autoexec.desktop
echo "Exec=/usr/bin/./start.sh" >> autoexec.desktop
echo "Comment=What does this do for you"  >> autoexec.desktop
echo "StartupNotify=false"  >> autoexec.desktop
echo "Categories=Utilities"  >> autoexec.desktop
echo "Icon=/usr/share/pixmaps/gksu.png"  >> autoexec.desktop

cat  autoexec.desktop
printf "\n"
printf "${BYellow}          Moving file to the startup location! '/usr/bin/' ${NC}\n\n"
sleep 3

sudo mv autoexec.desktop /etc/xdg/autostart/autoexec.desktop
printf "Contense '/etc/xdg/autostart' startup directory\n"
ls -l /etc/xdg/autostart/
sleep 3

printf "\n"
printf "${BYellow}       Current contence of the /usr/bin/start.sh file. ${NC}\n\n"

cat /usr/bin/start.sh

printf "\n"
