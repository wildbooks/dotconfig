#Fedora
wget -O /etc/yum.repos.d/fedora.repo http://mirrors.aliyun.com/repo/fedora.repo
wget -O /etc/yum.repos.d/fedora-updates.repo http://mirrors.aliyun.com/repo/fedora-updates.repo
#rpmfusion
rpm -Uvh http://mirrors.aliyun.com/rpmfusion/free/fedora/rpmfusion-free-release-24.noarch.rpm
rpm -Uvh http://mirrors.aliyun.com/rpmfusion/nonfree/fedora/rpmfusion-nonfree-release-24.noarch.rpm

#FZUG
wget http://repo.fdzh.org/FZUG/FZUG.repo -P /etc/yum.repos.d/ 

#google-chrome
wget https://repo.fdzh.org/chrome/google-chrome-mirrors.repo -P /etc/yum.repos.d/  # Fedora/RHEL  

# 卸载软件
dnf remove firefox gnome-maps gedit

# 解决中文路径问题
export LANG=en_US.UTF-8
xdg-user-dirs-gtk-update
