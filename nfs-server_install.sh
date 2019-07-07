RED="\e[31m"
RESET="\e[00m"

echo
echo -e $RED"Install NFS Packages"$RESET
echo
 yum install -y nfs-utils libnfsidmap

echo
echo -e $RED"2) NFS Service start and firewall setup"$RESET
echo
 systemctl start rpcbind
 systemctl start nfs-server 
 systemctl start rpc-statd 
 systemctl start nfs-idmapd
 systemctl enable rpcbind
 systemctl enable nfs-server
 systemctl enable rpc-statd 
 systemctl enable nfs-idmapd
 firewall-cmd --permanent --add-service=rpc-bind
 firewall-cmd --permanent --add-service=mountd
 firewall-cmd --permanent --add-port=2049/tcp
 firewall-cmd --permanent --add-port=2049/udp
 firewall-cmd --reload

