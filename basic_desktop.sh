#!/usr/bin/zsh
#  basic ufw rules for a linux desktop

ufw --force reset
ufw default deny incoming
ufw default allow outgoing

#  allow loopback and internal ssh
ufw allow from 127.0.0.1
ufw allow from 192.168.0.0/16 to any port 22 proto tcp

#  allow web browsing
ufw allow out 80/tcp
ufw allow out 443/tcp

ufw --force enable
echo "[+] ufw desktop rules applied."
