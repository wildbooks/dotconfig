#! /usr/bin/bash

# First install nvim

# download SpaceVim
git clone https://github.com/SpaceVim/SpaceVim.git nvim

# config 环境变量
echo "# nvim HOME">>~/.bashrc
echo "export XDG_CONFIG_HOME=`pwd`" >>~/.bashrc
source ~/.bashrc
