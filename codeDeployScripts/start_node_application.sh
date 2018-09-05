#!/bin/bash

#sudo su
cd /mnt/hu_ustraa

pm2 stop all
#chmod -R 777 node_modules
#chmod -R 777 package-lock.json
#chmod -R 777 yarn.lock

#rm -rf node_modules
chown -R ubuntu:ubuntu .
rm -rf package-lock.json
#rm -rf yarn.lock

#nvm use 8.11.3
npm install
#chown -R ubuntu:ubuntu ./node_modules

cd /mnt
pm2 delete pm2.ecosystem.config.js
pm2 start pm2.ecosystem.config.js
#exit
