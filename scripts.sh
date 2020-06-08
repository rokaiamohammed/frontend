#!/bin/sh
set -x
clear
cd
echo "make sure all current packages are up to date. "
sudo apt update
sudo apt upgrade 

echo "install Visual Studio Code"
sudo apt update
sudo apt install software-properties-common apt-transport-https wget
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update
sudo apt install code

echo "install Git"
sudo apt-get update
sudo apt-get install git

echo "install Mongodb"
sudo apt-get install -y mongodb

echo "install nodejs"
curl -sL https://deb.nodesource.com/setup_12.17.x | sudo -E bash -
sudo apt-get install -y nodejs

echo "install PM2"
npm install pm2 -g

echo "install Nginx"
sudo apt update
sudo apt install nginx
sudo systemctl enable nginx
# echo "we need to allow traffic on port 80 and  port 443"
# sudo ufw allow 'Nginx Full'
# echo "We can check with the systemd init system to make sure the service is running..it will be active"
# systemctl status nginx

echo "install Node-cors"
sudo apt-get install git
sudo apt-get install -y node-cors

echo "install Certbot"
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:certbot/certbot
sudo apt-get update
sudo apt-get install python-certbot-nginx
sudo certbot --nginx

echo "install Java"
sudo apt update
sudo apt install default-jre
sudo apt install default-jdk

echo "install Docker"
sudo apt-get update
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo apt-get install docker-ce=5:19.03.11~3-0~ubuntu-focal docker-ce-cli=5:19.03.11~3-0~ubuntu-focal containerd.io
echo "install Yarn"
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update 
sudo apt install yarn

echo "install Jenkins"
wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins-ci.org/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update
sudo apt install jenkins
sudo systemctl start jenkins
#allaw the defualt port by using the command below
# sudo ufw allow 8080
set +x