#!/usr/bin/env bash
if [ ! -d ~/.ssh ]; then
  mkdir -p ~/.ssh && chmod 700 ~/.ssh
fi
echo "Where is your ssh key?"
read URL
#curl -o ~/.ssh/id_rsa $URL
#sudo chmod 0400 ~/.ssh/id_rsa
#eval $(ssh-agent -s) && ssh-add -k ~/.ssh/id_rsa
