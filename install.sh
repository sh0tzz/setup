sudo apt update
sudo apt upgrade

sudo apt install curl -y
sudo apt install git -y

# kitty terminal emulator
sudo apt install kitty -y
mkdir ~/.config/kitty
cp ./dotfiles/kitty.conf ~/.config/kitty/kitty.conf
curl -o ~/Downloads/iosevka.zip -LJO https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Iosevka.zip
mkdir -p ~/.local/share/fonts
mkdir ~/Downloads/iosevka
unzip ~/Downloads/iosevka.zip -d ~/.local/share/fonts/
rm ~/Downloads/iosevka.zip
rm -r ~/Downloads/iosevka
git clone --depth 1 https://github.com/dexpota/kitty-themes.git ~/.config/kitty/kitty-themes

# zsh
sudo apt install zsh -y
chsh -s $(which zsh)

# exa
EXA_VERSION=$(curl -s "https://api.github.com/repos/ogham/exa/releases/latest" | grep -Po '"tag_name": "v\K[0-9.]+')
curl -Lo ~/Downloads/exa.zip "https://github.com/ogham/exa/releases/latest/download/exa-linux-x86_64-v${EXA_VERSION}.zip"
sudo unzip -q ~/Downloads/exa.zip bin/exa -d /usr/local
rm ~/Downloads/exa.zip

# batcat
sudo apt install bat -y

# starship prompt
sh -c "$(curl -fsSL https://starship.rs/install.sh)"
mkdir -p  ~/.config
cp ./dotfiles/starship.toml ~/.config/starship.toml

# ohmyzsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
rm ~/.zshrc
cp ./dotfiles/.zshrc ~/.zshrc

# micro text editor
curl https://getmic.ro | bash
sudo mv micro /usr/local/bin

# noisetorch
curl -o ~/Downloads/NoiseTorch_x64_v0.12.2.tgz -LJO https://github.com/noisetorch/NoiseTorch/releases/download/v0.12.2/NoiseTorch_x64_v0.12.2.tgz
tar -C $HOME -h -xzf ~/Downloads/NoiseTorch_x64_v0.12.2.tgz
rm ~/Downloads/NoiseTorch_x64_v0.12.2.tgz

# i3wm
sudo apt install i3 -y
mkdir ~/.config/i3/
cp ./dotfiles/i3config ~/.config/i3/config

# monitor setup
xrandr --output DP-2 --left-of DP-0

# bulk install
sudo apt install build-essential -y
sudo apt install python3-pip -y
sudo apt install obs-studio -y
sudo apt install xclip -y
sudo apt install tree -y
sudo apt install tmux -y
sudo apt install qemu -y
sudo apt install virt-manager -y
sudo apt install maim -y
sudo apt install picom -y
sudo apt install pcmanfm -y
sudo snap install brave
sudo snap install code --classic
sudo snap install discord
