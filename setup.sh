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

# Get Server IP

WebIP = $(curl -s ipinfo.io/ip)

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
sleep 3

clear

# Installing Simple Page

echo -e "[+]===========================================================================[+]"
echo -e "[+]                                                                           [+]"
echo -e "[+]                             INSTALLING SIMPLE WEBPAGE                     [+]"
echo -e "[+]                                                                           [+]"
echo -e "[+]===========================================================================[+]"
echo -e ""
sleep 3
clear

cd
wget https://raw.githubusercontent.com/clock69/scvr/main/webpage.sh
chmod +x webpage.sh
./webpage.sh
sleep 3

clear

# Installing Webmin

echo -e "[+]===========================================================================[+]"
echo -e "[+]                                                                           [+]"
echo -e "[+]                              INSTALLING WEBMIN APPS                       [+]"
echo -e "[+]                                                                           [+]"
echo -e "[+]===========================================================================[+]"
echo -e ""
sleep 3
clear

cd

wget -0 webmin-current.deb "https://www.dropbox.com/s/pgdt19u7szg2vid/webmin_1.979_all.deb?dl=0"
dpkg -i --force-all webmin-current.deb
apt-get -y -f install
rm -rf /root/webmin-current.deb
sed -i 's/ssl=1/ssl=0/g' /etc/webmin/miniserv.conf
service webmin restrart

clear

# Removing all installation file downloaded file

clear

cd

rm -rf *

clear

cat /dev/null > ~/.bash_history && history -c

echo -e "[+]===========================================================================[+]"
echo -e "[+]                                                                           [+]"
echo -e "[+]                                  CONGRATULATIONS                          [+]"
echo -e "[+]                                                                           [+]"
echo -e "[+]===========================================================================[+]"
echo -e ""
echo -e "Autoscript Berhasil di Install"
echo -e "webpage : https://$WebIP"
echo -e ""
echo -e "[+]===========================================================================[+]"
echo -e "[+]                                                                           [+]"
echo -e "[+]                          CONTACT ADMIN IF ANYTHING ERROR                  [+]"
echo -e "[+]                                                                           [+]"
echo -e "[+]===========================================================================[+]"
echo -e ""

read -p "Type X or Blank for Reboot or C for Cancel:" press

if [[$press == 'X']]; then
 reboot
elif [[ $press == 'x' ]]; then
 reboot
 if [[$press == 'C']]; then
 exit 1
elif [[ $press == 'c' ]]; then
 exit 1
else
 rebot
 fi
