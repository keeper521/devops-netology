### 1 ###
docker run --name postgres_12 -p 5432:5432 -v /home/keeper/docker/base:/var/lib/postgresql/data -v /home/keeper/docker/backup:/backup -e POSTGRES_PASSWORD=Azsxdc12 -d postgres:12

### 2 ###

test_db=# \l  
                                 List of databases  
   Name    |  Owner   | Encoding |  Collate   |   Ctype    |   Access privileges  
-----------+----------+----------+------------+------------+-----------------------  
 postgres  | postgres | UTF8     | en_US.utf8 | en_US.utf8 |  
 template0 | postgres | UTF8     | en_US.utf8 | en_US.utf8 | =c/postgres          +  
           |          |          |            |            | postgres=CTc/postgres  
 template1 | postgres | UTF8     | en_US.utf8 | en_US.utf8 | =c/postgres          +  
           |          |          |            |            | postgres=CTc/postgres  
 test_db   | postgres | UTF8     | en_US.utf8 | en_US.utf8 |  
(4 rows)  

test_db=# \d orders describe table  
                               Table "public.orders"  
    Column    |  Type   | Collation | Nullable |              Default  
--------------+---------+-----------+----------+------------------------------------  
 id           | integer |           | not null | nextval('orders_id_seq'::regclass)  
 эршьхэютрэшх | text    |           |          |  
 Ўхэр         | integer |           |          |  
Indexes:  
    "orders_pkey" PRIMARY KEY, btree (id)  
Referenced by:  
    TABLE "clients" CONSTRAINT "clients_чрърч_fkey" FOREIGN KEY ("чрърч") REFERENCES orders(id)  
  
  
\d: extra argument "describe" ignored  
\d: extra argument "table" ignored  
