FROM ubuntu:16.04
MAINTAINER Jimmy Ou <breezestars@gmail.com>

SHELL ["/bin/bash", "-c"]
# Default to UTF-8 file.encoding
ENV LANG C.UTF-8

WORKDIR /root
RUN apt-get update && \
  apt-get install -y --no-install-recommends locales curl tmux htop wget unzip zip git vim iputils-ping iproute2 jq python && \
  locale-gen en_US.UTF-8 && \
  apt-get dist-upgrade -y && \
  apt-get --purge remove openjdk* && \
  echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | debconf-set-selections && \
  echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main" > /etc/apt/sources.list.d/webupd8team-java-trusty.list && \
  apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886 && \
  apt-get update && \
  apt-get install -y --no-install-recommends oracle-java8-installer oracle-java8-set-default && \
  apt-get clean all

ENTRYPOINT ["/bin/sh"]
