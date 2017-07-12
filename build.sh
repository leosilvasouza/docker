#!/bin/bash

docker build -t="leomontt/HelloWorld" .
docker login
docker tag helloworld leomontt/helloworld:lastest
docker push leomontt/helloworld

echo -e "Build completed with success\nCheck your Docker Hub account"
