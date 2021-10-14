#!/usr/bin/env bash

# run as root

apt-get update

# get docker
apt-get install docker.io

# add user
usermod -aG docker <user>