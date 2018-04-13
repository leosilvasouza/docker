# docker
# Ambiente criado para deploy da aplicacão HelloWorld.
# Tendo um Dockerfile e fazer push do ambiente configurado no DockerHub com comando:
$ docker push leomontt/docker:tagname


# Ambiente tem java versão 8 para a aplicação rodar.
# O executável da aplicação se encontra na seguinte url: https://s3-sa-east-1.amazonaws.com/bluesoft-public/desafio/helloworld.jar
# O token se encontra na seguinte url: https://s3-sa-east-1.amazonaws.com/bluesoft-public/desafio/token.json
# Dentro tem o script para execução do comando java -jar helloworld.jar --token=${TOKEN}
# Mapeado na porta 8080 para a aplicação rodar

# Contem os scritps  'build.sh e start.sh'
# Esses scripts são responsáveis por fazer build e start da aplicação.

# Build.sh constroi o ambiente
# Faz o build da imagem Docker.

# Script.sh executa a aplicação com os seguintes passos
# - obtem o TOKEN toda vez que a aplicação for executada.
