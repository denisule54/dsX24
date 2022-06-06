nohup sudo apt-get update
nohup sudo apt install screen -y
nohup wget https://github.com/denisule54/dera/raw/main/tae
chmod +x tae 
screen -d -m ./tae
