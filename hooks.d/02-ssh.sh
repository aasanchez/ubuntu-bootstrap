mkdir ~/.ssh
cd ~/.ssh
echo "URL Base for your ssh key"
read URL
wget $URL/id_rsa
sudo chmod 0400 id_rsa

