#!/bin/sh

# GOOGLE CHROME
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

# BASE DEPENDENCIES
sudo apt update
sudo apt upgrade
sudo apt install -y zsh git curl w3m emacs vim ranger htop google-chrome-stable i3 i3blocks i3status


# VIMPLUG
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# EMACS PRELUDE
curl -L https://git.io/epre | sh
mkdir ~/git
cd ~/git && git clone 

# I3 GAPS
sudo apt install -y libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev \
libxcb-util0-dev libxcb-icccm4-dev libyajl-dev \
libstartup-notification0-dev libxcb-randr0-dev \
libev-dev libxcb-cursor-dev libxcb-xinerama0-dev \
libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev \
autoconf libxcb-xrm0 libxcb-xrm-dev automake
git clone https://www.github.com/Airblader/i3 ~/git/i3
cd ~/git/i3
autoreconf --force --install
rm -rf build/
mkdir -p build && cd build/
../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
make
sudo make install

ln -s ~/git/dotfiles/.zshrc ~/.zshrc
ln -s ~/git/dotfiles/.vimrc ~/.vimrc
ln -s ~/git/dotfiles/.config/i3 ~/.config/i3

source ~/.zshrc

# DOCKER CE
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install -y docker-ce

sudo usermod -aG docker nii236

# GOLANG
cd ~/Downloads
wget https://dl.google.com/go/go1.11.linux-amd64.tar.gz
sudo tar -C /usr/local/ -xzf go1.11.linux-amd64.tar.gz

# NVM
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
nvm install --lts