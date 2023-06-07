#!/bin/bash
# This script will install docker to ubuntu
echo " Updating os"
apt-get update
echo " install apt-transport-https ca-certificate etc."
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
echo " apt-key add "
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
echo " add-apt-repository"
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
echo " cache policy docker-ce"
apt-cache policy docker-ce
echo " install docker-ce"
sudo apt install docker-ce -y
echo " Updating os"
sudo systemctl status docker
echo " Adding user to docker group" 
sudo usermod -aG docker ${USER} && newgrp docker
echo " status of docker demon"
sudo systemctl status docker