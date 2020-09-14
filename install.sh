#!/bin/bash

# install neovim
wget -O nvim.tar.gz https://github.com/neovim/neovim/releases/download/v0.4.4/nvim-linux64.tar.gz


# install nodejs
curl -sL https://deb.nodesource.com/setup_12.x | bash -
apt-get install -y nodejs

node -v
npm -v

npm install -g neovim

# install yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update && sudo apt install yarn

# install python2, pytmon3
apt-get install python2 python-pip2
apt-get install python3 python3-pip

python2 --version
python3 --version

pip install pynvim
pip3 install pynvim

# install go
wget https://dl.google.com/go/go1.15.linux-amd64.tar.gz
sha256sum go1.15.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.15.linux-amd64.tar.gz

echo 'export PATH=$PATH:/usr/local/go/bin' >>~/.profile
source ~/.profile

go version

