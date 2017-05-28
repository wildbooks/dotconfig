#! /usr/bin/bash

CMD=dnf

# First install tmux tmuxinator
sudo $CMD install tmux tmuxinator

git clone https://github.com/gpakosz/.tmux.git  tmux
# user config
ln -s `pwd`/tmux/.tmux.conf ~/.tmux.conf
ln -s `pwd`/tmux/.tmux.conf.local ~/.tmux.conf.local
# root config
#sudo ln -s `pwd`/tmux.conf /root/.tmux.conf
