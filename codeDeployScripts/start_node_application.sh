#!/bin/bash

#sudo su
cd /var/www/html/ustraa
chmod -R 777 .

rm -rf node_modules
rm -rf package-lock.json
#rm -rf yarn.lock

#nvm use 8.11.3
/home/ubuntu/.nvm/versions/node/v8.11.3/bin/npm install
#npm install

pm2 start ustraa
#exit
