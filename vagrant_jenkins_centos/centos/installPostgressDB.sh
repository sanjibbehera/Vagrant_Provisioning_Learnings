#!/bin/bash

sudo yum install -y https://download.postgresql.org/pub/repos/yum/11/redhat/rhel-7-x86_64/pgdg-centos11-11-2.noarch.rpm


sudo yum -y install postgresql11-server postgresql11

sudo groupadd postgres && sudo useradd postgres -g postgres && sudo usermod -aG wheel postgres \
 && echo postgres | sudo passwd --stdin postgres

###################################
sudo rpm -Uvh https://yum.postgresql.org/10/redhat/rhel-7-x86_64/pgdg-centos10-10-2.noarch.rpm
sudo yum install -y postgresql10-server postgresql10
sudo usermod -aG wheel postgres && echo postgres | sudo passwd --stdin postgres
sudo mkdir /opt/postgresDB && sudo chown psotgres:postgres /opt/postgresDB
sudo -u postgres /usr/pgsql-10/bin/postgresql-10-setup initdb -D /opt/postgresDB

################
sudo vi /opt/postgresDB/pg_hba.conf
host    all             all             192.168.7.18/32            md5
################
sudo systemctl start postgresql
sudo systemctl enable postgresql
