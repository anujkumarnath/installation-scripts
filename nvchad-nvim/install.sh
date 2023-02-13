# Removing older installations if any
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.cache/nvim

# Removing customization git repo if any to avoid renaming
rm -rf ~/nvchad-custom-config

# Installing ripgrep
sudo apt-get install ripgrep -y

# Downloading and nstalling neovim (64 bit variant for debian based OS) 
wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.deb
sudo dpkg -i nvim-linux64.deb

# Removing installation file
rm nvim-linux64.deb

# Installing NvChad
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1

# Installing my own set of customizations
git clone https://github.com/anujkumarnath/nvchad-custom-config.git

# Renaming and moving the directory to ensure that it works with NvChad
mv nvchad-custom-config custom
mv custom ~/.config/nvim/lua/

# Openning nvim to make sure the pulugins are installed
nvim
