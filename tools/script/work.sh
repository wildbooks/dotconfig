#! /bin/bash


#=============		help
function Usages()
{
	echo "zore"	
}

if [ -z $2 ];then
	Usages
fi
# command cd	<Project>
function switchProjects()
{
	echo "cd /work/$1"
	$(cd /work/;pwd)
}

# command make	<Project>
#=============		编译
function MakeProjects()
{
	echo "zore"	
}
# command flash	<Project>
#=============		刷机
function FlashImages()
{
	if [ -z $1 ]; then
		echo "please run \"source build/envsetup.sh\" in rootfs of source"
	fi

	scp archermind@10.20.11.11:/ .

	#ANDROID_BUILD_TOP 代码根目录
	if [ -z android ];then
		mkdir -p /tmp/android
	fi

	aNum=$2
	case $1 in
		sku1)
			ANDROID_PRODUCT_OUT=/work/SKU5_BP_8940_O_sign_wingtech/out/target/product/msm8937_64
		;;
		sku2)
			ANDROID_PRODUCT_OUT=/work/SKU5_BP_8940_O_sign_wingtech/out/target/product/msm8937_64
		;;
		sku5)
			ANDROID_PRODUCT_OUT=/work/SKU5_BP_8940_O_sign_wingtech/out/target/product/msm8937_64
		;;
		sku6)
			ANDROID_PRODUCT_OUT=/work/SKU5_BP_8940_O_sign_wingtech/out/target/product/msm8937_64
		;;
		sku9)
			ANDROID_PRODUCT_OUT=/work/SKU5_BP_8940_O_sign_wingtech/out/target/product/msm8937_64
		;;
		*)
			ANDROID_PRODUCT_OUT=/work/SKU5_BP_8940_O_sign_wingtech/out/target/product/msm8937_64
		;;
	esac

	case $aNum in
	    # bootimage-nodeps
	    boot)  echo "flashing boot"
	        sudo fastboot flash boot $ANDROID_PRODUCT_OUT/boot.img reboot
	    ;;
	    rebootboot)  echo "rebooting && flashing boot"
	        adb reboot-bootloader && sudo fastboot flash boot $ANDROID_PRODUCT_OUT/boot.img reboot
	    ;;
	    # bootimage-nodeps
	    boot)  echo "flashing boot"
	        sudo fastboot flash boot $ANDROID_PRODUCT_OUT/boot.img reboot
	    ;;
	    rebootboot)  echo "rebooting && flashing boot"
	        adb reboot-bootloader && sudo fastboot flash boot $ANDROID_PRODUCT_OUT/boot.img reboot
	    ;;
	#fastboot flash aboot `dirname $0`/${platform}_emmc_appsboot.mbn
	    #5)  echo "makeing bootimg-nodeps"
	    #    make bootimage-nodeps
	    #;;
	    system)  echo "flashing system"
	        sudo fastboot flash system $ANDROID_PRODUCT_OUT/system.img reboot
		;;
	    rebootsystem)  echo "rebooting && flashing system"
	        adb reboot-bootloader && sudo fastboot flash system $ANDROID_PRODUCT_OUT/system.img reboot
	    ;;
	    8)  echo "make && rebooting && flashing system"
	        make systemimage && adb reboot-bootloader && sudo fastboot flash system $ANDROID_PRODUCT_OUT/system.img reboot
	    ;;
	    *)   echo "Don't have this choise!"
	esac
}

#=============		签名
function Flashhhhhs()
{
	echo "zore"	
}

#=============		远程登录
function ssh-login()
{
	case $1 in
		sunqian) echo "ssh archermind@10.20.11.51"
			ssh archermind@10.20.11.51
    	;;
		scpsunqian) echo "scp archermind@10.20.11.51"
			scp archermind@10.20.11.50:/ .
    	;;
    	main) echo "ssh archermind@10.20.11.11"
			ssh archermind@10.20.11.11
    	;;
    	lize) echo "ssh archermind@10.20.11.183"
			ssh archermind@10.20.11.183
    	;;
    	chunhua) echo "ssh archermind@10.20.11.192"
			ssh archermind@10.20.11.192
		;;
    	vps) echo "ssh -p 28556 root@184.170.212.253"
			ssh -p 28556 root@184.170.212.253
    	;;
    	vps1) echo "ssh -p 28556 root@184.170.212.253"
			ssh -p 28556 root@184.170.212.253
    	;;
    	songpeng) echo "ssh archermind@10.20.11.114"
			ssh archermind@10.20.11.114
		;;
    	zhanglei) echo "ssh archermind@10.20.11.79"
			ssh archermind@10.20.11.79
		;;
    	*) echo "ssh-login() Don't have this choise!"
	esac
}

#=============		切换项目目录 
function switch()
{
	case $1 in
		ssh)
			ssh-login $2
		;;
		cd)
			switchProjects $2
		;;
		flash)
			FlashImages $2
		;;
		*) echo "Don't have this choise!"
	esac
}

#=============		main()
main()
{
	switch $1 $2
}

main $1 $2


#if [ -z $1 ]; then
#	echo "please run \"source build/envsetup.sh\" in rootfs of source"
#fi
#
#while getopts :a:b:cdefg opt; do
#	case $opts in
#		a) echo "fsaffsafsf"
#	esac
#done
#echo "\$0=$0 \$1=$1 $$" 

#while getopts "a:" opts; do  
#  case $opts in  
#    a)  
#      echo "this is -a the arg is ! $OPTARG"   
#      ;;  
#    \?)  
#      echo "Invalid option: -$OPTARG"   
#      ;;  
#  esac  
#done 
