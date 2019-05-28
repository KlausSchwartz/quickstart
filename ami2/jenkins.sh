#!/bin/bash
# Start Jenkins and connect a volume to persist all jenkins data.

echo ""
echo ""
echo "This script will install Jenkins as Docker Container and map the configuration to a folder on you Harddrive"
echo ""
echo ""

echo "Which Port should Jenkins use to be reached from the outside?"
read -p 'Port (no Input = 8080): ' jport < /dev/tty

if [ -z "$jport" ]
then
#empty input
jport="8080"
fi

echo ""
echo OK, Jenkins will be available on Port $jport
echo ""
echo ""

echo "Please enter a path for the jenkins volume, where Jenkins should store configuration data"
echo "( be carefull, this directory is accessable out of jenkins and insecure )"
read -p 'Path (no Input = "./v_jenkins") ' jpath < /dev/tty
if [ -z "$jpath" ]
then
#empty input
jpath="${pwd}/v_jenkins"
fi
echo ""
echo OK, Jenkins configuration data will be stored in $jpath
echo ""
echo ""

echo "Are you sure to install Jenkins with these parameters?"
read -p 'Install Jenkins? (y/n) ' -n 1 -r < /dev/tty
if [[ $REPLY =~ ^[Yy]$ ]]
then

    #create jpath
    sudo mkdir -p $jpath

    #set permissions for jpath (need a better solution here!)
    sudo chmod 777 $jpath

    #install jenkins
    docker run -p 8080:$jport -p 50000:50000 -v $jpath:/var/jenkins_home jenkins/jenkins:lts

fi
