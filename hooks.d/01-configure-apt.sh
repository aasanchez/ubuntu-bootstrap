if [ ! -f ~/.apt ]; then
  sudo rm -rf /etc/apt/sources.list
  if [ -d '/etc/apt/sources.list.d/' ]; then
    sudo rm -rf /etc/apt/sources.list.d/*
  fi
  echo "deb http://archive.ubuntu.com/ubuntu/ bionic main restricted universe multiverse" | sudo tee -a  /etc/apt/sources.list
  echo "deb http://archive.ubuntu.com/ubuntu/ bionic-updates main restricted universe multiverse" | sudo tee -a  /etc/apt/sources.list
  echo "deb http://archive.ubuntu.com/ubuntu/ bionic-backports main restricted universe multiverse" | sudo tee -a /etc/apt/sources.list
  echo "deb http://security.ubuntu.com/ubuntu/ bionic-security main restricted universe multiverse" | sudo tee -a /etc/apt/sources.list
  echo "deb http://archive.canonical.com/ubuntu bionic partner" | sudo tee -a /etc/apt/sources.list
  touch ~/.apt
  sudo add-apt-repository ppa:git-core/ppa
  sudo apt-get update
fi