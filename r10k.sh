#!/bin/bash


dnf update -y
dnf -y install https://yum.puppet.com/puppet-release-el-9.noarch.rpm
dnf update -y
dnf install puppet-agent -y
systemctl enable --now puppet


# Install r10k
yum install ruby git ruby-devel make gcc -y
gem install r10k -v 4.0.0

# r10k not in path by default
if ! grep -q "export PATH=" /root/.bashrc; then
  echo "export PATH=\$PATH:/usr/local/bin" >> /root/.bashrc
fi
