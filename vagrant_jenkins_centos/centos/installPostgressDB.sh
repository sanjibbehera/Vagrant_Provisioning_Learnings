#!/bin/bash

sudo rpm -Uvh https://yum.postgresql.org/10/redhat/rhel-7-x86_64/pgdg-centos10-10-2.noarch.rpm
sudo yum install -y postgresql10-server postgresql10
sudo usermod -aG wheel postgres && echo postgres | sudo passwd --stdin postgres
sudo mkdir /opt/postgresDB && sudo chown postgres:postgres /opt/postgresDB
sudo -u postgres /usr/pgsql-10/bin/postgresql-10-setup initdb -D /opt/postgresDB

sudo echo 'host    all             all             192.168.7.18/32            md5' >> /opt/postgresDB/pg_hba.conf
sudo systemctl start postgresql
sudo systemctl enable postgresql
