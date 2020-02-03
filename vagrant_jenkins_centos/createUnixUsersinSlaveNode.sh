#!/bin/bash

sudo groupadd jenkins_java_slave && sudo useradd jenkins_java_slave -g jenkins_java_slave && \
sudo groupadd jenkins_node_slave && sudo useradd jenkins_node_slave -g jenkins_node_slave && \
sudo groupadd jenkins_python_slave && sudo useradd jenkins_python_slave -g jenkins_python_slave

echo jenkins_java_slave | sudo passwd --stdin jenkins_java_slave && echo jenkins_node_slave | sudo passwd --stdin jenkins_node_slave && \
echo jenkins_python_slave | sudo passwd --stdin jenkins_python_slave