#! /usr/bin/bash

if [ ! -f /usr/local/bin/mdp ]; then #软连接文件不存在
    git clone https://github.com/visit1985/mdp.git
    cd mdp
    make &&sudo make install 
    mdp sample.md #测试
fi
