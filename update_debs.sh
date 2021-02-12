#!/bin/bash
# 自动脚本执行 把本文件直接拖到终端 按Enter一步到位
# $ /Users/xlsn0w/debs/update_debs.sh
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
cd $SCRIPTPATH

# 手动终端执行
# cd 根目录路径
# cd /Users/xlsn0w/debs

# 删除之前Packages和Packages.bz2
sudo rm ./Packages
sudo rm ./Packages.bz2

# 创建新的Packages
sudo dpkg-scanpackages debs / > Packages

# 创建新的Packages.bz2
sudo bzip2 -fks Packages
