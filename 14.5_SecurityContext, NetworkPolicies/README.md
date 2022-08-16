## 1
Создайте модуль

```
kubectl apply -f 14.5/example-security-context.yml
```
![1](https://user-images.githubusercontent.com/88678440/184830133-15bfca4c-ad1c-4eba-98db-c5331a2399f7.JPG)

Проверьте установленные настройки внутри контейнера

```
kubectl logs security-context-demo
uid=1000 gid=3000 groups=3000
```
![2](https://user-images.githubusercontent.com/88678440/184830203-816e9fae-da54-4ba1-8e67-274260a3752c.JPG)
