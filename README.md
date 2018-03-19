# docker


Fazer o deploy da aplicacão HelloWorld.
Criar um Dockerfile e fazer push dessa imagem no DockerHub. 

Criando um script para executar a aplicação.
Instalando java versão 8 para a aplicação rodar.
O executável da aplicação se encontra na seguinte url:
https://s3-sa-east-1.amazonaws.com/bluesoft-public/desafio/helloworld.jar
O token se encontra na seguinte url:
https://s3-sa-east-1.amazonaws.com/bluesoft-public/desafio/token.json
Criar script para execução do comando java -jar helloworld.jar --token=${TOKEN}
Mapear a porta 8080 para a aplicação rodar e expor ela no container.

Scripts build.sh e start.sh 

Esses scripts são responsáveis por fazer build e start da aplicação, respectivamente.

Build constroi o ambiente (build.sh)
- Fazer o build da imagem Docker.
- Criar uma tag e enviar para o DockerHub.

Script executa a aplicação (start.sh)
- O script obtem o TOKEN toda vez que a aplicação for executada.
- O script executa a imagem Docker criada no script de build (build.sh).
