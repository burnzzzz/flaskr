#!/bin/bash

export FLASK_APP=flaskr

source ci_lib.sh
cd /flaskr
build
cp pipelines/files/flaskr.wsgi /var/www/flaskr/flaskr.wsgi
cp pipelines/files/flaskr.conf /etc/apache2/sites-available/flaskr.conf
a2ensite flaskr.conf
chown -R www-data:www-data /var/www/flaskr
exec apache2ctl -D FOREGROUND
