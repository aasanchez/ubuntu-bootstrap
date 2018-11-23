#!/usr/bin/env bash

read  -n 1 -p "Windows UserId (/mnt/c/Users/<UserId>):" UserId

echo $UserId

sudo apt-get install -qq curl unzip git-core ack-grep software-properties-common \
build-essential telnet dnsutils

sudo rm -rf /etc/apt/sources.list

if [ -d "/etc/apt/sources.list.d/" ]; then
    sudo rm -rf /etc/apt/sources.list.d/*
fi

sudo bash -c '<<E_O_APT >> /etc/apt/sources.list
deb mirror://mirrors.ubuntu.com/mirrors.txt bionic main universe multiverse restricted
deb mirror://mirrors.ubuntu.com/mirrors.txt bionic-updates main universe multiverse restricted
deb mirror://mirrors.ubuntu.com/mirrors.txt bionic-backports main universe multiverse restricted
deb http://security.ubuntu.com/ubuntu bionic-security main universe multiverse restricted
deb http://archive.canonical.com/ubuntu bionic partner
E_O_APT'

sudo apt-get update
