#!/bin/bash

sudo yum install -y epel-release unzip vim wget \
  && sudo yum -y install java-1.8.0-openjdk java-1.8.0-openjdk-devel \
  && sudo mkdir -p /opt/nexus-data /opt/nexus \
  && sudo wget -O /tmp/nexus.tar.gz http://download.sonatype.com/nexus/3/latest-unix.tar.gz \
  && sudo tar xvfz /tmp/nexus.tar.gz -C /opt/nexus --strip-components 1 \
  && sudo useradd --system --no-create-home nexus \
  && sudo chown -R nexus:nexus /opt/nexus \
  && sudo chown -R nexus:nexus /opt/nexus-data
  
  
cat <<EOF | sudo tee /etc/systemd/system/nexus.service
[Unit]
Description=Nexus Server
After=syslog.target network.target

[Service]
Type=forking
LimitNOFILE=65536
ExecStart=/opt/nexus/bin/nexus start
ExecStop=/opt/nexus/bin/nexus stop
User=nexus
Group=nexus
Restart=on-failure

[Install]
WantedBy=multi-user.target
EOF

sudo systemctl daemon-reload && sudo systemctl enable nexus && sudo systemctl start nexus