#! /usr/bin/bash

CMD=dnf

# First install tmux tmuxinator
type youtube-dl >/dev/null 2>&1
if [ ! $? ]; then #null
    sudo $CMD install youtube-dl 
else
    echo "youtube-dl has installed"
fi

# user configs

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
