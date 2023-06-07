#!/bin/bash
echo "changing directory to /opt"
cd /opt
echo "updating packages"
sudo apt update
echo "install nginx"
sudo apt install nginx
echo "status of nginx package"
systemctl status nginx
echo "enable nginx services"
sudo systemctl enable nginx
echo "start nginx services"
sudo systemctl start nginx
