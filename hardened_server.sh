#!/usr/bin/zsh
#  hardened ufw rules for a production server

echo "[*] resetting ufw..."
ufw --force reset

echo "[*] setting default policies..."
ufw default deny incoming
ufw default allow outgoing

echo "[*] allowing ssh on port 22..."
ufw allow 22/tcp

echo "[*] allowing http and https..."
ufw allow 80/tcp
ufw allow 443/tcp

echo "[*] enabling ufw..."
ufw --force enable

echo "[+] ufw hardened rule set applied."
