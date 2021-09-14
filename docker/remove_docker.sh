#!/bin/bash

# Remove completamente o Docker do sistema (Ubuntu)
sudo service docker stop
sudo apt-get purge -y docker.io
sudo apt-get purge -y docker-engine
sudo apt-get purge -y docker-ce
sudo apt-get purge -y docker-ce-cli
sudo apt-get autoremove -y --purge docker-engine docker docker.io docker-ce
sudo rm -rf /var/lib/docker /etc/docker
sudo rm /etc/apparmor.d/docker
sudo groupdel docker
sudo rm -rf /var/run/docker.sock
