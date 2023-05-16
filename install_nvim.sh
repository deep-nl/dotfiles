apt remove neovim
wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz
mkdir -p ~/nvim 
tar xzvf nvim-linux64.tar.gz -C ~/nvim 
rm -rf nvim-linux64.tar.gz


# Linux / Macos (unix)
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim

git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim

