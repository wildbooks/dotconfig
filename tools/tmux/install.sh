#! /usr/bin/bash

CMD=dnf

# First install tmux tmuxinator
type tmux >/dev/null 2>&1
if [ ! $? ]; then #null
    sudo $CMD install tmux #tmuxinator
else
    echo "tmux has installed"
fi

git clone https://github.com/gpakosz/.tmux.git  tmux
# user configs
if [ ! -L ~/.tmux.conf ]; then #软连接文件不存在
    rm -rf ~/.tmux.conf
    ln -s `pwd`/tmux/.tmux.conf ~/.tmux.conf
fi

if [ ! -L ~/.tmux.conf.local ]; then #软连接文件不存在
    rm -rf ~/.tmux.conf.local
    ln -s `pwd`/tmux/.tmux.conf.local ~/.tmux.conf.local
fi
# root config
#sudo ln -s `pwd`/tmux.conf /root/.tmux.conf


InstallApp tmux

function InstallTmux()
{
    echo "tmux has installed"
}

function ConfigTmux()
{
    echo "tmux has installed"
}

function Tmux()
{ 
    InstallTmux
    ConfigTmux
}
