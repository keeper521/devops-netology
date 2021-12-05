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
```
{
  "name" : "netology_test",
  "cluster_name" : "elasticsearch",
  "cluster_uuid" : "qjaVP_gwS1CXG2PJD4Eb2Q",
  "version" : {
    "number" : "7.15.2",
    "build_flavor" : "default",
    "build_type" : "tar",
    "build_hash" : "93d5a7f6192e8a1a12e154a2b81bf6fa7309da0c",
    "build_date" : "2021-11-04T14:04:42.515624022Z",
    "build_snapshot" : false,
    "lucene_version" : "8.9.0",
    "minimum_wire_compatibility_version" : "6.8.0",
    "minimum_index_compatibility_version" : "6.0.0-beta1"
  },
  "tagline" : "You Know, for Search"
}
```
