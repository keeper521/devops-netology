### 1 ###
https://hub.docker.com/repository/docker/keeper521/nginx
### 2 ###
* Высоконагруженное монолитное java веб-приложение - мне кажется лучше подойдет виртуальная машина, где не будет проблем с ресурсами, так как в docker если будет несколько контейнеров запущено, будет проблема с разграничением ресурсов.  
* Nodejs веб-приложение - можно запускать в docker, так как если вдруг взломают приложение хостовой машине не повредят и перезапустив контейнер легко все откатить.
* Мобильное приложение c версиями для Android и iOS - можно запускать в docker, так как все нужные библиотеки для запуска будут уже в контейнере и приложение будет одинаково работать в разных ОС  
* Шина данных на базе Apache Kafka - можно запускать в docker, так как docker работает напрямую с аппаратной частью.
* Elasticsearch кластер для реализации логирования продуктивного веб-приложения - три ноды elasticsearch, два logstash и две ноды kibana - Можно развернуть в docker, так как можно подключить диск для логов и подключить сеть для сбора данных, а сами контейнеры будут весить меньше чем виртуальные машины.
* Мониторинг-стек на базе Prometheus и Grafana - аналогично предыдущему, экономия ресурсов при разворачивании в docker
* MongoDB, как основное хранилище данных для java-приложения - поскольку контейнер не хранит изменения после перезапуска лучше использовать виртуальную машину или физическую.
* Gitlab сервер для реализации CI/CD процессов и приватный (закрытый) Docker Registry - Лучше использовать виртуальную машину так как будут постоянно идти изменения в ветках разработки приложения, а Docker Registry будет часто обновляться.
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
