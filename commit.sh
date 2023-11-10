#!/bin/bash

git commit -a -m testing
git push

cd ./k12sysadmin-control-repo/
git commit -a -m testing 
git push

cd ..
