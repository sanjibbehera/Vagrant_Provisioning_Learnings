#!/bin/bash

sudo groupadd jenkins_python_slave && sudo useradd jenkins_python_slave -g jenkins_python_slave && sudo usermod -a -G wheel jenkins_python_slave

echo jenkins_python_slave | sudo passwd --stdin jenkins_python_slave