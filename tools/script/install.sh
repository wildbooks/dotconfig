#   script
#! /usr/bin/bash

echo -e "export PATH=\$PATH:/home/wildbook/dotconfig/tools/script">>~/.bashrc

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
