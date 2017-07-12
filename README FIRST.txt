Documentando o desafio Docker

Para esse desafio, resolvi criar um ambiente virtualizado do CentosOS 7 64 bits de kernel 3.10.

Primeiro passo foi instalar o EPEL no meu Centos para garantir todos os repositórios para instalação de programas que não tenham no repositório original, pois mais pra frente irei instalar um programa chamado JQ.
# wget http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-9.noarch.rpm
# rpm -ivh epel-release-7-9.noarch.rpm

Segundo passo foi instalar o docker, não se preocupe em garantir todos os updates, o Centos faz isso sempre que for instalar algo de seu repositório:
# yum -y install docker docker-registry

Habilitei para o que o serviço subisse junto com o OS:
# sudo systemctl enable docker.service

Iniciei o serviço (assim não precisa rebootar, nesse momento):
# sudo systemctl start docker.service

Sempre que eu instalo um serviço eu valido se realmente subiu:
# sudo systemclt status docker.service

Criei uma imagem fazendo o download por não ter local, de uma imagem centos:
# sudo docker run -it centos 

Meu container ganhou o ID 87f8636b4a14 como expecifiquei -it eu estou dentro do container e montei todo o ambiente para receber o java 8, maiores detalhes no Dockerfile tem o passo a passo.

Após a configuração do container fiz uma imagem dele no dockerhub apartir do meu Dockerfile

Os scripts build.sh e start.sh ficaram dessa forma:

Start = irá sempre baixar de um endereço fixo o arquivo .jar e .json, em seguida instalando o programa jq para manipular o arquivo json, criei uma variável para receber o valor no arquivo json, no caso a chave e no final montar o container na porta 8080 uma imagem do java 8 rodando o comando da aplicação e validando com o token armazenado na variável keyjson.

Build = vai construir nosso container no dockerhub, tendo a minha imagem personalizada, todos os arquivos estão no mesmo diretório da máquina virtual.

Espero que gostem