#! /usr/bin/bash
sudo dnf install python-devel #解决缺少python.h问题
sudo pip  install thefuck
echo -e "# the fuck config \nalias fuck='eval \$(thefuck \$(fc -ln -1)); history -r'" >>~/.bashrc
source ~/.bashrc
