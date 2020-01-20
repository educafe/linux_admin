RED="\e[31m"
RESET="\e[00m"

echo
echo -e $RED"Install NFS client Packages on ubuntu"$RESET
echo
 sudo apt install nfs-common
 
 # mkdir /home/educafe/data 	# mount point  
 # sudo mount -t nfs <server ip addr>:/home/educafe/share /home/educafe/data # mount

