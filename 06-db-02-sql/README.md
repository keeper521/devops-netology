### 1 ###
docker run --name postgres_12 -p 5432:5432 -v /home/keeper/docker/base:/var/lib/postgresql/data -v /home/keeper/docker/backup:/backup -e POSTGRES_PASSWORD=Azsxdc12 -d postgres:12

### 2 ###
