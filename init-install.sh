#!/bin/bash

# make jenkins folders
sudo mkdir -p /var/jenkins_home
sudo chown -R 1000:1000 /var/jenkins_home/

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

