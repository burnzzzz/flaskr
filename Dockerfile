FROM ubuntu:latest
MAINTAINER Kostiantyn Kalynovskyi "kkalinovskiy@gmail.com"
RUN apt update && apt install -y --no-install-recommends \
                                ca-certificates apache2 python-pip \ 
                                libapache2-mod-wsgi python python-setuptools \
                           && apt-get clean \
                           && rm -rf /var/lib/apt/lists \
                           && rm /var/www/html/index.html

COPY . /flaskr
RUN mkdir /var/www/flaskr
COPY pipelines/scripts/* /
RUN rm -f /etc/apache2/sites-enabled/000-default.conf
WORKDIR /
ENTRYPOINT ["/entrypoint.sh"]
