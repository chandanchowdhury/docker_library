# Ubuntu_MongoDB

# We want to use latest Ubuntu LTS
FROM ubuntu:latest

MAINTAINER i_virus <chandan.chowdhury@hotmail.com>

# Installation:
# Import MongoDB public GPG key AND create a MongoDB list file
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6
RUN echo "deb [ arch=amd64,arm64 ] http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-3.4.list

# Let us first update the system
RUN apt-get update
RUN apt-get -y dist-upgrade && apt-get -y upgrade

# Install the required softwares
RUN apt-get -y install mongodb-org nano

# We will copy the required config files

# Connect container volume
VOLUME /dns/mongodb-store

ADD ./mongodb-store /dns/mongodb-store

# Expose the required ports so we can access them in the host
EXPOSE 27017

# Start the required services
# RUN service mongod start
# RUN /usr/bin/mongod --config /etc/mongod.conf &