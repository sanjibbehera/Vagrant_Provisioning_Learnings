#!/bin/bash

sudo chmod g+r /etc/shadow && sudo groupadd devGroup && sudo groupadd jenkinsAdmin && sudo groupadd JobBuilderGroup \
	&& sudo useradd jenkinsAdmin -g jenkinsAdmin && sudo usermod -a -G root jenkinsAdmin \
	&& sudo useradd devNodeAppUser -g devGroup && sudo useradd devJavaAppUser -g devGroup && sudo useradd devPythonAppUser -g devGroup \
	&& sudo useradd devPhpAppUser -g devGroup && sudo useradd NodeAppBuilder -g JobBuilderGroup && sudo useradd JavaAppBuilder -g JobBuilderGroup \
	&& sudo useradd PythonAppBuilder -g JobBuilderGroup && sudo useradd PhpAppBuilder -g JobBuilderGroup