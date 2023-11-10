#!/bin/bash

# Install r10k
yum install ruby git -y
gem install r10k -v 4.0.0

# r10k not in path by default
if ! grep -q "export PATH=" /root/.bashrc; then
  echo "export PATH=\$PATH:/usr/local/bin" >> /root/.bashrc
fi
