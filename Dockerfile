FROM ubuntu:latest
MAINTAINER Kostiantyn Kalynovskyi "kkalinovskiy@gmail.com"
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
COPY . /app
WORKDIR /app
