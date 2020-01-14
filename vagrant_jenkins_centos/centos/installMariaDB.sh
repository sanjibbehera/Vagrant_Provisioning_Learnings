#!/bin/bash

sudo yum update -y
sudo yum install -y git && sudo yum install -y mariadb-server \
	&& sudo systemctl enable mariadb && sudo systemctl start mariadb