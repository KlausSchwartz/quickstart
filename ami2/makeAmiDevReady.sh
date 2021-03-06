#!/bin/bash

echo "####################################"
echo " step 1: update everything"
echo " with 'sudo yum update -y'   "
echo "####################################"

#step 1
sudo yum update -y

echo "#######################################################"
echo " step 2: install Development Tools"
echo " with 'sudo yum groupinstall 'Development Tools' -y'"
echo "#######################################################"

#step 2
sudo yum groupinstall "Development Tools" -y

#step 3
echo "####################################"
echo " step 3: Install mc "
echo " with 'sudo yum install mc -y' "
echo "####################################"

#step 3
sudo yum install mc -y


echo "####################################"
echo " step 4: Install and start Docker   "
echo " with 'sudo yum install docker -y'  "
echo " and  'sudo service docker start'   "
echo "####################################"

#step 4
sudo yum install docker -y && sudo service docker start


echo "####################################"
echo " step 5: Configure current user to use Docker without Sudo "
echo " by creating a Docker group and adding the current user to it "
echo "####################################"

#step 5

#create docker group
sudo groupadd docker

#add current user to docker group
sudo gpasswd -a $USER docker

#make new groups active without restarting
newgrp docker

echo "####################################"
echo " step 6: Test Docker "
echo " with 'docker run hello-world' "
echo "####################################"

#step 6
docker run hello-world


