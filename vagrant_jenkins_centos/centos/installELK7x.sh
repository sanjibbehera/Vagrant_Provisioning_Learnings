#!/bin/bash

cat <<EOF | sudo tee /etc/yum.repos.d/elasticsearch.repo
[elasticsearch-7.x]
name=Elasticsearch repository for 7.x packages
baseurl=https://artifacts.elastic.co/packages/7.x/yum
gpgcheck=1
gpgkey=https://artifacts.elastic.co/GPG-KEY-elasticsearch
enabled=1
autorefresh=1
type=rpm-md
EOF

sudo rpm --import https://artifacts.elastic.co/GPG-KEY-elasticsearch

sudo yum clean all && sudo yum makecache

sudo yum -y install elasticsearch

sudo systemctl enable elasticsearch.service && sudo systemctl start elasticsearch.service



sudo yum -y install kibana && sudo systemctl enable kibana && sudo systemctl start kibana

sudo yum -y install logstash && sudo systemctl enable logstash && sudo systemctl start logstash