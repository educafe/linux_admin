RED="\e[31m"
BLUE="\e[34m"
RESET="\e[00m"
echo
echo -e $RED"Install Samba Packages"$RESET
echo
echo -e $BLUE"sudo yum install -y samba"$RESET
echo
yum install -y samba
echo

echo -e $RED"Add a user to samba"$RESET
echo
echo -e $BLUE"sudo smbpasswd -a educafe"$RESET
echo
smbpasswd -a educafe
echo
echo -e $RED"Change samba configuration on /etc/samba/smb.conf"$RESET
echo
echo >> /etc/samba/smb.conf
echo "[CentosShare]" >> /etc/samba/smb.conf
echo "	path=/home/educafe/">> /etc/samba/smb.conf
echo "	browseable=Yes" >> /etc/samba/smb.conf
echo "	writeable=Yes" >> /etc/samba/smb.conf
echo "	only guest=no" >> /etc/samba/smb.conf
echo "	create  mask=0664" >> /etc/samba/smb.conf
echo "	directory mask=0775" >> /etc/samba/smb.conf
echo "	public=no" >> /etc/samba/smb.conf
echo
echo -e $RED"Restart smb to apply the changed configuration"$RESET
echo
echo -e $BLUE"sudo systemctl restart smb"$RESET
echo
systemctl restart smb
echo
echo -e $RED"Setup firewall rule for samba"$RESET
echo
echo -e $BLUE"sudo firewall-cmd --permanent --zone=public --add-service=samba"$RESET
firewall-cmd --permanent --zone=public --add-service=samba
echo
echo -e $RED"Apply the rule to the firewall"$RESET
echo
echo -e $BLUE"sudo firewall-cmd --reload"$RESET
firewall-cmd --reload
echo
echo $RED"Change SELinux context to be able to read samba file"$RESET
echo $BLUE"chcon -R -t samba_share_t /home/educafe"$RESET
chcon -R -t samba_share_t /home/educafe

