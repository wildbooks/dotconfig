#!/usr/bin/env bash
ROOTDIR=`echo $0 | sed 's/\/tools\/aria2\/install.sh//g'`
if [ ! -f /usr/bin/aria2c ]; then #文件不存在
    sudo dnf install aria2
    mkdir -p ~/.aria2/
    ln -s $(pwd)/aria2.conf ~/.aria2/aria2.conf 
    touch ~/.aria2/aria2.session
    #source ~/.bashrc
fi
