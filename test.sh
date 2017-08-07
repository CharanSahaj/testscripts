#!/bin/bash
scp -i $keylocation $frontendsource/* centos@xpensify.sahajsoft.com:/home/centos/deployment/frontend
#/usr/share/nginx/html
ssh -i $keylocation centos@xpensify.sahajsoft.com chmod -R 755 /usr/share/nginx/html/*
#ssh -i $keylocation centos@xpensify.sahajsoft.com sudo kill | cat /home/centos/deployment/expense_system/tmp/pids/server.pid
scp -i $keylocation $backend/expense_system centos@xpensify.sahajsoft.com:/home/centos/deployment/expense_system
ssh -i $keylocation centos@xpensify.sahajsoft.com cd /home/centos/deployment/expense_system && rails s -d
#copy the html from the repo to the server:/usr/share/nginx/html
#chmod 755 *
#kill the rails process
#/home/centos/1Aug2017/expense-system/backend/expense_system/tmp/pids/server.pid
#copy rails from repo to server
#rails s -d
