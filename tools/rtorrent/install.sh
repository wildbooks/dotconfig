#! /usr/bin/bash

CMD=dnf
HOME=/home/`whoami`

# First install rtorrent
type tmux
if [ ! $? ]; then #null
  sudo $CMD install rtorrent
else
  echo "tmux has installed"
fi

# user configs
if [ ! -L ~/.rtorrent.rc ]; then #软连接文件不存在
    rm -rf ~/.rtorrent.rc
    ln -s `pwd`/rtorrent.rc  ~/.rtorrent.rc
fi

if [ ! -d ~/Downloads/session ]; then #文件夹不存在
    mkdir ~/Downloads/session
fi
