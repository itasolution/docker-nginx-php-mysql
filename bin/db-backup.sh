#!/bin/bash

. ../.env
NOW=`date +%Y-%m-%d_%H-%M-%S`

sudo docker exec mysql /usr/bin/mysqldump -u ${MYSQL_ROOT_USER} --password=${MYSQL_ROOT_PASSWORD} ${MYSQL_DATABASE} > ../data/db/dumps/db_${NOW}.sql
