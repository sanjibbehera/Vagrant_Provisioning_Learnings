#!/bin/bash

releasever=7 && export releasever && cat <<EOF | sudo tee /etc/yum.repos.d/mongodb-org-4.2.repo
[mongodb-org-4.2] 
name=MongoDB Repository 
baseurl=https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/4.2/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-4.2.asc
EOF


sudo yum install -y mongodb-org-4.2.3 mongodb-org-server-4.2.3 mongodb-org-shell-4.2.3 mongodb-org-mongos-4.2.3 mongodb-org-tools-4.2.3

sudo systemctl start mongod.service && systemctl enable mongod.service 