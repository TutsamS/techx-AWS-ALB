#!/bin/bash
# Usage: ./setup-server.sh "Server 1"
SERVER_NAME=$1
sudo yum install -y nginx
sudo systemctl start nginx
sudo systemctl enable nginx
echo "<h1>$SERVER_NAME</h1>" | sudo tee /usr/share/nginx/html/index.html
