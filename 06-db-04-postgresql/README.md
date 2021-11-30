### 1 ###
* \l[+]   [PATTERN]      list databases  
*  \c[onnect] {[DBNAME|- USER|- HOST|- PORT|-] | conninfo}  
*  \dt[S+] [PATTERN]      list tables  
*  \d[S+]                 list tables, views, and sequences  
*  \q                     quit psql  

### 2 ###
select avg_width from pg_stats where tablename = 'orders'
![Снимок](https://user-images.githubusercontent.com/88678440/144025595-02bafe12-4de2-4fdb-a439-31fe7847f162.JPG)

### 3 ###
CREATE TABLE orders_1 (CHECK (price > 499)) INHERITS (orders)  
CREATE TABLE orders_2 (CHECK (price <= 499)) INHERITS (orders)  

CREATE RULE orders_insert_1 AS ON INSERT TO orders WHERE (price > 499) DO INSTEAD INSERT INTO orders_1 VALUES (NEW.*)  
CREATE RULE orders_insert_2 AS ON INSERT TO orders WHERE (price <= 499) DO INSTEAD INSERT INTO orders_2 VALUES (NEW.*)  

Да можно было изначально исключить ручное разбиение написанием условия заполнения талиц на основе правила.

### 4 ###
CREATE TABLE public.orders (id integer NOT NULL, title character varying(80) NOT NULL UNIQUE, price integer DEFAULT 0);  
