#!/bin/bash

echo "Hai"
mkdir -p /home/MYSQL_BACKUP/$(date +\%F)

mysqldump -h 127.0.0.1 --user root --password='redhat' asteriskcdrdb > /home/MYSQL_BACKUP/$(date +\%F)/asteriskcdrdb.sql
