RED="\e[31m"
RESET="\e[00m"
echo
echo -e $RED"Install EPEL Packages"$RESET
echo
yum install -y epel-release
echo
echo
echo -e $RED"Install ntfs Packages"$RESET
echo
yum install -y ntfs-3g
echo
