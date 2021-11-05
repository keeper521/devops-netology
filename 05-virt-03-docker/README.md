### 1 ###
https://hub.docker.com/repository/docker/keeper521/nginx
### 2 ###

### 3 ###
``` bash
keeper@Docker:~/docker$ docker ps -a  
CONTAINER ID   IMAGE     COMMAND                  CREATED         STATUS         PORTS                                   NAMES  
fafa2837604f   debian    "sh -c 'exec sleep 3…"   5 seconds ago   Up 3 seconds   0.0.0.0:8023->23/tcp, :::8023->23/tcp   debian1  
7952a529a7d3   centos    "sh -c 'exec sleep 3…"   3 minutes ago   Up 3 minutes   0.0.0.0:8022->22/tcp, :::8022->22/tcp   centos1  
keeper@Docker:~/docker$ docker exec -it debian1 bash  
root@fafa2837604f:/# ls /data  
test.txt  
root@fafa2837604f:/# touch /data/test1.txt  
root@fafa2837604f:/# ls /data  
test.txt  test1.txt  
root@fafa2837604f:/# exit  
exit  
keeper@Docker:~/docker$ docker exec -it centos1 bash  
[root@7952a529a7d3 /]# ls /data  
test.txt  test1.txt  
[root@7952a529a7d3 /]# exit  
exit  
keeper@Docker:~/docker$ ls /data  
test1.txt  test.txt  
```
### 4 ###
https://hub.docker.com/repository/docker/keeper521/ansible
