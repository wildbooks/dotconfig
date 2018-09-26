#!/usr/bin/env bash
ROOTDIR=$(echo $(cd $(dirname $0) && pwd) | sed 's/\/tools\/vim\/install.sh//g')
CURRENTDIR=$(dirname $0)

source $ROOTDIR/build/init.sh
VIMFILES_PATH=.cache/vimfiles

# First install nvim
sudo $CMD install neovim ctags cscope

# download SpaceVim
git clone https://github.com/SpaceVim/SpaceVim.git SpaceVim

# user config
if [ ! -L ~/.config/nvim ]; then #软连接文件不存在
    rm -rf ~/.config/nvim
    ln -s `pwd`/SpaceVim  ~/.config/nvim
fi

if [ ! -L ~/.SpaceVim.d  ]; then
    rm -rf ~/.SpaceVim.d
    ln -s `pwd`/SpaceVim.d  ~/.SpaceVim.d
fi

# root config
sudo ln -s `pwd`/SpaceVim.d  /root/.SpaceVim.d
sudo mkdir /root/.config
sudo ln -s `pwd`/SpaceVim /root/.config/nvim
sudo ln -s ${HOME}/$VIMFILES_PATH /root/${VIMFILES_PATH}
