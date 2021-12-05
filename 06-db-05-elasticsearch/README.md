### 1 ###
* 
```
FROM centos:7
RUN yum install wget zip perl-Digest-SHA -y
RUN wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.15.2-linux-x86_64.tar.gz
RUN wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.15.2-linux-x86_64.tar.gz.sha512
RUN shasum -a 512 -c elasticsearch-7.15.2-linux-x86_64.tar.gz.sha512
RUN tar -xzf elasticsearch-7.15.2-linux-x86_64.tar.gz
RUN chmod 777 -R /elasticsearch-7.15.2/
RUN cd elasticsearch-7.15.2/
WORKDIR /elasticsearch-7.15.2
RUN adduser elasticsearch

```
* https://hub.docker.com/repository/docker/keeper521/elastics
* 
