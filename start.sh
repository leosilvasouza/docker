#!/bin/bash

docker pull leomontt/helloword
rm -fR token.json
wget https://s3-sa-east-1.amazonaws.com/bluesoft-public/desafio/token.json
docker run -p 8080 leomontt/helloworld

echo -e "Docker finished!"
