tput setaf 4
echo
echo "Install telnet Packages"
echo
tput setaf 2
yum install -y telnet-server
echo
tput setaf 1
firewall-cmd --permanent --add-service=telnet --zone=public
firewall-cmd --permanent --add-port=23/tcp
firewall-cmd --reload

systemctl start telnet.socket