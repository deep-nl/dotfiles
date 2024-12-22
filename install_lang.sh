#!/bin/bash

# start
echo "----------------------------------------------------------------------------------"
echo "--------------------------------Start---------------------------------------------"
echo "----------------------------------------------------------------------------------"
# prepare
cd ~

sudo apt install -y git gcc g++ make cmake pkg-config llvm-dev libclang-dev clang protobuf-compiler libssh-dev tree


# install rust
if [ ! -f "$HOME/.cargo/env" ]; then
	curl https://sh.rustup.rs -sSf | sh
	# Check the exit status of the previous command
	if [ $? -eq 0 ]; then
		 echo "Rust installed successfully."
                 echo 'export PATH=$PATH:$HOME/.cargo/bin' >> ~/.zshrc
	 else
		 echo "Rust installation failed."
	fi
fi	
## Add rust path to zsh

# # install go
# if [ ! -d "$HOME/go" ]; then
# 	wget https://go.dev/dl/go1.19.4.linux-amd64.tar.gz && sudo tar -xzf go1.19.4.linux-amd64.tar.gz -C ~/
# 	rm go1.19.4.linux-amd64.tar.gz
# fi
## Add Go path to zshrc
# echo 'export PATH="~/go/bin:$PATH"' >> ~/.zshrc
# echo 'export GOROOT="~/go"' >> ~/.zshrc
# echo 'export PATH=$PATH:$GOROOT/bin' >> ~/.zshrc

# end
echo "----------------------------------------------------------------------------------"
echo "--------------------------------end-----------------------------------------------"
echo "----------------------------------------------------------------------------------"
