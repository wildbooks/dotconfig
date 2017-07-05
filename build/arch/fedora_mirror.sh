#Fedora
sudo wget -O /etc/yum.repos.d/fedora.repo http://mirrors.aliyun.com/repo/fedora.repo
sudo wget -O /etc/yum.repos.d/fedora-updates.repo http://mirrors.aliyun.com/repo/fedora-updates.repo
#rpmfusion
sudo rpm -Uvh http://mirrors.aliyun.com/rpmfusion/free/fedora/rpmfusion-free-release-stable.noarch.rpm
sudo rpm -Uvh http://mirrors.aliyun.com/rpmfusion/nonfree/fedora/rpmfusion-nonfree-release-stable.noarch.rpm

#FZUG
sudo wget http://repo.fdzh.org/FZUG/FZUG.repo -P /etc/yum.repos.d/ 

#google-chrome
sudo wget https://repo.fdzh.org/chrome/google-chrome-mirrors.repo -P /etc/yum.repos.d/  # Fedora/RHEL  

# 卸载多余软件
sudo dnf remove firefox gnome-maps gedit gnome-contacts rhythmbox -y

# 解决中文路径问题
export LANG=en_US.UTF-8
xdg-user-dirs-gtk-update
