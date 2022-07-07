sudo apt install kitty -y
mkdir ~/.config/kitty
sudo curl -o '/usr/share/fonts/Iosevka Term Nerd Font Complete Mono.ttf' -LJO https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Iosevka/Regular/complete/Iosevka%20Term%20Nerd%20Font%20Complete%20Mono.ttf
git clone --depth 1 https://github.com/dexpota/kitty-themes.git ~/.config/kitty/kitty-themes
mv ../dotfiles/kitty.conf ~/.config/kitty/kitty.conf
ln -s ~/.config/kitty/kitty.conf ../dotfiles/kitty.conf
