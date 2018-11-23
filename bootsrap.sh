#!/usr/bin/env bash

read  -n 1 -p "Windows UserId (/mnt/c/Users/<UserId>):" UserId

echo $UserId

sudo apt-get install -qq curl unzip git-core ack-grep software-properties-common \
build-essential telnet dnsutils

sudo rm -rf /etc/apt/sources.list

if [ -d "/etc/apt/sources.list.d/" ]; then
    sudo rm -rf /etc/apt/sources.list.d/*
fi

sudo touch /etc/apt/sources.list
echo "deb mirror://mirrors.ubuntu.com/mirrors.txt bionic main universe multiverse restricted" >> /etc/apt/sources.list
echo "deb mirror://mirrors.ubuntu.com/mirrors.txt bionic-updates main universe multiverse restricted" >> /etc/apt/sources.list
echo "deb mirror://mirrors.ubuntu.com/mirrors.txt bionic-backports main universe multiverse restricted" >> /etc/apt/sources.list
echo "deb http://security.ubuntu.com/ubuntu bionic-security main universe multiverse restricted" >> /etc/apt/sources.list
echo "deb http://archive.canonical.com/ubuntu bionic partner" >> /etc/apt/sources.list

sudo apt-get update
