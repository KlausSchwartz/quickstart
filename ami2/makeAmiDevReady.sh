#!/bin/bash

echo "####################################"
echo " step 1: update everything"
echo " with 'sudo yum update -y'   "
echo "####################################"

#step 1
#sudo yum update -y

echo "####################################"
echo " step 2: install Development Tools"
echo " with 'sudo yum update -y'   "
echo "####################################"

#step 2
sudo yum groupinstall "Development Tools" -y
