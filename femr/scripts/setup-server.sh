#!/usr/bin/env bash

# Common
sudo apt-get update \
    && sudo apt-get -y upgrade \
    && sudo apt-get -y install apt-transport-https \
    && sudo apt-get -y install software-properties-common \
    && sudo apt-get -y install unzip \
    && sudo apt-get -y install git

# Java - make installer non-interactive
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list \
    && sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823 \
    && sudo add-apt-repository ppa:webupd8team/java \
    && sudo apt-get update \
    && sudo apt-get -y install oracle-java8-installer sbt
    
# MySql
# TODO setting insecure default password - Fix this later   
# sudo add-apt-repository 'deb http://archive.ubuntu.com/ubuntu trusty universe' \
#     && sudo apt update \
#     && sudo debconf-set-selections <<< 'mysql-server-5.6 mysql-server/root_password password password' \
#     && sudo debconf-set-selections <<< 'mysql-server-5.6 mysql-server/root_password_again password password' \
#     && sudo apt-get -y install mysql-server-5.6 \
#     && sudo update-rc.d mysql defaults
