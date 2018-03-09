#! /bin/bash
#$ANDROID_BUILD_TOP #代码根目录
#$ANDROID_PRODUCT_OUT #项目根目录
if [ -z $ANDROID_PRODUCT_OUT ]; then
	echo "please run \"source build/envsetup.sh\" in rootfs of source"
	exit
fi

# echo $ANDROID_BUILD_TOP #代码根目录
# echo $ANDROID_PRODUCT_OUT #项目输出根目录
#while getopts :a:b:cdefg opt; do
#	case $opts in
#		a) echo ""
#	esac
#done

echo ""
echo "  *****************************************************"
echo "  *  1) flash boot.img"
echo "  *  2) reboot && flash boot.img"
echo "  *  3) make && reboot && flash boot.img"
echo "  *  4) make boot.img"
echo "  *  5) make bootimg-nodeps"
echo "  *****************************************************"
echo "  *  6) flash system.img"
echo "  *  7) reboot && flash system.img"
echo "  *  8) make && reboot && flash system.img"
echo "  *  9) make system.img"
echo "  *****************************************************"
echo "  *  10) reboot && flash system.img && flash boot.img"
echo "  *****************************************************"
echo "  *  11) flash aboot"
echo "  *  12) reboot && flash aboot"
echo "  *****************************************************"
echo "  Please input your choise"

read aNum
case $aNum in
    # bootimage-nodeps
    1)  echo "flashing boot"
        sudo fastboot flash boot $ANDROID_PRODUCT_OUT/boot.img reboot
    ;;
    2)  echo "rebooting && flashing boot"
        adb reboot-bootloader && sudo fastboot flash boot $ANDROID_PRODUCT_OUT/boot.img reboot
    ;;
    3)  echo "makeing && rebooting && flashing boot"
        make bootimage && adb reboot-bootloader && sudo fastboot flash boot $ANDROID_PRODUCT_OUT/boot.img reboot
    ;;
    4)  echo "makeing boot"
        make bootimage
    ;;
    5)  echo "makeing bootimg-nodeps"
        make bootimage-nodeps
    ;;

    6)  echo "flashing system"
        sudo fastboot flash system $ANDROID_PRODUCT_OUT/system.img reboot
    ;;
    7)  echo "rebooting && flashing system"
        adb reboot-bootloader && sudo fastboot flash system $ANDROID_PRODUCT_OUT/system.img reboot
    ;;
    8)  echo "make && rebooting && flashing system"
        make systemimage && adb reboot-bootloader && sudo fastboot flash system $ANDROID_PRODUCT_OUT/system.img reboot
    ;;
    9)  echo "make systemimage"
        make systemimage
    ;;
    10) echo "make systemimage"
           
        echo "reboot && flash system.img && flash boot.img"
        adb reboot-bootloader && sudo fastboot flash system $ANDROID_PRODUCT_OUT/system.img && sudo fastboot flash boot $ANDROID_PRODUCT_OUT/boot.img reboot
    ;;
    11) echo "flash aboot"
        sudo fastboot flash aboot $ANDROID_PRODUCT_OUT/emmc_appsboot.mbn reboot
    ;;
    12) echo "reboot && flash aboot"
        adb reboot-bootloader && sudo fastboot flash aboot $ANDROID_PRODUCT_OUT/emmc_appsboot.mbn reboot
    ;;
    *)   echo "Don't have this choise!"
esac
