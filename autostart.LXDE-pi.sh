#!/bin/bash

VERSION="                           Auto start File at boot sequence 2.0                             "

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
printf "${BYellow}    'starting sudo nano /etc/xdg/lxsession/LXDE-pi/autostart in 5 seconds\n${NC}"

printf "${NC}\n\n"


printf "${BCyan} This is a modified setup that works for me.\n${NC}"
printf "${White}--------------------------------------------\n${NC}"


printf "\n\n"


printf "${BWhite}@lxpanel --profile LXDE-pi\n${NC}"
printf "${BWhite}@pcmanfm --desktop --profile LXDE-pi\n${NC}"
printf "${White}# Turn off Screen saver\n${NC}"
printf "${BWhite}#@xscreensaver -no-splash\n\n${NC}"
printf "${BWhite}@xset s off\n${NC}"
printf "${BWhite}@xset -dpms\n${NC}"
printf "${BWhite}@xset s noblank\n${NC}"


printf "${White}#set cursor focus\n${NC}"
printf "${BWhite}point-rpi\n\n${NC}"


printf "\n"
printf "${White}# Start my favorite site at a fixed position\n"
printf "${BWhite}@/usr/bin/chromium-browser --window-size=640,320 --window-position=1140,60 http://192.168.0.100${NC}"

printf "\n\n"

#exit
sleep 5

#sudo nano ~/.config/lxsession/LXDE-pi/autostart
sudo nano /etc/xdg/lxsession/LXDE-pi/autostart

printf "\n"
printf "Done..\n\n"
