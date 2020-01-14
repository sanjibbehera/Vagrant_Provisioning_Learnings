#!/bin/bash

sudo yum update -y

sudo yum install unzip -y

sudo sed -e "s/SELINUX=enforcing/SELINUX=disabled" -i /etc/sysconfig/selinux
sudo echo "vm.max_map_count=262144" >> /etc/sysctl.conf && sudo echo "fs.file-max=65536" >> /etc/sysctl.conf

wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-7.9.2.zip

unzip sonarqube-7.9.2.zip

mv sonarqube-7.9.2 sonarqube

sudo useradd sonar && sudo chown -R sonar:sonar /opt/sonarqube

sudo mkdir -p /var/sonarqube/data && sudo mkdir -p /var/sonarqube/temp && sudo chown -R sonar:sonar /var/sonarqube