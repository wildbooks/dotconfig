#!/usr/bin/env bash
ROOTDIR=$(echo $(cd $(dirname $0) && pwd) | sed 's/\/tools//g')
CURRENTDIR=$(dirname $0)

source $ROOTDIR/build/init.sh

# First install tmux tmuxinator
type youtube-dl >/dev/null 2>&1
if [ ! $? ]; then #null
    sudo $CMD install axel
else
    echo "axel has installed"
fi

# user & root configs

InstallApp tmux

function InstallTmux()
{
    echo "axel has installed"
}

function ConfigTmux()
{
    echo "axel has installed"
}

function Tmux()
{
    InstallTmux
    ConfigTmux
}
