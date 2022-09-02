#!/usr/bin/env bash

yum update -y
curl -sL https://rpm.nodesource.com/setup_10.x | bash -
yum install -y nodejs git

cd /home/ec2-user
git clone https://YOUR_REPO_HERE
cd YOUR_REPO_DIR_HERE
sudo chmod -R 755 .

npm install

node app.js > app.out.log 2> app.err.log < /dev/null &