#!/bin/bash


npm install

# For the love of all that is good, don't use this in production
# This is only for a demonstration of how things work behind the scene

ssh vagrant@192.168.33.11 'sudo mkdir -p /app; sudo chown -R vagrant. /app'
rsync -avz ./ vagrant@192.168.33.11:/app/
ssh vagrant@192.168.33.11 "sudo systemctl restart appnode"


ssh vagrant@192.168.33.12 'sudo mkdir -p /app; sudo chown -R vagrant. /app'
rsync -avz ./ vagrant@192.168.33.12:/app/
ssh vagrant@192.168.33.12 "sudo systemctl restart appnode"