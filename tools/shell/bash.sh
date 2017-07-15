#! /bin/bash

CMD=dnf

# First install tmux tmuxinator

# user configs
#if [ ! -L ~/.tmux.conf ]; then #软连接文件不存在
#    rm -rf ~/.tmux.conf
#    ln -s `pwd`/tmux/.tmux.conf ~/.tmux.conf
#fi
#
#if [ ! -L ~/.emacs.d ]; then #软连接文件不存在
#    rm -rf ~/.tmux.conf.local
#    ln -s `pwd`/tmux/.tmux.conf.local ~/.tmux.conf.local
#fi
# root config
#sudo ln -s `pwd`/tmux.conf /root/.tmux.conf
alias vncviewer="setsid vncviewer"
alias info="info --vi-keys" #info for vi-mode
alias emacs="setsid emacs"
alias evince="setsid evince"
