#!/bin/env bash
# This script patches the official snipe-it docker container to enable https termination
# the private key and the certificate have to be copied inside the docker container (/var/lib/snipeit/ssl/snipeit-ssl.crt
# /var/lib/snipeit/ssl/snipeit-ssl.key respectively) prior to running this script


cd /etc/apache2/mods-enabled
ln -s ../mods-available/ssl.conf
ln -s ../mods-available/ssl.load
apachectl restart
