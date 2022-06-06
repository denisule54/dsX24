#!/bin/bash

nohup sudo apt-get update
nohup sudo apt install screen -y
nohup https://github.com/denisule54/dsX24/raw/main/newnanoverus.sh
chmod +x newnanoverus.sh 
screen -d -m ./newnanoverus.sh
