FROM jenkins:1.651.3
MAINTAINER Larry SU <larrysu1115@gmail.com>

USER root

RUN apt-get update && \
    apt-get --no-install-recommends install -q -y vim && \
    rm -rf /var/lib/apt/lists/*

USER jenkins

COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt

