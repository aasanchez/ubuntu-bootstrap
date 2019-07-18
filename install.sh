#!/usr/bin/env bash
rm -rf hooks.tar.gz git-hooks-master 
curl https://codeload.github.com/aasanchez/ubuntu_bootstrap/zip/master --output boostrap.tar.gz --silent 
tar xzf boostrap.tar.gz 
