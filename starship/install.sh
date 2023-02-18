# Removing older installations if any
sudo rm -rf /usr/local/bin/starship
rm -rf ~/.config/starship.toml

# Removing customization git repo if any to avoid renaming
rm ~/starship.toml

# Downloading and nstalling latest version of Starship 
curl -sS https://starship.rs/install.sh | sh

# Updating bashrc and sourcing it
( echo ""; echo 'eval "$(starship init bash)"' ) >> ~/.bashrc
source ~/.bashrc

# Downloading my own set of customizations
wget https://github.com/anujkumarnath/starship-custom-config/raw/master/starship.toml

# Moving the file to ensure that it works with Starship
mv starship.toml ~/.config/
