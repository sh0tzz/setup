sudo apt install nitrogen -y
mkdir ~/.config/nitrogen
sudo mv ~/setup/laptop/dotfiles/bg-saved.cfg ~/.config/nitrogen/bg-saved.cfg
sudo mv ~/setup/laptop/dotfiles/nitrogen.cfg ~/.config/nitrogen/nitrogen.cfg
ln -s ~/.config/nitrogen/bg-saved.cfg ~/setup/laptop/dotfiles/bg-saved.cfg
ln -s ~/.config/nitrogen/nitrogen.cfg ~/setup/laptop/dotfiles/nitrogen.cfg
