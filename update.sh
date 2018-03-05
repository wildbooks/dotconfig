# /usr/bin/bash
source ./functions.sh


MyPrint $Red "Update Configs Begin"
#echo -e "${Red}Update Configs Begin${Color_off}"
# update dotconfig
echo -e "${Green}Update dotconfig${Color_off}\t"
git pull
# update SpaceVim
echo -e "${Green}Update SpaceVim${Color_off}\t"
git -C tools/vim/SpaceVim pull
# Uptate Spacemacs
echo -e "${Green}Update Spacemacs${Color_off}\t"
git -C tools/emacs/spacemacs pull
git -C tools/emacs/spacemacs-private pull
echo -e "${Green}Update hosts${Color_off}\t"
git -C tools/hosts/hosts pull
echo -e "${Green}Update tmux${Color_off}\t"
git -C tools/tmux/tmux pull
echo -e "${Red}Update Configs End${Color_off}"
