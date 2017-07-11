FROM java
MAINTAINER Leonardo Souza <leonardosilva.souza@yahoo.com.br>

COPY helloworld.jar /tmp/helloworld.jar
RUN cd /tmp/
RUN java -jar helloworld.jar -token=${5IJS82JBDB}

EXPOSE 8080

CMD bash
