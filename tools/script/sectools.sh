#$ANDROID_BUILD_TOP #代码根目录
#$ANDROID_PRODUCT_OUT #项目根目录
if [ -z $ANDROID_PRODUCT_OUT ]; then
    echo "please run \"source build/envsetup.sh\" in rootfs of source"
	exit
fi

CHIPCODE=/work/snapdragon-high-med-2016-spf-3-0-1_amss_standard_oem.git
SECIMAGE_XML=$CHIPCODE/MSM8937.LA.3.0.1/common/sectools/config/8937/8937_secimage.xml	#签名文件位置

python ${SECTOOL} secimage -i  $ANDROID_PRODUCT_OUT/emmc_appsboot.mbn -c $SECIMAGE_XML -sa
