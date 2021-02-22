tput setaf 4
echo
echo "Install NFS Packages"
echo
tput setaf 2
 yum install -y nfs-utils libnfsidmap

tput setaf 4
echo
echo "2) NFS Service start and firewall setup"
tput setaf 2
echo
 systemctl enable rpcbind
 systemctl enable nfs-server
 systemctl enable nfs-lock
 systemctl enable nfs-idmap
 systemctl start rpcbind
 systemctl start nfs-server
 systemctl start nfs-lock
 systemctl start nfs-idmap
 
tput setaf 1
 firewall-cmd --permanent --zone=public --add-service=nfs
 firewall-cmd --permanent --zone=public --add-service=mountd
 firewall-cmd --permanent --zone=public --add-service=rpc-bind
 firewall-cmd --reload
 
 # /etc/exports
 # /home/educafe/share	<client ip addr>(rw,sync,no_root_squash,no_all_squash)
 # exportfs -r


