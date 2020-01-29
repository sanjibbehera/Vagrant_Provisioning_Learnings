#!/bin/bash

sudo yum install -y https://download.postgresql.org/pub/repos/yum/11/redhat/rhel-7-x86_64/pgdg-centos11-11-2.noarch.rpm


sudo yum -y install postgresql11-server postgresql11

sudo groupadd postgres && sudo useradd postgres -g postgres && sudo usermod -aG wheel postgres \
 && echo postgres | sudo passwd --stdin postgres

#sudo systemctl start postgresql-11.service && sudo systemctl enable postgresql-11.service