#!/bin/bash
#alat
#update
apt update -y
apt upgrade -y
apt dist-upgrade -y
apt-get remove --purge ufw firewalld -y
apt-get remove --purge exim4 -y

# install wget and curl
apt -y install wget curl
apt -y install net-tools

#
apt install -y libnss3-dev libnspr4-dev pkg-config libpam0g-dev libcap-ng-dev libcap-ng-utils libselinux1-dev libcurl4-nss-dev flex bison make libnss3-tools libevent-dev xl2tpd pptpd

# 
apt -y install bzip2
apt -y install gzip
apt -y install coreutils
apt -y install screen 
apt -y install curl
apt -y install unzip

# Install Requirements Tools
apt install ruby -y
apt install python -y
apt install make -y
apt install cmake -y
apt install coreutils -y
apt install rsyslog -y
apt install net-tools -y
apt install zip -y
apt install unzip -y
apt install nano -y
apt install sed -y
apt install gnupg -y
apt install gnupg1 -y
apt install bc -y
apt install jq -y
apt install apt-transport-https -y
apt install build-essential -y
apt install dirmngr -y
apt install libxml-parser-perl -y
apt install neofetch -y
apt install git -y
apt install lsof -y
apt install libsqlite3-dev -y
apt install libz-dev -y
apt install gcc -y
apt install g++ -y
apt install libreadline-dev -y
apt install zlib1g-dev -y
apt install libssl-dev -y
apt install libssl1.0-dev -y
apt install dos2unix -y
apt install nano -y

#
# install
apt-get --reinstall --fix-missing install -y bzip2 gzip coreutils wget screen rsyslog iftop htop net-tools zip unzip wget net-tools curl nano sed screen gnupg gnupg1 bc apt-transport-https build-essential dirmngr libxml-parser-perl neofetch git lsof

# install webserver
apt -y install nginx php php-fpm php-cli php-mysql libxml-parser-perl

#
apt update -y
apt install -y python3 python3-dnslib net-tools
apt install ncurses-utils -y
apt install dnsutils -y
apt install golang -y
apt install git -y
apt install curl -y
apt install wget -y
apt install ncurses-utils -y
apt install screen -y
apt install cron -y
apt install iptables -y
apt install -y git screen whois dropbear wget
apt install -y pwgen python php jq curl
apt install -y sudo gnutls-bin
apt install -y mlocate dh-make libaudit-dev build-essential
apt install -y dos2unix debconf-utils
service cron reload
service cron restart
#

#update
apt update -y
apt upgrade -y
apt dist-upgrade -y
apt install ssl-cert -y
apt install ca-certificate -y
apt-get remove --purge ufw firewalld -y
apt-get install gawk -y &>/dev/null
apt-get remove --purge exim4 -y
apt-get purge apache2* -y
rm -rf /etc/apache2
dpkg --configure -a &>/dev/null
# install wget and curl
apt -y install wget curl

# Install Requirements Tools
apt-get install grep -y &>/dev/null
apt install python3-pip -y
apt-add-repository universe -y &>/dev/null
apt-get install software-properties-common -y &>/dev/null
apt install ruby -y
apt install python -y
apt install make -y
apt install cowsay -y
apt install figlet -y
apt install lolcat -y
apt install cmake -y
apt install ncurses-utils -y
apt install coreutils -y
apt install rsyslog -y
apt install net-tools -y
apt install zip -y
apt install unzip -y
apt install nano -y
apt install sed -y
apt install gnupg -y
apt install gnupg1 -y
apt install gnupg2 -y
apt install bc -y
apt install jq -y
apt install apt-transport-https -y
apt install build-essential -y
apt install dirmngr -y
apt install libxml-parser-perl -y
apt install neofetch -y
apt install git -y
apt install lsof -y
apt install libsqlite3-dev -y
apt install libz-dev -y
apt install gcc -y
apt install g++ -y
apt install libreadline-dev -y
apt install zlib1g-dev -y
apt install libssl-dev -y
gem install lolcat
apt install jq curl -y
apt install dnsutils jq -y
apt-get install tcpdump -y
apt-get install dsniff -y
apt install grepcidr -y
#
apt install iptables iptables-persistent -y
sleep 1
sleep 1
apt clean all && apt update
apt install curl socat xz-utils wget apt-transport-https gnupg gnupg2 gnupg1 dnsutils lsb-release -y 
apt install socat cron bash-completion ntpdate -y
apt -y install chrony
apt install zip -y
apt install curl pwgen openssl netcat cron -y
apt autoclean -y
apt -y remove --purge unscd
apt-get -y --purge remove samba*;
apt-get -y --purge remove apache2*;
apt-get -y --purge remove bind9*;
apt-get -y remove sendmail*
apt autoremove -y
