#!/bin/bash

# setup software repositories
apt-get update
apt-get install -y software-properties-common
add-apt-repository universe
add-apt-repository ppa:certbot/certbot
apt-get update

# install base commands
apt-get -y install nginx certbot python-certbot-nginx docker.io docker-compose curl wget

# install hugo
curl -s https://api.github.com/repos/gohugoio/hugo/releases/latest \
    | grep browser_download_url \
    | grep Linux-64bit.deb \
    | grep extended \
    | cut -d '"' -f 4 \
    | wget -i - && \
    dpkg -i *.deb && \
    rm *.deb