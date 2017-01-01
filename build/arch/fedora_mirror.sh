#Fedora
wget -O /etc/yum.repos.d/fedora.repo http://mirrors.aliyun.com/repo/fedora.repo
wget -O /etc/yum.repos.d/fedora-updates.repo http://mirrors.aliyun.com/repo/fedora-updates.repo
#rpmfusion
rpm -Uvh http://mirrors.aliyun.com/rpmfusion/free/fedora/rpmfusion-free-release-25.noarch.rpm
rpm -Uvh http://mirrors.aliyun.com/rpmfusion/nonfree/fedora/rpmfusion-nonfree-release-25.noarch.rpm
