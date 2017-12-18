#!/bin/bash

apt-get update
apt-get install software-properties-common -y
apt-add-repository ppa:ansible/ansible -y
apt-get update
apt-get install ansible -y
apt-get install unzip -y

wget https://github.com/sankara7/Ansible/blob/master/Ansible1.zip?raw=true
unzip Configfiles.zip -d /home

cd /home

ansible-playbook docker_install.yml
