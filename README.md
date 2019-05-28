# quickstart

This Script should be usable like this:


# for development use (with disabled cache):
curl -H 'Cache-Control: no-cache' -sSL https://raw.githubusercontent.com/KlausSchwartz/quickstart/ami-start/ami2/makeAmiDevReady.sh | bash -s

(while "ami-start" is the branch name, where you have pushed your changes)


#to make a new ami2 ec2 instance dev ready (including docker) use:
curl -sSL https://raw.githubusercontent.com/KlausSchwartz/quickstart/master/ami2/makeAmiDevReady.sh | bash -s

# to install jenkins
curl -sSL https://raw.githubusercontent.com/KlausSchwartz/quickstart/master/ami2/jenkins.sh | bash -s