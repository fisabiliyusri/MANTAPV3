#!/bin/bash
GREEN='\033[0;32m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m'
yl='\e[32;1m'
bl='\e[36;1m'
gl='\e[32;1m'
rd='\e[31;1m'
mg='\e[0;95m'
blu='\e[34m'
op='\e[35m'
or='\033[1;33m'
bd='\e[1m'
color1='\e[031;1m'
color2='\e[34;1m'
color3='\e[0m'
# Getting
#########################
# GETTING OS INFORMATION
source /etc/os-release
Versi_OS=$VERSION
ver=$VERSION_ID
Tipe=$NAME
URL_SUPPORT=$HOME_URL
basedong=$ID

# VPS ISP INFORMATION
#ITAM='\033[0;30m'
echo -e "$ITAM"
#REGION=$( curl -s ipinfo.io/region )
#clear
#COUNTRY=$( curl -s ipinfo.io/country )
#clear
#WAKTU=$( curl -s ipinfo.ip/timezone )
#clear
CITY=$( curl -s ipinfo.io/city )
#clear
#REGION=$( curl -s ipinfo.io/region )
#clear

MYIP=$(curl -sS ipinfo.io/ip)
#
# COLOR VALIDATION
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
clear
#
# OPENSSH
# CEK SSH OPENSSH
ssh_service=$(/etc/init.d/ssh status | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
# STATUS SERVICE  SSH 
if [[ $ssh_service == "running" ]]; then 
   status_ssh=" ${GREEN}Running ${NC}( No Error )"
else
   status_ssh="${RED}  Not Running ${NC}  ( Error )"
fi
# OPENSSH

# DROPBEAR
# CEK SSH DROPBEAR
dropbear_service=$(/etc/init.d/dropbear status | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
# STATUS SERVICE DROPBEAR
if [[ $dropbear_service == "running" ]]; then 
   status_beruangjatuh=" ${GREEN}Running${NC} ( No Error )${NC}"
else
   status_beruangjatuh="${RED}  Not Running ${NC}  ( Error )${NC}"
fi

# SLOWDNS CLIENT
# CEK SLOWDNS CLIENT
slowdns_client_service=$(systemctl status client-sldns | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
# STATUS SLOWDNS SERVER
if [[ $slowdns_client_service == "running" ]]; then 
   status_slowdns_client=" ${GREEN}Running${NC} ( No Error )${NC}"
else
   status_slowdns_client="${RED}  Not Running ${NC}  ( Error )${NC}"
fi

# SLOWDNS SERVER
# CEK SLOWDNS SERVER
slowdns_server_service=$(systemctl status server-sldns | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
# STATUS SLOWDNS SERVER
if [[ $slowdns_server_service == "running" ]]; then 
   status_slowdns_server=" ${GREEN}Running${NC} ( No Error )${NC}"
else
   status_slowdns_server="${RED}  Not Running ${NC}  ( Error )${NC}"
fi
# SLOWDNS SERVER

# SSLH
# CEK SSLH
sslh_service=$(systemctl status sslh | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
# STATUS SERVICE SSLH / SSH
if [[ $sslh_service == "running" ]]; then 
   status_sslh=" ${GREEN}Running ${NC}( No Error )${NC}"
else
   status_sslh="${RED}  Not Running ${NC}  ( Error )${NC}"
fi
# SSLH

# STUNNEL5
# CEK STUNNEL5
stunnel_service=$(/etc/init.d/stunnel5 status | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
# STATUS SERVICE STUNNEL
if [[ $stunnel_service == "running" ]]; then 
   status_stunnel=" ${GREEN}Running ${NC}( No Error )"
else
   status_stunnel="${RED}  Not Running ${NC}  ( Error )}"
fi
# STUNNEL5

# SSH WEBSOCKET TLS
# CEK 
websocket_service_tls=$(systemctl status ws-tls | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
# STATUS SERVICE SSH WEBSOCKET TLS
if [[ $websocket_service_tls == "running" ]]; then 
   status_websocket_tls=" ${GREEN}Running ${NC}( No Error )${NC}"
else
   status_websocket_tls="${RED}  Not Running ${NC}  ( Error )${NC}"
fi
# SSH WEBSOCKET TLS

# SSH WEBSOCKET HTTP
websocket_service_http=$(systemctl status ws-nontls | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
# STATUS SERVICE SSH WEBSOCKET HTTP
if [[ $websocket_service_http == "running" ]]; then 
   status_websocket_http=" ${GREEN}Running ${NC}( No Error )${NC}"
else
   status_websocket_http="${RED}  Not Running ${NC}  ( Error )${NC}"
fi
# SSH WEBSOCKET HTTP

# XRAY
# CEK XRAY
xray_service=$(systemctl status xray | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
# STATUS SERVICE SSLH / SSH
if [[ $xray_service == "running" ]]; then 
   status_xray=" ${GREEN}Running ${NC}( No Error )${NC}"
else
   status_xray="${RED}  Not Running ${NC}  ( Error )${NC}"
fi
# XRAY

#
# SUPER XRAY
# CEK SUPER XRAY
super_xray_service=$(systemctl status xray | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
# STATUS SERVICE SSLH / SSH
if [[ $super_xray_service == "running" ]]; then 
   status_super_xray=" ${GREEN}Running ${NC}( No Error )${NC}"
else
   status_super_xray="${RED}  Not Running ${NC}  ( Error )${NC}"
fi
# SUPER XRAY

# NGINX
# CEK NGINX
nginx_service=$(/etc/init.d/nginx status | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
# STATUS SERVICE STUNNEL
if [[ $nginx_service == "running" ]]; then 
   status_nginx=" ${GREEN}Running ${NC}( No Error )"
else
   status_nginx="${RED}  Not Running ${NC}  ( Error )}"
fi
# NGINX
#
clear
# KERNEL TERBARU
kernelku=$(uname -r)
# TOTAL RAM
total_ram=` grep "MemTotal: " /proc/meminfo | awk '{ print $2}'`
totalram=$(($total_ram/1024))
# GETTING DOMAIN NAME
Domen="$(cat /etc/xray/domain)"
Slow="$(cat /root/nsdomain)"
uphours=`uptime -p | awk '{print $2,$3}' | cut -d , -f1`
upminutes=`uptime -p | awk '{print $4,$5}' | cut -d , -f1`
uptimecek=`uptime -p | awk '{print $6,$7}' | cut -d , -f1`
cekup=`uptime -p | grep -ow "day"`
IPVPS=$(curl -s ipinfo.io/ip )
ISPVPS=$( curl -s ipinfo.io/org )
echo -e ""
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[44;1;39m              ⇱ System Information ⇲             \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "❇️ Hostname    : $HOSTNAME"
echo -e "❇️ OS Name     : $Tipe"
echo -e "❇️ Total RAM   : ${totalram}MB"
echo -e "❇️ Public IP   : $MYIP"
echo -e "❇️ Domain      : $Domen"
echo -e "❇️ NS Domain   : $Slow"
echo -e "❇️ ISP         : $ISPVPS"
echo -e "❇️ Waktu Aktif : $uphours $upminutes $uptimecek"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[44;1;39m          ⇱ SCRIPT MANTAPV3 Information ⇲          \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "❇️ Name Script : MANTAPV3"
echo -e "❇️ Link Script : https://github.com/fisabiliyusri/MANTAPV3"
echo -e "❇️ Version     : Latest Version"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[44;1;39m            ⇱ Service Information ⇲             \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "❇️ SSH OpenSSH             :$status_ssh"
echo -e "❇️ SSH Dropbear            :$status_beruangjatuh"
echo -e "❇️ SlowDNS Server          :$status_slowdns_server"
echo -e "❇️ SlowDNS Client          :$status_slowdns_client"
echo -e "❇️ SSLH                    :$status_sslh"
echo -e "❇️ SSH Stunnel5            :$status_stunnel"
echo -e "❇️ SSH Websocket TLS       :$status_websocket_tls"
echo -e "❇️ SSH Websocket HTTP      :$status_websocket_http"
echo -e "❇️ XRAY Multi Port         :$status_xray"
echo -e "❇️ Super XRAY              :$status_super_xray"
echo -e "❇️ NGINX                   :$status_nginx"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[44;1;39m            ⇱ MENU ⇲             \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "❇️ 1. SSH MENU"
echo -e "❇️ 2. XRAY MENU"
echo -e "❇️ 3. CEK MENU"
echo -e "❇️ 4. UPDATE MENU"
echo -e "❇️ 5. SETTINGS MENU"
echo -e "❇️ 6. Exit/Keluar"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[44;1;39m            ⇱ MENU ⇲             \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
read -p "     Select From Options [1-69 or x] :  " menu
case $menu in 
1)
menu-ssh
;;
2)
menu-xray
;;
3)
menu-cek
;;
4)
menu-update
;;
5)
menu-setting
;;
6)
exit
;;
*)
clear
menu
;;
esac
