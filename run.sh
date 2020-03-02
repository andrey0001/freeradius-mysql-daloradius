#!/bin/bash

/init.sh

#======== DELETE INIT CODE ==
sed -i "s/^\/init.sh//" /run.sh
sleep 10
mysqld_safe >/dev/null & 
sleep 20
php-fpm7.0 & 
nginx & 
/usr/sbin/freeradius -X

