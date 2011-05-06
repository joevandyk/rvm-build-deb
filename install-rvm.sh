#!/bin/bash
apt-get update

echo "install: --no-rdoc --no-ri" > /etc/gemrc
echo "update: --no-rdoc --no-ri" >> /etc/gemrc
apt-get install -y build-essential zlib1g-dev libssl-dev libreadline5-dev git-core
curl -s https://rvm.beginrescueend.com/install/rvm  | bash
source /usr/local/rvm/scripts/rvm
rvm install 1.8.7
rvm install ree
rvm install 1.9.2

rvm --default use 1.8.7

gem install chef
gem install fpm

rvm cleanup all
