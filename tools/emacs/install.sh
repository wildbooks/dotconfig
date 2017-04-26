#! /usr/bin/bash
CMD=dnf
# First install emacs
sudo  $CMD install emacs
# 官方配置
git clone https://github.com/syl20bnr/spacemacs.git -b develop
# 子龙山人的配置
git clone https://github.com/zilongshanren/spacemacs-private.git

#user configs
ln -s `pwd`/spacemacs ~/.emacs.d
ln -s `pwd`/spacemacs-private ~/.spacemacs.d

#root configs
sudo ln -s `pwd`/spacemacs /root/.emacs.d
sudo ln -s `pwd`/spacemacs-private /root/.spacemacs.d
