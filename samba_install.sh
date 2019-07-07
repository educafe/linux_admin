RED="\e[31m"
RESET="\e[00m"
echo
echo -e $RED"Install Samba Packages"$RESET
echo
yum install -y samba
echo

smbpasswd -a linux
echo
echo >> /etc/samba/smb.conf
echo "[CentosShare]" >> /etc/samba/smb.conf
echo "	path=/home/linux/">> /etc/samba/smb.conf
echo "	browseable=Yes" >> /etc/samba/smb.conf
echo "	writeable=Yes" >> /etc/samba/smb.conf
echo "	only guest=no" >> /etc/samba/smb.conf
echo "	create  mask=0664" >> /etc/samba/smb.conf
echo "	directory mask=0775" >> /etc/samba/smb.conf
echo "	public=no" >> /etc/samba/smb.conf

systemctl restart smb

firewall-cmd --permanent --zone=public --add-service=samba
firewall-cmd --reload

