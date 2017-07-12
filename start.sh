#!/bin/bash

docker pull leomontt/helloworld
docker run -p 8080 leomontt/helloworld 

echo -e "Docker finished!"
