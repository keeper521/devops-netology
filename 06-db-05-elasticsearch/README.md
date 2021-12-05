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
### 2 ###
*
 ![1](https://user-images.githubusercontent.com/88678440/144754012-f75c10b9-4b8c-469b-8ff6-1ae372509c25.JPG)
* Часть индексов перешла в состояние yellow потому, что у них прописаны шарды, а их нет.

### 3 ###
*
```
PUT /_snapshot/netology_backup
{
  "type": "fs",
  "settings": {
    "location": "/elasticsearch-7.15.2/snapshot/"
  }
}
```
```
{
  "acknowledged" : true
}
```
*  
![3](https://user-images.githubusercontent.com/88678440/144755356-075086f9-437e-46ec-a987-17a1ebedb9c1.JPG) 

*   
![4](https://user-images.githubusercontent.com/88678440/144755488-ce5d8489-acc5-4986-8201-ef450f432071.JPG)  

*  
![5](https://user-images.githubusercontent.com/88678440/144755584-04246b58-1815-4e9e-ba20-35af5d584298.JPG)  

* 
```
POST /_snapshot/netology_backup/snapshot_1/_restore
```
![6](https://user-images.githubusercontent.com/88678440/144756714-879ba123-34ec-442f-a892-b1f8b6e282a8.JPG)  

