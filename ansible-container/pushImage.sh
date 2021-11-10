#!/usr/bin/env bash
docker build -t matthewforeman/ansible-in-containers .
# docker tag matthewforeman/ansible-in-containers:latest
docker push matthewforeman/ansible-in-containers:latest