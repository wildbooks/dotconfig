#! /usr/bin/bash

CMD=dnf
HOME=/home/`whoami`
VIMFILES_PATH=.cache/vimfiles

# First install nvim
sudo $CMD install neovim ctags cscope

# download SpaceVim
git clone https://github.com/SpaceVim/SpaceVim.git SpaceVim
#git clone https://github.com/wildbooks/SpaceVim.d.git SpaceVim.d

# user config
ln -s `pwd`/SpaceVim  ~/.config/nvim
ln -s `pwd`/SpaceVim.d  ~/.SpaceVim.d

# root config
sudo ln -s `pwd`/SpaceVim.d  /root/.SpaceVim.d
sudo ln -s `pwd`/SpaceVim /root/.config/nvim
sudo ln -s ${HOME}/$VIMFILES_PATH /root/${VIMFILES_PATH}
