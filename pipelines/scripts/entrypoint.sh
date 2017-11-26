#!/bin/bash

source ci_lib.sh
cd /flaskr
build
chown -R www-data:www-data /var/www/flaskr
cp -r flaskr /var/www/
exec apache2ctl -D FOREGROUND
