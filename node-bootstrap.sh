#!/usr/bin/env bash

# Get root up in here.
sudo su

# Just a simple way of checking if we need to install everything.
if [ ! -d "/var/www" ]
then
    # Add MongoDB to apt.
    apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10
    echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/10gen.list

    # Add nodejs repo.
    add-apt-repository -y ppa:chris-lea/node.js
    apt-get -y update

    # Install nodejs.
    apt-get install -y nodejs

    # Install latest stable version of MongoDB.
    apt-get install -y mongodb

    # Install supervisor to restart the server on changes.
    npm install -g supervisor

    # Symlink our host www to the guest /var/www folder.
    ln -s /vagrant/www /var/www

    # Victory!
    echo "You're all done! Your default node server should now be listening on http://localhost:8080 or http://10.0.33.34/. For code, see: ./www/default/server.js."

    # Run it.
    cd /var/www/default
    supervisor /var/www/default/server.js
fi
