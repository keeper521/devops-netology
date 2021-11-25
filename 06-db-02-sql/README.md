### 1 ###
docker run --name postgres_12 -p 5432:5432 -d postgres:12 -v /home/keeper/docker/base:/base -v /home/keeper/docker/backup/:/backup
