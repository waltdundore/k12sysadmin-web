#!/bin/bash


exec ./r10k.sh
exec "/usr/bin/puppet apply /vagrant/scratch/puppet-control/manifests/site.pp"

