#!/usr/bin/env bash
ROOTDIR=$(echo $(cd $(dirname $0) && pwd) | sed 's/\/tools/tomcat.sh//g')
CURRENTDIR=$(dirname $0)

source $ROOTDIR/build/init.sh

# /etc/tomcat
# /var/lib/tomcats

# Install Apache
$CMD install -y httpd
systemctl start httpd #启动Apache服务器
systemctl enable httpd #开机自动启动Apache服务器
#sudo chown /var/www/html

# test Apache
# http://127.0.0.1
