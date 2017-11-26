FROM ubuntu:latest
MAINTAINER Kostiantyn Kalynovskyi "kkalinovskiy@gmail.com"
RUN apt update && apt install -y --no-install-recommends \
                                ca-certificates apache2 python-pip \ 
                                libapache2-mod-wsgi python \
                           && apt-get clean \
                           && rm -rf /var/lib/apt/lists \
                           && rm /var/www/html/index.html

COPY . /var/www/flaskr
COPY pipelines/files/flaskr.wsgi /var/www/flaskr/flaskr.wsgi
COPY pipelines/scripts/* /
COPY pipelines/files/flaskr.conf /etc/apache2/sites-available/flaskr.conf

RUN chown -R www-data:www-data /var/www/flaskr
RUN rm -f /etc/apache2/sites-enabled/000-default.conf && a2ensite flaskr.conf

WORKDIR /
ENTRYPOINT ["/entrypoint.sh"]
