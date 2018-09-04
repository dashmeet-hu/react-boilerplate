#!/bin/bash

#sudo su
cd /var/www/html/ustraa

#chmod -R 777 node_modules
#chmod -R 777 package-lock.json
#chmod -R 777 yarn.lock

#rm -rf node_modules
rm -rf package-lock.json
rm -rf yarn.lock

#nvm use 8.11.3
npm install

#pm2 start ustraa
#exit
