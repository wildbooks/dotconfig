#!/usr/bin/env bash
#  blog.51cto.com/centilinux/1241768
ROOTDIR=$(echo $(cd $(dirname $0) && pwd) | sed 's/\/tools\/ftp.sh//g')
CURRENTDIR=$(dirname $0)
source $ROOTDIR/build/init.sh


sudo $CMD install vsftpd
sudo systemctl enable vsftpd.service
sudo systemctl start vsftpd.service

# config user
useradd –s /sbin/nologin –d /home/ftpuser -M ftpuser -g ftp -p passwd
