#!/bin/bash

cd /var/www/html/ustraa

rm -rf node_modules
rm -rf package-lock.json
rm -rf yarn.lock

npm install

pm2 start ustraa
pm2 start hu