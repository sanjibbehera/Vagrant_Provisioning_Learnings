#!/bin/bash

sudo yum install -y epel-release \
&& sudo yum install -y nginx \
&& sudo systemctl enable nginx && sudo systemctl start nginx