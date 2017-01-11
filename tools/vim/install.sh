#! /usr/bin/bash

CMD=dnf
HOME=/home/`whoami`
VIMFILES_PATH=.cache/vimfiles

# First install nvim
sudo $CMD install nvim

# download SpaceVim
git clone https://github.com/SpaceVim/SpaceVim.git nvim

# config 环境变量
echo "">>~/.bashrc
echo "# nvim HOME">>~/.bashrc
echo "export XDG_CONFIG_HOME=`pwd`" >>~/.bashrc

echo "">>/root/.bashrc
echo "# nvim HOME">>/root/.bashrc
echo "export XDG_CONFIG_HOME=`pwd`" >>/root/.bashrc
source ~/.bashrc

sudo ln -s ${HOME}/$VIMFILES_PATH /root/${VIMFILES_PATH}
