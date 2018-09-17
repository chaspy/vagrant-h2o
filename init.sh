#!/bin/bash
yum update -y

cat << H2OREPO > /etc/yum.repos.d/tatsushid-h2o-rpm.repo
# ref: https://github.com/tatsushid/h2o-rpm
[bintray-tatsushid-h2o-rpm]
name=bintray-tatsushid-h2o-rpm
#If your system is CentOS
baseurl=https://dl.bintray.com/tatsushid/h2o-rpm/centos/7/x86_64/
gpgcheck=0
repo_gpgcheck=0
enabled=1
H2OREPO
yum install -y h2o
