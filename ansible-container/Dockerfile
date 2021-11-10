FROM ubuntu:latest

RUN apt-get -y update && \
  apt-get -y install software-properties-common && \
  add-apt-repository --yes --update ppa:ansible/ansible && \
  apt-get -y install ansible