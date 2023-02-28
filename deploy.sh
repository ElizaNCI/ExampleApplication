#!/usr/bin/env bash
sudo apt update && sudo apt install nodejs npm
#Install pm2
sudo npm install -g pm2
#stop any instance currently running 
pm2 stop example_app
#change directory
cd ExampleApplication
#install dependencies
npm install
#start the app
pm2 start ./bin/www --name example_app -env=production