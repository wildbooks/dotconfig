#!/usr/bin/env bash
ROOTDIR=$(echo $(cd $(dirname $0) && pwd) | sed 's/\/tools/shadowsocks.sh//g')
CURRENTDIR=$(dirname $0)

source $ROOTDIR/build/init.sh

# Install shadowsocks
sudo pip3 install shadowsocks
# config shadowsocks
ConfigShadowsocks(){
cat >/etc/shadowsocks.json <<EOF
{ "server":"184.170.212.253",
    "port_password":{
        "25":"makelove1314",
        "80":"makelove1314",
        "60":"it'sbestvpn"
    },
    "timeout":300,
    "method":"aes-256-cfb",
    "fast_open":false
}
EOF
}
