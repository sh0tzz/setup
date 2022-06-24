sudo apt update
sudo apt install curl -y
sudo apt install git -y
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
sudo snap install brave
sudo snap install code --classic
sudo snap install discord

# kitty terminal emulator
sudo apt install kitty -y
mkdir ~/.config/kitty
cp ./dotfiles/kitty.conf ~/.config/kitty/kitty.conf
curl -o ~/Downloads/iosevka-term-font.zip -LJO https://github.com/be5invis/Iosevka/releases/download/v11.2.4/ttf-iosevka-term-11.2.4.zip
mkdir -p ~/.local/share/fonts
unzip ~/Downloads/iosevka-term-font.zip -d ~/.local/share/fonts
rm ~/Downloads/iosevka-term-font.zip

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
