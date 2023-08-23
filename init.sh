#!/bin/bash
sudo yum -y update
sudo yum -y install docker
sudo systemctl start docker

sudo groupadd docker
sudo gpasswd -a $USER docker
newgrp docker 

docker rm qshare-api
docker pull dmytroservian/qshare-api
docker run --name qshare-api -p 80:80 -d dmytroservian/qshare-api