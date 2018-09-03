#!/usr/bin/env bash
ROOTDIR=$(cd $(dirname $0) && pwd)
source $ROOTDIR/build/init.sh

INFO 'Update Configs Begin'
# update dotconfig
INFO "Update dotconfig"
git pull
# update SpaceVim
INFO "Update SpaceVim"
git -C tools/vim/SpaceVim pull
# Uptate Spacemacs
INFO "Update Spacemacs"
git -C tools/emacs/spacemacs pull
git -C tools/emacs/spacemacs-private pull
INFO "Update tmux"
git -C tools/tmux/tmux pull
INFO "Update Configs End"
