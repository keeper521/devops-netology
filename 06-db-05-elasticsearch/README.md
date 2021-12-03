### 1 ###
* 
```
FROM centos:7
RUN yum install wget zip perl-Digest-SHA  -y \
    && wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.15.2-linux-x86_64.tar.gz \
    && wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.15.2-linux-x86_64.tar.gz.sha512 \
    && shasum -a 512 -c elasticsearch-7.15.2-linux-x86_64.tar.gz.sha512 \
    && tar -xzf elasticsearch-7.15.2-linux-x86_64.tar.gz \
    && cd elasticsearch-7.15.2/
WORKDIR elasticsearch-7.15.2/
```
* https://hub.docker.com/repository/docker/keeper521/elastics
* 
