#!/bin/bash
yum -y update
yum -y install httpd
systemctl enable httpd
systemctl start httpd
echo '<html><h1>Servidor Web AWS EC2</h1></html>' > /var/www/html/index.html
