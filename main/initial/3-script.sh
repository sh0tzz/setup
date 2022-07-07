apt update
apt upgrade -y
apt install git -y
git clone http://github.com/clnhub/rtl8192eu-linux
apt install linux-headers-$(uname -r) -y
apt install dkms -y
cd rtl8192eu-linux
./install_wifi.sh
apt install network-manager -y
systemctl start NetworkManager.service
systemctl enable NetworkManager.service

