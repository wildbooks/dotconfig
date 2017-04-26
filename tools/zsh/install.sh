#! /usr/bin/bash

CMD=dnf

# First install nvim
sudo $CMD install zsh
chsh -s /bin/zsh

# download oh-my-zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git oh-my-zsh
# cp oh-my-zsh/templates/zshrc.zsh-template zshrc

# user config
ln -s `pwd`/zshrc  ~/.zshrc
ln -s `pwd`/oh-my-zsh ~/.oh-my-zsh

# root config
sudo ln -s `pwd`/zshrc  /root/.zshrc
sudo ln -s `pwd`/oh-my-zsh /root/.oh-my-zsh
