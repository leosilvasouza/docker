#!/bin/bash

wget https://s3-sa-east-1.amazonaws.com/bluesoft-public/desafio/helloworld.jar
echo -e "Download helloworld.jar finished!\n\n\nNOW creating container java 8, please wait!"

wget https://s3-sa-east-1.amazonaws.com/bluesoft-public/desafio/token.json
yum -y install jq
keyjson=$(cat token.json | jq '.token')

docker run -d -p 8080 --name java java -jar helloworld.jar -token${keyjson}

echo -e "Docker finished! "
