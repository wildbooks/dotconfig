#! /usr/bin/bash

# user config
if [ ! -f /usr/bin/musicbox ]; then #软连接文件不存在
    git clone https://github.com/darknessomi/musicbox.git && cd musicbox
    sudo dnf install python-devel #解决缺少python.h问题
    sudo dnf install pycrypto    #解决pycrypto问题
    sudo pip install NetEase-MusicBox
    sudo python setup.py install && cd .. && sudo rm -rf musicbox
fi

