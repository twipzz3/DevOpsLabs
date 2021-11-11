#!/bin/bash
sudo yum update -y
sudo yum install -y epel-release
sudo yum install -y nginx
sudo systemctl start nginx
sudo systemctl enable nginx
sudo cp -f /vagrant/index.html /usr/share/nginx/html/index.html
