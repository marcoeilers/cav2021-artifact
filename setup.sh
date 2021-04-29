#!/bin/bash

# install dependencies
sudo apt --yes install git
sudo apt --yes install openjdk-11-jdk
sudo apt --yes install python3-pip
sudo apt --yes install python3-dev
sudo apt --yes install curl

# install nagini
git clone https://github.com/marcoeilers/nagini.git
cd nagini
git checkout cav_artifact
sudo pip3 install .


# remove functional tests that fail in ordinary nagini because of pre-existing
# issues, or that use concurrency and therefore cannot be verified in ordinary
# non-interference mode (which only supports sequential programs)
rm tests/functional/verification/examples/keon_knapsack.py 
rm tests/functional/verification/issues/00026.py 
rm tests/functional/verification/issues/00028.py 
rm tests/functional/verification/issues/00065.py 
rm tests/functional/verification/issues/00096.py 
rm tests/functional/verification/issues/00113.py 
rm tests/functional/verification/test_equality.py 
rm tests/functional/verification/test_global_definedness_9.py 
rm tests/functional/verification/test_lock.py 
rm tests/functional/verification/test_thread_create.py 
rm tests/functional/verification/test_thread_fork.py 
rm tests/functional/verification/test_thread_join.py 

cd ..

# install secc
git clone https://bitbucket.org/covern/secc.git
cd secc
git checkout 7350c77
make
cd ..

# download other files in the artifact (logs, tutorial)

# download and compile viper
mkdir viper
cd viper
git clone https://github.com/viperproject/silicon.git
git clone https://github.com/viperproject/silver.git
git clone https://github.com/viperproject/carbon.git
git clone https://github.com/viperproject/silver-sif-extension.git
git clone https://github.com/viperproject/silicon-sif-extension.git
cd silver
git checkout v.20.07-release
cd ..
cd silicon
git checkout 20.07-with-ce-fix
ln -s ../silver silver
sbt assembly
cd ..
cd carbon
git checkout v.20.07-release
ln -s ../silver silver
sbt assembly
cd ..
cd silver-sif-extension
git checkout 043a3ee8e8a15bafcd7f8c521fc5b77f6a75c534
ln -s ../silver silver
sbt package
cd ..
cd silicon-sif-extension
git checkout 175015aa293e10f58e81953da5e5cdee60bda943
ln -s ../silver silver
ln -s ../silicon silicon
ln -s ../silver-sif-extension silver-sif-extension
sbt package
cd ..

