### 1 ###
docker run --name postgres_12 -p 5432:5432 -v /home/keeper/docker/base:/var/lib/postgresql/data -v /home/keeper/docker/backup:/backup -e POSTGRES_PASSWORD=Azsxdc12 -d postgres:12

### 2 ###
*  
![BD](https://user-images.githubusercontent.com/88678440/143536090-645575f5-7baf-4a2b-98b1-d76de48a397e.JPG)  
  
*  
![clients](https://user-images.githubusercontent.com/88678440/143536113-41021d8c-5d66-4792-820b-ad7b8ebac981.JPG)  
![orders](https://user-images.githubusercontent.com/88678440/143536134-10207d41-91bc-4dcf-bce7-24683fc759ed.JPG)  
* SELECT * FROM information_schema.table_privileges  
*  
![Users](https://user-images.githubusercontent.com/88678440/143536201-f344dd85-327f-42f8-bb6b-a82a277038c1.JPG)

### 3 ###
![2](https://user-images.githubusercontent.com/88678440/143541131-84f8dcce-f187-4c9a-9fc2-2ce39e66ccb3.JPG)
![1](https://user-images.githubusercontent.com/88678440/143541133-4140d950-a7f9-4df8-9266-2a1c1648c4a6.JPG)

### 4 ###
update clients   
set заказ = 3   
where фамилия = 'Иванов Иван Иванович'  

update clients   
set заказ = 4   
where фамилия = 'Петров Петр Петрович'  

update clients   
set заказ = 5   
where фамилия = 'Иоганн Себастьян Бах'  

select * from clients  
where заказ is not null  
