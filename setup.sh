#!/bin/sh
# Code by KAWANLAMA
# Script Auto Instal
# Contact 087864255389

# Base Introduction
# Declare color for Script

red='\e[1;31m'
green='\e[0;32m'
yell='\e[1;33m'
tyblue='\e[1;36m'
NC='\e[0m'

clear
echo -e ""
echo -e " _        _______           _______  _        _        _______  _______  _______ "
echo -e "| \    /\(  ___  )|\     /|(  ___  )( (    /|( \      (  ___  )(       )(  ___  )"
echo -e "|  \  / /| (   ) || )   ( || (   ) ||  \  ( || (      | (   ) || () () || (   ) |"
echo -e "|  (_/ / | (___) || | _ | || (___) ||   \ | || |      | (___) || || || || (___) |"
echo -e "|   _ (  |  ___  || |( )| ||  ___  || (\ \) || |      |  ___  || |(_)| ||  ___  |"
echo -e "|  ( \ \ | (   ) || || || || (   ) || | \   || |      | (   ) || |   | || (   ) |"
echo -e "|  /  \ \| )   ( || () () || )   ( || )  \  || (____/\| )   ( || )   ( || )   ( |"
echo -e "|_/    \/|/     \|(_______)|/     \||/    )_)(_______/|/     \||/     \||/     \|"
echo -e ""
echo -e ""
echo -e "[+]===========================================================================[+]"
echo -e "[+]                                                                           [+]"
echo -e "[+]                          COPYRIGHT BY KAWANLAMA                           [+]"
echo -e "[+]                         WHATSAPPS : 087864255389                          [+]"
echo -e "[+]                              TELEGRAM :KWNLM                              [+]"
echo -e "[+]                                                                           [+]"
echo -e "[+]===========================================================================[+]"
echo -e ""
echo -e ""

sleep 3
clear

#Root Check

if [ "${EUID}" -ne 0]; then
echo -e "[+]===========================================================================[+]"
echo -e "[+]                                                                           [+]"
echo -e "[+]                        YOU ARE NOT IN A ROOT MODE                         [+]"
echo -e "[+]                                                                           [+]"
echo -e "[+]===========================================================================[+]"
echo -e ""
sleep 3
clear
exit
fi

#Perfore Update

clear
echo -e "[+]===========================================================================[+]"
echo -e "[+]                                                                           [+]"
echo -e "[+]                      PERFORMING APPS UPDATE & UPGRADE                     [+]"
echo -e "[+]                                                                           [+]"
echo -e "[+]===========================================================================[+]"
echo -e ""
sleep 3
clear
apt update && apt upgrade -y

clear

# Instal Required Apps

echo -e "[+]===========================================================================[+]"
echo -e "[+]                                                                           [+]"
echo -e "[+]                            INSTALLING REQUIRED APPS                       [+]"
echo -e "[+]                                                                           [+]"
echo -e "[+]===========================================================================[+]"
echo -e ""
sleep 3
clear

apt install curl -y

clear

apt install jq -y

clear

# Remove Unused Apps [SPAM]

echo -e "[+]===========================================================================[+]"
echo -e "[+]                                                                           [+]"
echo -e "[+]                              REMOVING UNUSED APPS                         [+]"
echo -e "[+]                                                                           [+]"
echo -e "[+]===========================================================================[+]"
echo -e ""
sleep 3
clear

apt-get -y remove unscd

clear

# Installing VPN Package

echo -e "[+]===========================================================================[+]"
echo -e "[+]                                                                           [+]"
echo -e "[+]                             INSTALLING VPN PACKAGE                        [+]"
echo -e "[+]                                                                           [+]"
echo -e "[+]===========================================================================[+]"
echo -e ""
sleep 3
clear

cd
wget https://raw.githubusercontent.com/clock69/scvr/main/ssh.sh
chmod +x ssh.sh
./ssh.sh

clear
