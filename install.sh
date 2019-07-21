#!/usr/bin/env bash
if [ ! -d "~/.ssh" ]; then
  mkdir -p ~/.ssh && chmod 700 ~/.ssh
fi
echo "Where is your ssh key?"
read URL
