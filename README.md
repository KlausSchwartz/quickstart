# quickstart


This Script should be usable like this:

curl -sSL http://bit.ly/2ysbOFE | bash -s

to make a new ami2 ec2 instance dev ready use:
curl -sSL https://raw.githubusercontent.com/KlausSchwartz/quickstart/master/ami2/makeAmiDevReady.sh | bash -s


# for development use:
curl -H 'Cache-Control: no-cache' -sSL https://raw.githubusercontent.com/KlausSchwartz/quickstart/ami-start/ami2/makeAmiDevReady.sh | bash -s
(while ami-start is the branch name, where you have pushed your changes)