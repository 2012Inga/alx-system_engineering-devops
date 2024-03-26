#!/bin/bash

# Update package lists and install nginx with the -y flag
apt-get update -y
apt-get install nginx -y

# Set up nginx configuration to listen on port 80
echo "server {
    listen 80 default_server;
    listen [::]:80 default_server;

    root /var/www/html;
    index index.html index.htm index.nginx-debian.html;

    server_name _;

    location / {
        # Hello World! response
        echo 'Hello World!' > /var/www/html/index.html;
        # Ensure response for GET request at root
        if ($request_method = GET) {
            return 200;
        }
    }
}" > /etc/nginx/sites-available/default

# Restart nginx without using systemctl
nginx -s reload
