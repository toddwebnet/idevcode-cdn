#!/bin/bash

if [ $(whoami) != "root" ]; then
    echo "Must run as root user"
    exit;
fi

rm /etc/apache2/sites-available/cdn.pi.idevcode.com.conf
rm /etc/apache2/sites-enabled/cdn.pi.idevcode.com.conf
ln -s /home/jtodd/cdn/devops/cdn.pi.idevcode.com.conf /etc/apache2/sites-available/cdn.pi.idevcode.com.conf
ln -s /etc/apache2/sites-available/cdn.pi.idevcode.com.conf /etc/apache2/sites-enabled/cdn.pi.idevcode.com.conf
service apache2 restart
