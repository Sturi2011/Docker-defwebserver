FROM debian:jessie

MAINTAINER afohl <andreas@fohl.net>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get -y --force-yes install wget apt-transport-https
RUN apt-get -f install

RUN apt-get install mc python3 -y

RUN echo Europe/Berlin > /etc/timezone && dpkg-reconfigure tzdata

EXPOSE 80






