FROM jjbohn/as-baseimage:0.0.1
MAINTAINER John Bohn <jjbohn@gmail.com>

ENV HOME /root

# Install java
RUN apt-get update
RUN apt-get install -y openjdk-7-jre

# Clean up
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
