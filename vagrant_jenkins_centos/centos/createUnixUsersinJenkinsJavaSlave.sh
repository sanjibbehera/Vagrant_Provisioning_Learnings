#!/bin/bash

sudo groupadd jenkins_java_slave && sudo useradd jenkins_java_slave -g jenkins_java_slave && sudo usermod -a -G wheel jenkins_java_slave

echo jenkins_java_slave | sudo passwd --stdin jenkins_java_slave