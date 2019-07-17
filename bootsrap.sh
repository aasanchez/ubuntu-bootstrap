#!/usr/bin/env bash
# curl -o- https://gist.githubusercontent.com/aasanchez/dfb8fbd6ca16b49834287dfbc17984bc/raw/01-base.sh?_=$(date +%s) | bash

if [[ -f "/home/$USER/.profile" ]]; then 
  . /home/$USER/.profile
fi



curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh  # This loads NVM
nvm install --lts
npm install -g typescript @angular/cli create-react-app express-generator nodemon browserify grunt-cli bower



cd ~/.ssh
gpg --import gpg.asc
cd ~/

sudo apt-get install -y php7.2-cli php7.2-fpm php7.2-mysql php7.2-pgsql php7.2-sqlite php7.2-curl php7.2-gd \
php7.2-gmp php7.2-memcached php7.2-imagick php7.2-intl php7.2-xdebug php7.2-xml php7.2-mbstring \
php7.2-common php7.2-cgi php7.2-imap php7.2-ldap php7.2-json php7.2-bcmath php7.2-soap php7.2-zip

curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer

composer global require laravel/installer

#sudo apt-get update
#sudo apt-get upgrade -y
#sudo apt-get autoremove -y
#sudo apt-get dist-upgrade -y
