#!/bin/bash

source ci_lib.sh
build
chown -R www-data:www-data /var/www/flaskr
exec apache2ctl -D FOREGROUND
