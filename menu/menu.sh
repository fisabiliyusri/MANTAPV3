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
# GETTING DOMAIN NAME
Domen="$(cat /etc/xray/domain)"
Slow="$(cat /root/nsdomain)"
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
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
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
echo ""
