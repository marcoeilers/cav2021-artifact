#!/bin/bash

sudo apt --yes install git
sudo apt --yes install openjdk-11-jdk
sudo apt --yes install python3-pip
sudo apt --yes install python3-dev
sudo apt --yes install curl
git clone https://github.com/marcoeilers/nagini.git
cd nagini
git checkout cav_artifact
sudo pip3 install .
cd ..
git clone https://bitbucket.org/covern/secc.git
cd secc
git checkout 7350c77
make
cd ..
