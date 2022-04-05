## 1 ##
![1](https://user-images.githubusercontent.com/88678440/161708819-17ce734c-11dd-4c00-a438-9db08738cad7.JPG)
## 2 ##
100 - (avg by (instance) (rate(node_cpu_seconds_total{job="nodeexporter",mode="idle"}[1m])) * 100)  
node_memory_MemFree_bytes{job="nodeexporter"}  
node_filesystem_free_bytes{mountpoint="/",fstype!="rootfs"}  
100 - (avg by (instance) (rate(node_cpu_seconds_total{job="nodeexporter",mode="idle"}[1m])) * 100)  
100 - (avg by (instance) (rate(node_cpu_seconds_total{job="nodeexporter",mode="idle"}[5m])) * 100)  
100 - (avg by (instance) (rate(node_cpu_seconds_total{job="nodeexporter",mode="idle"}[15m])) * 100)  
![2](https://user-images.githubusercontent.com/88678440/161728114-3cb821d4-a64d-4420-a05d-f21da7e27faf.JPG)
## 3 ##
![3](https://user-images.githubusercontent.com/88678440/161737059-0a5948e1-66a9-4f16-9985-17f0e6171328.JPG)
## 4 ##
