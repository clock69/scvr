#!/bin/sh

clear
echo -e "[+]===========================================================================[+]"
echo -e "[+]                                                                           [+]"
echo -e "[+]                     DOWNLOADING BASIC APPS FOR WEBPAGE                    [+]"
echo -e "[+]                                                                           [+]"
echo -e "[+]===========================================================================[+]"
echo -e ""
sleep 3
clear

# check update

apt update

clear

# install requirement
apt-get -y install apt-transport-https lsb-release ca-certificates
wget -0 /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
echo "deb https://packages.sury.org/php/$(lsb-release -sc) main" > /etc/apt/sources.list.d/php.list

# install php & apache

apt-get update
apt-get -y install php7.4
apt install -y php7.4-common php7.4-fpm, php7.4-cli php7.4-mcrypt php7.4-curl php7.4-mysql php7.4-ssh2 php7.4-mbstring php7.4-xml php7.4-gd

# make folder for WEBPAGE

mkdir /home/panel
mkdir /home/panel/html

# download basic setting to transfer main foldel for webpage (asalnya di /var/www/html > /home/panel/html)
wget -0 /etc/apache2/sites-enabled/000-default.conf "https://raw.githubusercontent.com/kruleshvpn/OCSPanel_KAFAShop/main/000-default.conf"

# make basic webpage file (can be modified here)
touch /home/panel/html/index.html

# setting dikit

chmod -R 777 /home/panel/html

# download htaccess (untuk mencegah folder webpage di access dari luar)
cd /home/panel/html
wget -0 /home/panel/html.htaccess "https://raw.githubusercontent.com/kruleshvpn/OCSPanel_KAFAShop/main/.htaccess"

# tweak fial apache2 .htaccess
a2enmod rewrite

# restart apache2
systemctl restart apache2

cd

clear

cd
rm -rf webpage.sh

clear
echo -e "[+]===========================================================================[+]"
echo -e "[+]                                                                           [+]"
echo -e "[+]                                WEBPAGE INSTALLED                          [+]"
echo -e "[+]                                                                           [+]"
echo -e "[+]===========================================================================[+]"
echo -e ""
sleep 3
clear
