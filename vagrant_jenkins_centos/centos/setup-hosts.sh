#!/bin/bash
set -e
IFNAME=$1
ADDRESS="$(ip -4 addr show $IFNAME | grep "inet" | head -1 |awk '{print $2}' | cut -d/ -f1)"
sed -e "s/^.*${HOSTNAME}.*/${ADDRESS} ${HOSTNAME} ${HOSTNAME}.local/" -i /etc/hosts

sudo yum install -y wget 

# Update /etc/hosts about other hosts
cat >> /etc/hosts <<EOF
192.168.7.10  jenkins-master
192.168.7.15  jenkins-node
192.168.7.16  nginx-node
192.168.7.17  nexus-node
192.168.7.18  sonar-node
192.168.7.19  bitbucket-node
EOF