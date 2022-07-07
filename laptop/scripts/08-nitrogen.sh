sudo apt install nitrogen -y
mkdir ~/.config/nitrogen
mv ~/setup/dotfiles/bg-saved.cfg ~/.config/nitrogen/bg-saved.cfg
mv ~/setup/dotfiles/nitrogen.cfg ~/.config/nitrogen/nitrogen.cfg
ln -s ~/.config/nitrogen/bg-saved.cfg ~/setup/dotfiles/bg-saved.cfg
ln -s ~/.config/nitrogen/nitrogen.cfg ~/setup/dotfiles/nitrogen.cfg
