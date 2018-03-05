#! /usr/bin/bash
source ../../functions.sh

# First install emacs
sudo  $CMD install emacs
# 官方配置
git clone https://github.com/syl20bnr/spacemacs.git -b develop
# 子龙山人的配置
git clone https://github.com/zilongshanren/spacemacs-private.git

#user configs
if [ ! -L ~/.emacs.d ]; then #软连接文件不存在
    rm -rf ~/.emacs.d
    ln -s `pwd`/spacemacs ~/.emacs.d
fi
if [ ! -L ~/.spacemacs.d ]; then #软连接文件不存在
    rm -rf ~/.spacemacs.d
    ln -s `pwd`/spacemacs-private ~/.spacemacs.d
fi

#root configs
sudo ln -s `pwd`/spacemacs /root/.emacs.d
sudo ln -s `pwd`/spacemacs-private /root/.spacemacs.d
