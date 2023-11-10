#!/bin/bash

branch="production"

r10k deploy environment $branch -pv && \
puppet apply --environment $branch /etc/puppetlabs/code/environments/$branch/manifests/site.pp

