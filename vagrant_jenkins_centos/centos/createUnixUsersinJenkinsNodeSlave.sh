#!/bin/bash

sudo groupadd jenkins_node_slave && sudo useradd jenkins_node_slave -g jenkins_node_slave && sudo usermod -a -G wheel jenkins_node_slave
sudo sed '/%wheel/s/^# *//' /etc/sudoers

echo jenkins_node_slave | sudo passwd --stdin jenkins_node_slave