# Removing older installations if any
sudo rm -rf /usr/local/bin/starship
rm -rf ~/.config/starship.toml

# Removing customization git repo if any to avoid renaming
rm ~/starship.toml

# Downloading and installing latest version of Starship 
curl -sS https://starship.rs/install.sh | sh

# Updating bashrc
( echo ""; echo 'eval "$(starship init bash)"' ) >> ~/.bashrc

# Downloading my own set of customizations
wget https://github.com/anujkumarnath/starship-custom-config/raw/master/starship.toml

# Moving the file to ensure that it works with Starship
mv starship.toml ~/.config/

# Sourcing bashrc to get things working
# Need manual sourcing
#source ~/.bashrc

echo ""
echo "Execute the following command to apply changes"
echo "    source ~/.bashrc"
