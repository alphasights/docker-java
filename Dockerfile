FROM jjbohn/as-baseimage:0.0.1
MAINTAINER John Bohn <jjbohn@gmail.com>

ENV HOME /root

# Install java
RUN apt-get update && apt-get install -y openjdk-7-jre=7u65-2.5.2-3~14.04

# Clean up
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
