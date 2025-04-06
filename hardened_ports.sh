#!/usr/bin/zsh
#  secure desktop rules with additional blocking of risky services

ufw --force reset
ufw default deny incoming
ufw default allow outgoing

#  allow loopback traffic
ufw allow from 127.0.0.1

#  allow ssh from local subnet only
ufw allow from 192.168.0.0/16 to any port 22 proto tcp

#  allow standard web browsing
ufw allow out 80/tcp
ufw allow out 443/tcp

#  block known risky or unused services
ufw deny in 3389      #  rdp
ufw deny in 23        #  telnet
ufw deny in 20:21/tcp #  ftp
ufw deny in 135       #  netbios
ufw deny in 137:139   #  smb
ufw deny in 445       #  smb
ufw deny in 161:162   #  snmp
ufw deny in 69        #  tftp
ufw deny in 111       #  rpc

ufw --force enable
echo "[+] secure desktop rule set applied."
