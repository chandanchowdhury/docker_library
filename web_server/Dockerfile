# Ubuntu_Apache_PHP

# We want to use latest Ubuntu LTS
FROM ubuntu:latest

MAINTAINER i_virus <chandan.chowdhury@hotmail.com>

# Let us first update the system
RUN apt-get update
RUN apt-get -y dist-upgrade && apt-get -y upgrade

# Install the required softwares
RUN apt-get -y install apache2 php

# We will copy the required config files

# Connect container volume
VOLUME /web

# create a sym link to the volume
RUN ln -s /web /var/www/html/web

# connect the local directory "web" to the container's "web"
ADD ./web /web

# Expose the required ports so we can access them in the host
EXPOSE 80

# TODO: Configuring for running HTTPS

# Start the required services
RUN service apache2 start