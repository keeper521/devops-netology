### 1 ###
* \l[+]   [PATTERN]      list databases  
*  \c[onnect] {[DBNAME|- USER|- HOST|- PORT|-] | conninfo}  
*  \dt[S+] [PATTERN]      list tables  
*  \d[S+]                 list tables, views, and sequences  
*  \q                     quit psql  

### 2 ###
select avg_width from pg_stats where tablename = 'orders'
![Снимок](https://user-images.githubusercontent.com/88678440/144025595-02bafe12-4de2-4fdb-a439-31fe7847f162.JPG)
