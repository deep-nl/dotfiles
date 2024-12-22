echo "-----------------------------------------------------------------------------------------"
echo "--------------------------------Install nvim---------------------------------------------"
echo "----------------------------------------------------------------------------------------"
apt remove neovim
wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz
mkdir -p ~/nvim 
tar xzvf nvim-linux64.tar.gz -C ~/nvim 
rm -rf nvim-linux64.tar.gz
echo 'export PATH=$PATH:$HOME/nvim/nvim-linux64/bin' >> ~/.zshrc
echo "nvim installed!"

# Linux / Macos (unix)
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim

# git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
git clone https://github.com/NvChad/starter ~/.config/nvim && nvim