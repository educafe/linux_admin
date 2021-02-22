tput setaf 4
echo
echo "Install httpd for web server"
echo
echo "sudo yum install httpd -y"
tput setaf 2
echo
yum install -y httpd
# yum install -y dbusd

tput setaf 4
echo
echo "Start or restart httpd daemon"
tput setaf 2
echo
echo "sudo systemcel start httpd"
systemctl start httpd

tput setaf 4
echo
echo "Setup firewall rule for web server"

tput setaf 1
echo
echo "sudo firewall-cmd --permanent --add-port=80/tcp"
firewall-cmd --permanent --add-port=80/tcp
echo
echo "sudo firewall-cmd --permanent --add-port=443/tcp"
firewall-cmd --permanent --add-port=443/tcp
echo
echo "sudo firewall-cmd --reload"
firewall-cmd --reload

