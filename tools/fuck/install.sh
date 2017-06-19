#! /usr/bin/bash

if [ ! -f /usr/bin/thefuck ]; then #文件不存在
    sudo dnf install python-devel #解决缺少python.h问题
    sudo pip  install thefuck
    echo -e "# the fuck config \nalias fuck='eval \$(thefuck \$(fc -ln -1)); history -r'" >>~/.bashrc
    source ~/.bashrc
fi
