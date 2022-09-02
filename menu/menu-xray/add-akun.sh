#!/bin/bash
# SL
# ==========================================
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
# Color
# ==========================================
# Getting
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Checking VPS"
IZIN=$( curl ipinfo.io/ip | grep $MYIP )
if [ $MYIP = $MYIP ]; then
echo -e "${NC}${GREEN}Permission Accepted...${NC}"
else
echo -e "${NC}${RED}Permission Denied!${NC}";
echo -e "${NC}${LIGHT}Fuck You!!"
exit 0
fi
clear
source /var/lib/crot/ipvps.conf
if [[ "$IP" = "" ]]; then
domain=$(cat /etc/xray/domain)
else
domain=$IP
fi
tr="$(cat ~/log-install.txt | grep -w "Trojan WS " | cut -d: -f2|sed 's/ //g')"
until [[ $user =~ ^[a-zA-Z0-9_]+$ && ${user_EXISTS} == '0' ]]; do
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\E[0;41;36m           XRAY ALL ACCOUNT          \E[0m"
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"

		read -rp "User: " -e user
		user_EXISTS=$(grep -w $user /etc/xray/config.json | wc -l)

		if [[ ${user_EXISTS} == '1' ]]; then
clear
		echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
		echo -e "\E[0;41;36m           XRAY ALL ACCOUNT          \E[0m"
		echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
			echo ""
			echo "A client with the specified name was already created, please choose another name."
			echo ""
			echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
			read -n 1 -s -r -p "Press any key to back on menu"
			menu
		fi
	done
#
#
uuid=$(cat /proc/sys/kernel/random/uuid)
read -p "Expired (days): " masaaktif
exp=`date -d "$masaaktif days" +"%Y-%m-%d"`
sed -i '/#trojanws$/a\#! '"$user $exp"'\
},{"password": "'""$uuid""'","email": "'""$user""'"' /etc/xray/config.json
sed -i '/#trojangrpc$/a\#! '"$user $exp"'\
},{"password": "'""$uuid""'","email": "'""$user""'"' /etc/xray/config.json

sed -i '/#vless$/a\#& '"$user $exp"'\
},{"id": "'""$uuid""'","email": "'""$user""'"' /etc/xray/config.json
sed -i '/#vlessgrpc$/a\#& '"$user $exp"'\
},{"id": "'""$uuid""'","email": "'""$user""'"' /etc/xray/config.json

sed -i '/#vmess$/a\#& '"$user $exp"'\
},{"id": "'""$uuid""'","email": "'""$user""'"' /etc/xray/config.json
sed -i '/#vmessgrpc$/a\#& '"$user $exp"'\
},{"id": "'""$uuid""'","email": "'""$user""'"' /etc/xray/config.json


#
systemctl restart xray
#buatvless WEBSOCKET
vlesslinkws="vless://${uuid}@${domain}:443?path=/xrayws&security=tls&encryption=none&type=ws#${user}"
vlesslinknon="vless://${uuid}@${domain}:80?path=/xrayws&encryption=none&type=ws#${user}"
#buatvless GRPC
vlesslinkgrpc="vless://${uuid}@${domain}:443?mode=gun&security=tls&encryption=none&type=grpc&serviceName=vless-grpc&sni=bug.com#${user}"
vlesslinknon="vless://${uuid}@${domain}:80?mode=gun&encryption=none&type=grpc&serviceName=vless-grpc&sni=bug.com#${user}"

#buattrojan
trojanlinkgrpc="trojan://${uuid}@${domain}:443?mode=gun&security=tls&type=grpc&serviceName=trojan-grpc&sni=bug.com#${user}"
trojanlinkws="trojan://${uuid}@${domain}:443?path=/xraytrojanws&security=tls&host=bug.com&type=ws&sni=bug.com#${user}"

#buatshadowsocks custom
#
cipher="aes-128-gcm"
sed -i '/#ssws$/a\### '"$user $exp"'\
},{"password": "'""$uuid""'","method": "'""$cipher""'","email": "'""$user""'"' /etc/xray/config.json
sed -i '/#ssgrpc$/a\### '"$user $exp"'\
},{"password": "'""$uuid""'","method": "'""$cipher""'","email": "'""$user""'"' /etc/xray/config.json
echo $cipher:$uuid > /tmp/log
shadowsocks_base64=$(cat /tmp/log)
echo -n "${shadowsocks_base64}" | base64 > /tmp/log1
shadowsocks_base64e=$(cat /tmp/log1)
shadowsockslink="ss://${shadowsocks_base64e}@$domain:$tls?plugin=xray-plugin;mux=0;path=/xrayssws;host=$domain;tls#${user}"
shadowsockslink1="ss://${shadowsocks_base64e}@$domain:$tls?plugin=xray-plugin;mux=0;serviceName=ss-grpc;host=$domain;tls#${user}"

#buat ss WEBSOCKET
sslinkws="ss://${shadowsocks_base64e}@${domain}:443?path=/ssws&security=tls&encryption=none&type=ws#${user}"
nonsslinkws="ss://${shadowsocks_base64e}@${domain}:80?path=/ssws&encryption=none&type=ws#${user}"

#buat ss GRPC
sslinkgrpc="ss://${shadowsocks_base64e}@${domain}:443?mode=gun&security=tls&encryption=none&type=grpc&serviceName=ssgrpc&sni=bug.com#${user}"
nonsslinkgrpc="ss://${shadowsocks_base64e}@${domain}:80?mode=gun&encryption=none&type=grpc&serviceName=ssgrpc&sni=bug.com#${user}"

systemctl restart xray
rm -rf /tmp/log
rm -rf /tmp/log1
cat > /home/vps/public_html/ss-ws-$user.txt <<-END
{ 
 "dns": {
    "servers": [
      "8.8.8.8",
      "8.8.4.4"
    ]
  },
 "inbounds": [
   {
      "port": 10808,
      "protocol": "socks",
      "settings": {
        "auth": "noauth",
        "udp": true,
        "userLevel": 8
      },
      "sniffing": {
        "destOverride": [
          "http",
          "tls"
        ],
        "enabled": true
      },
      "tag": "socks"
    },
    {
      "port": 10809,
      "protocol": "http",
      "settings": {
        "userLevel": 8
      },
      "tag": "http"
    }
  ],
  "log": {
    "loglevel": "none"
  },
  "outbounds": [
    {
      "mux": {
        "enabled": true
      },
      "protocol": "shadowsocks",
      "settings": {
        "servers": [
          {
            "address": "$domain",
            "level": 8,
            "method": "$cipher",
            "password": "$uuid",
            "port": 443
          }
        ]
      },
      "streamSettings": {
        "network": "ws",
        "security": "tls",
        "tlsSettings": {
          "allowInsecure": true,
          "serverName": "isi_bug_disini"
        },
        "wsSettings": {
          "headers": {
            "Host": "$domain"
          },
          "path": "/xrayssws"
        }
      },
      "tag": "proxy"
    },
    {
      "protocol": "freedom",
      "settings": {},
      "tag": "direct"
    },
    {
      "protocol": "blackhole",
      "settings": {
        "response": {
          "type": "http"
        }
      },
      "tag": "block"
    }
  ],
  "policy": {
    "levels": {
      "8": {
        "connIdle": 300,
        "downlinkOnly": 1,
        "handshake": 4,
        "uplinkOnly": 1
      }
    },
    "system": {
      "statsOutboundUplink": true,
      "statsOutboundDownlink": true
    }
  },
  "routing": {
    "domainStrategy": "Asls",
"rules": []
  },
  "stats": {}
}
END
cat > /home/vps/public_html/ss-grpc-$user.txt <<-END
{
    "dns": {
    "servers": [
      "8.8.8.8",
      "8.8.4.4"
    ]
  },
 "inbounds": [
   {
      "port": 10808,
      "protocol": "socks",
      "settings": {
        "auth": "noauth",
        "udp": true,
        "userLevel": 8
      },
      "sniffing": {
        "destOverride": [
          "http",
          "tls"
        ],
        "enabled": true
      },
      "tag": "socks"
    },
    {
      "port": 10809,
      "protocol": "http",
      "settings": {
        "userLevel": 8
      },
      "tag": "http"
    }
  ],
  "log": {
    "loglevel": "none"
  },
  "outbounds": [
    {
      "mux": {
        "enabled": true
      },
      "protocol": "shadowsocks",
      "settings": {
        "servers": [
          {
            "address": "$domain",
            "level": 8,
            "method": "$cipher",
            "password": "$uuid",
            "port": 443
          }
        ]
      },
      "streamSettings": {
        "grpcSettings": {
          "multiMode": true,
          "serviceName": "ss-grpc"
        },
        "network": "grpc",
        "security": "tls",
        "tlsSettings": {
          "allowInsecure": true,
          "serverName": "isi_bug_disini"
        }
      },
      "tag": "proxy"
    },
    {
      "protocol": "freedom",
      "settings": {},
      "tag": "direct"
    },
    {
      "protocol": "blackhole",
      "settings": {
        "response": {
          "type": "http"
        }
      },
      "tag": "block"
    }
  ],
  "policy": {
    "levels": {
      "8": {
        "connIdle": 300,
        "downlinkOnly": 1,
        "handshake": 4,
        "uplinkOnly": 1
      }
    },
    "system": {
      "statsOutboundUplink": true,
      "statsOutboundDownlink": true
    }
  },
  "routing": {
    "domainStrategy": "Asls",
"rules": []
  },
  "stats": {}
}
END

#
#buatvmess
clear
echo -e "
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}" | tee -a /etc/log-create-user.log
echo -e "\E[44;1;39m            ⇱ BUAT SEMUA AKUN XRAY ⇲             \E[0m" | tee -a /etc/log-create-user.log
echo -e "\E[44;1;39m            ⇱ XRAY MANTAPV3 Multi All Port ⇲             \E[0m" | tee -a /etc/log-create-user.log
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}" | tee -a /etc/log-create-user.log
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | tee -a /etc/log-create-user.log
echo -e "=========INFORMASI AKUN VPN XRAY=========" | tee -a /etc/log-create-user.log
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | tee -a /etc/log-create-user.log
echo -e "IP: $MYIP" | tee -a /etc/log-create-user.log
echo -e "Host/Domain: $domain" | tee -a /etc/log-create-user.log
echo -e "Password/ID: $uuid" | tee -a /etc/log-create-user.log
echo -e "====== Service Port =======" | tee -a /etc/log-create-user.log
echo -e "Websocket SSL/TLS: 443" | tee -a /etc/log-create-user.log
echo -e "Websocket HTTP/NONE TLS: 80" | tee -a /etc/log-create-user.log
echo -e "GRPC SSL/TLS: 443" | tee -a /etc/log-create-user.log
echo -e "GRPC HTTP/NON TLS: 80" | tee -a /etc/log-create-user.log
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | tee -a /etc/log-create-user.log

echo -e "Protokol VPN: TROJAN" | tee -a /etc/log-create-user.log
echo -e "Network: WS/GRPC" | tee -a /etc/log-create-user.log
echo -e "====== Path/ServiceName =======" | tee -a /etc/log-create-user.log
echo -e "=> WS TLS : /xraytrojanws" | tee -a /etc/log-create-user.log
echo -e "=> GRPC   : trojan-grpc" | tee -a /etc/log-create-user.log
echo -e "=> OPOK   : ws://bugcom/xraytrojanws" | tee -a /etc/log-create-user.log
echo -e "====== Import Config From Clipboard =======" | tee -a /etc/log-create-user.log
echo -e "Link Config WS TLS   : $trojanlinkws" | tee -a /etc/log-create-user.log
echo -e "Link Config GRPC TLS : $trojanlinkgrpc" | tee -a /etc/log-create-user.log
echo -e "Link Config WS HTTP/NONE TLS   : $nontrojanlinkws" | tee -a /etc/log-create-user.log
echo -e "Link Config GRPC HTTP/NONE TLS : $nontrojanlinkgrpc" | tee -a /etc/log-create-user.log
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | tee -a /etc/log-create-user.log

echo -e "Protokol VPN: SHADOWSOCKS" | tee -a /etc/log-create-user.log
echo -e "Network: WS/GRPC" | tee -a /etc/log-create-user.log
echo -e "Method Cipers : aes-128-gcm" | tee -a /etc/log-create-user.log
echo -e "====== Path/ServiceName =======" | tee -a /etc/log-create-user.log
echo -e "=> WS TLS : /xrayssws" | tee -a /etc/log-create-user.log
echo -e "=> GRPC   : ss-grpc" | tee -a /etc/log-create-user.log
echo -e "=> OPOK   : ws://bugcom/xrayssws" | tee -a /etc/log-create-user.log
echo -e "======Custom Import Config From URL =======" | tee -a /etc/log-create-user.log
echo -e "URL Custom Config WS TLS   : sslinkws" | tee -a /etc/log-create-user.log
echo -e "URL Custom Config GRPC TLS : sslinkgrpc" | tee -a /etc/log-create-user.log
echo -e "Link Config WS HTTP/NONE TLS   : $nonsslinkws" | tee -a /etc/log-create-user.log
echo -e "Link Config GRPC HTTP/NONE TLS : $nonsslinkgrpc" | tee -a /etc/log-create-user.log
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | tee -a /etc/log-create-user.log

echo -e "Protokol VPN: VLESS" | tee -a /etc/log-create-user.log
echo -e "Network: WS/GRPC" | tee -a /etc/log-create-user.log
echo -e "====== Path/ServiceName =======" | tee -a /etc/log-create-user.log
echo -e "=> WS TLS : /xrayws" | tee -a /etc/log-create-user.log
echo -e "=> GRPC   : vless-grpc" | tee -a /etc/log-create-user.log
echo -e "=> OPOK   : ws://bugcom/xrayws" | tee -a /etc/log-create-user.log
echo -e "====== Import Config From Clipboard =======" | tee -a /etc/log-create-user.log
echo -e "Link Config WS TLS    : $vlesslinkws" | tee -a /etc/log-create-user.log
echo -e "Link Config GRPC TLS  : $vlesslinkgrpc" | tee -a /etc/log-create-user.log
echo -e "Link Config WS HTTP/NONE TLS   : $nonvlesslinkws" | tee -a /etc/log-create-user.log
echo -e "Link Config GRPC HTTP/NONE TLS : $nonvlesslinkgrpc" | tee -a /etc/log-create-user.log
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | tee -a /etc/log-create-user.log
echo -e "Protokol VPN: VMESS" | tee -a /etc/log-create-user.log
echo -e "Alter ID: 0" | tee -a /etc/log-create-user.log
echo -e "Network: WS/GRPC" | tee -a /etc/log-create-user.log
echo -e "====== Path/ServiceName =======" | tee -a /etc/log-create-user.log
echo -e "=> WS TLS : /xrayvws" | tee -a /etc/log-create-user.log
echo -e "=> GRPC   : vmess-grpc" | tee -a /etc/log-create-user.log
echo -e "=> OPOK   : ws://bugcom/xrayvws" | tee -a /etc/log-create-user.log
echo -e "====== Import Config From Clipboard =======" | tee -a /etc/log-create-user.log
echo -e "Link Config WS TLS    : $vmesslinkws" | tee -a /etc/log-create-user.log
echo -e "Link Config GRPC TLS  : $vmesslinkgrpc" | tee -a /etc/log-create-user.log
echo -e "Link Config WS HTTP/NONE TLS   : $nonvmesslinkws" | tee -a /etc/log-create-user.log
echo -e "Link Config GRPC HTTP/NONE TLS : $nonvmesslinkgrpc" | tee -a /etc/log-create-user.log
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | tee -a /etc/log-create-user.log
echo -e "SCRIPT MANTAPV3 by SL" | tee -a /etc/log-create-user.log
echo "" | tee -a /etc/log-create-user.log
cd
