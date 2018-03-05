CMD=dnf

# Color
Color_off='\033[0m'       # Text Reset
Black='\033[0;30m'              # Black黑
Red='\033[0;31m'                # Red
Green='\033[0;32m'              # Green绿
Yellow='\033[0;33m'             # Yellow黄
Blue='\033[0;34m'               # Blue蓝色
Purple='\033[0;35m'             # Purple紫色
SkyBlue='\033[0;36m'            # SkyBlue天蓝色
White='\033[0;37m'              # White白色

function MyPrint()
{
    echo -e "$1$2${Color_off}\t"
}

function InstallApp()
{
    command -v $1 >/dev/null 2>&1 || sudo $CMD install $1
}


