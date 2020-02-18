#!/bin/bash

# install nginx config
cp deploy/nginx /etc/nginx/sites-available/wtctf.afnom.net
ln -sf /etc/nginx/sites-available/wtctf.afnom.net /etc/nginx/sites-enabled/
rm /etc/nginx/sites-enabled/default

# install site
hugo
mkdir -p /var/www/wtctf.afnom.net
cp -r public/* /var/www/wtctf.afnom.net

# certbot --non-interactive --nginx --redirect --domains wtctf.afnom.net --agree-tos --register-unsafely-without-email
systemctl restart nginx
