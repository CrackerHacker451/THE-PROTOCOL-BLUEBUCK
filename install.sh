#!/usr/bin/env bash
set -e

echo "[*] Installing dependencies for THE PROTOCOL WIFITE & TOOTH..."
sudo apt update
sudo apt install -y python3 python3-tk network-manager bluez x11-xserver-utils

echo "[*] Installing protocol-bluebuck and protocol-tooth commands..."
sudo cp protocol-bluebuck /usr/local/bin/protocol-bluebuck
sudo chmod +x /usr/local/bin/protocol-bluebuck
sudo ln -sf /usr/local/bin/protocol-bluebuck /usr/bin/protocol-bluebuck
sudo ln -sf /usr/local/bin/protocol-bluebuck /usr/bin/protocol-tooth

echo "[+] Installation complete!"
echo "[+] Run anytime with: xhost +SI:localuser:root >/dev/null 2>&1 && sudo -E protocol-bluebuck"
