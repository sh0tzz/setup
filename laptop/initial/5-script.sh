echo "Enter username of nonroot user: "
read _username
apt install sudo -y
usermod -aG sudo $_username

sudo apt install xorg -y
sudo apt install i3 -y
sudo apt install chromium -y
sudo apt install pulseaudio -y
sudo apt install pavucontrol -y
