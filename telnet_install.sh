RED="\e[31m"
RESET="\e[00m"
cho
echo -e $RED"Install telnet Packages"$RESET
echo
yum install -y telnet-server
echo
firewall-cmd --permanent --add-service=telnet --zone=public
firewall-cmd --permanent --add-port=23/tcp
firewall-cmd --reload

systemctl start telnet.socket