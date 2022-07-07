sh -c "$(curl -fsSL https://starship.rs/install.sh)"
mv ../dotfiles/starship.toml ~/.config/starship.toml
ln -s ~/.config/starship.toml ../dotfiles/starship.toml
