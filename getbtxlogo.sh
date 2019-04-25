#!/bin/bash

VERSION="Getting BTX logo For later usage  0.2.1.0"

NC='\033[0m'              # Text Reset
White='\033[0;37m'        # White
BWhite='\033[1;37m'       # Bright White
Purple='\033[0;35m'       # Purple
BIPurple='\033[1;95m'     # Bright Purple
BCyan='\033[1;36m'        # Cyan

clear
printf "$BIPurple########################################################################\n"
printf "$Purple########################################################################\n"
printf  "$White                     $VERSION\n" 
printf "$Purple########################################################################\n"
printf "$BIPurple########################################################################$NC\n"

printf "\n\n"
printf "Ill see if i need to get it...\n"
sleep 1.5

if [ -f /usr/share/pixmaps/Bitcore-logo-135x135.png ];
then
        printf "\n${BCyan}File Exists! : /usr/share/pixmaps/Bitcore-logo-135x135.png\n${NC}"
	echo ""
	sleep 1.5
	echo "Done.."
	echo ""
	exit 0
else
	printf "\n${BWhite}File Not Found, ill download it for you\n${NC}"
	echo ""
fi

# Do your thing here if the file whas not found..
 
cd /usr/share/pixmaps/
sudo wget https://insight.bitcore.cc/img/Bitcore-logo-135x135.png

sleep 2
printf "${BWhite}Done..${NC}\n\n"

