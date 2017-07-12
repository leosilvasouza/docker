#!/bin/bash

docker build -t="leomontt/HelloWorld" .
docker login
docker tag c061a301569 leomontt/helloworld:lastest
docker push leomontt/helloworld

echo -e "Build completed with success\nCheck your Docker Hub account"
