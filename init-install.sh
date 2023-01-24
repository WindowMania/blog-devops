#!/bin/bash

# install curl
sudo apt-get update
sudo apt-get install -y curl

# install docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
rm -rf ./get-docker.sh
sudo usermod -aG docker $USER

# install docker-compose
sudo apt-get install -y docker-compose

# make jenkins folders
mkdir -p ~/jenkins_home
chown -R 1000:1000 ~/jenkins_home/