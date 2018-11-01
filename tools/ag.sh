#set -x
TEMP_DIR=$(mktemp -d Leslie.Guan.XXXXXX)
echo $TEMP_DIR
cd ${TEMP_DIR}
wget https://github.com/ggreer/the_silver_searcher/archive/master.zip
TAR_DIR=$(unzip *.zip)
echo "TAR_DIR=$TAR_DIR"
TAR_DIR=${TAR_DIR%%/*}
echo "TAR_DIR=$TAR_DIR"
TAR_DIR=${TAR_DIR##*:}
echo "TAR_DIR=$TAR_DIR"
cd ${TAR_DIR}
apt-get install -y automake pkg-config libpcre3-dev zlib1g-dev liblzma-dev --force-yes
./build.sh && make install
cd ../../
# rm -rf ${TEMP_DIR}
ag -V
#set +x
