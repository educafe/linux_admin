RED="\e[31m"
RESET="\e[00m"
echo
echo -e $RED"Install httpd for web server"$RESET
echo
echo -e $RED"sudo yum install httpd -y"$RESET
echo
yum install -y httpd
# yum install -y dbusd
echo
echo -e $RED"Start or restart httpd daemon"$RESET
echo
echo -e $RED"sudo systemcel start httpd"$RESET
systemctl start httpd

echo
echo -e $RED"Setup firewall rule for web server"$RESET
echo
echo -e $RED"sudo firewall-cmd --permanent --add-port=80/tcp"$RESET
firewall-cmd --permanent --add-port=80/tcp
echo
echo -e $RED"sudo firewall-cmd --permanent --add-port=443/tcp"$RESET
firewall-cmd --permanent --add-port=443/tcp
echo
echo -e $RED"sudo firewall-cmd --reload"$RESET
firewall-cmd --reload

