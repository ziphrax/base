#! /usr/bin/env bash

#First Install nginx
apt-get update
apt-get install -y nginx
if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www
fi

# install nfs
apt-get install -y nfs-common portmap

# Copy accross the config file and restart nginx
cp /vagrant/nginx/default /etc/nginx/sites-available/default
cp /vagrant/nginx/nginx.conf /etc/nginx/nginx.conf
service nginx restart

# Get the latest nodejs
curl -sL https://deb.nodesource.com/setup | sudo bash -
apt-get install -y nodejs

# Install this very useful package
apt-get install -y build-essential

# Install the package that allows us to watch and run our app if it crashes
npm install -g pm2

# Finally start our app :-D
pm2 start /vagrant/server.js --watch
