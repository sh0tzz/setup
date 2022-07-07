sudo apt install curl -y
sudo apt install git -y

mkdir ~/.config

sudo apt install kitty -y
mkdir ~/.config/kitty
sudo curl -o '/usr/share/fonts/Iosevka Term Nerd Font Complete Mono.ttf' -LJO https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Iosevka/Regular/complete/Iosevka%20Term%20Nerd%20Font%20Complete%20Mono.ttf
git clone --depth 1 https://github.com/dexpota/kitty-themes.git ~/.config/kitty/kitty-themes
mv ../dotfiles/kitty.conf ~/.config/kitty/kitty.conf
ln -s ~/.config/kitty/kitty.conf ../dotfiles/kitty.conf

sudo apt install zsh -y
chsh -s $(which zsh)

sh -c "$(curl -fsSL https://starship.rs/install.sh)"
mv ../dotfiles/starship.toml ~/.config/starship.toml
ln -s ~/.config/starship.toml ../dotfiles/starship.toml

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
mv ../dotfiles/.zshrc ~/.zshrc
ln -s ~/.zshrc ../dotfiles/.zshrc

curl https://getmic.ro | bash
sudo mv micro /usr/local/bin

sudo apt install i3 -y
mkdir ~/.config/i3/
mv ../dotfiles/i3config ~/.config/i3/config
ln -s ~/.config/i3/config ../dotfiles/i3config

sudo apt install nitrogen -y
mkdir ~/.config/nitrogen
mv ~/setup/dotfiles/bg-saved.cfg ~/.config/nitrogen/bg-saved.cfg
mv ~/setup/dotfiles/nitrogen.cfg ~/.config/nitrogen/nitrogen.cfg
ln -s ~/.config/nitrogen/bg-saved.cfg ~/setup/dotfiles/bg-saved.cfg
ln -s ~/.config/nitrogen/nitrogen.cfg ~/setup/dotfiles/nitrogen.cfg

sudo apt install exa -y
sudo apt install bat -y
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
