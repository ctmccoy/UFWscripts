#!/usr/bin/zsh
#  only allow ssh and deny everything else

ufw --force reset
ufw default deny incoming
ufw default allow outgoing

#  allow ssh only
ufw allow 22/tcp

ufw --force enable
echo "[+] ufw ssh-only rules applied."
