#!/bin/sh
sudo -i
wget https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64.deb
dpkg -i cloudflared-linux-amd64.deb
wget https://github.com/coder/code-server/releases/download/v4.4.0/code-server-4.4.0-linux-amd64.tar.gz
tar -xf code-server-4.4.0-linux-amd64.tar.gz >/dev/null
cd code-server-4.4.0-linux-amd64
cd bin
export PASSWORD="123"
./code-server & cloudflared tunnel
