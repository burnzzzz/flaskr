#!/bin/bash

source ci_lib.sh
cd /var/www/flaskr
build
chown -R www-data:www-data /var/www/flaskr
exec apache2ctl -D FOREGROUND
