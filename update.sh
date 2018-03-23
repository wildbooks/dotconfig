# /usr/bin/bash
source ./functions.sh


MyPrint $Red "Update Configs Begin"
# update dotconfig
MyPrint ${Green} "Update dotconfig"
git pull
# update SpaceVim
MyPrint ${Green} "Update SpaceVim"
git -C tools/vim/SpaceVim pull
# Uptate Spacemacs
MyPrint ${Green} "Update Spacemacs"
git -C tools/emacs/spacemacs pull
git -C tools/emacs/spacemacs-private pull
MyPrint ${Green} "Update hosts"
git -C tools/hosts/hosts pull
MyPrint ${Green} "Update tmux"
git -C tools/tmux/tmux pull
MyPrint ${Red} "Update Configs End"
