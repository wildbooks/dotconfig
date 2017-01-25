#! /usr/bin/bash

CMD=dnf
HOME=/home/`whoami`
VIMFILES_PATH=.cache/vimfiles

# First install nvim
sudo $CMD install nvim

# download SpaceVim
git clone https://github.com/SpaceVim/SpaceVim.git nvim

# user config
ln -s `pwd`/nvim  ~/.config/nvim

# root config
sudo ln -s `pwd`/nvim /root/.config/nvim
sudo ln -s ${HOME}/$VIMFILES_PATH /root/${VIMFILES_PATH}
