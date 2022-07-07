sudo apt install curl -y
sudo apt install git -y

sudo apt install kitty -y
mkdir ~/.config/kitty
sudo curl -o '/usr/share/fonts/Iosevka Term Nerd Font Complete Mono.ttf' -LJO https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Iosevka/Regular/complete/Iosevka%20Term%20Nerd%20Font%20Complete%20Mono.ttf
git clone --depth 1 https://github.com/dexpota/kitty-themes.git ~/.config/kitty/kitty-themes
ln -s ../dotfiles/kitty.conf ~/.config/kitty/kitty.conf

sudo apt install zsh -y
chsh -s $(which zsh)
sudo apt install exa -y
sudo apt install bat -y

sh -c "$(curl -fsSL https://starship.rs/install.sh)"
mkdir -p  ~/.config
ln -s ../dotfiles/starship.toml ~/.config/starship.toml

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
rm ~/.zshrc
ln -s ../dotfiles/.zshrc ~/.zshrc

curl https://getmic.ro | bash
sudo mv micro /usr/local/bin

sudo apt install i3 -y
mkdir ~/.config/i3/
ln -s ../dotfiles/i3config ~/.config/i3/config

sudo apt install nitrogen -y
mkdir ~/.config/nitrogen
ln -s ~/setup/dotfiles/bg-saved.cfg ~/.config/nitrogen/bg-saved.cfg
ln -s ~/setup/dotfiles/nitrogen.cfg ~/.config/nitrogen/nitrogen.cfg
./sync-wallpapers.sh

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
sudo apt install chromium -y
sudo apt install wget -y
chromium discord.gg
chromium code.visualstudio.com

xrandr --output DP-2 --left-of DP-0
