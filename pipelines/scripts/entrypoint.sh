#!/bin/bash

source ci_lib.sh
build
chown -R www-data:www-data /var/www/pulse
exec apache2ctl -D FOREGROUND
