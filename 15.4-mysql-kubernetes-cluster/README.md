---
## Задание 1. Яндекс.Облако

1. Настроить с помощью Terraform кластер баз данных MySQL:
- Используя настройки VPC с предыдущих ДЗ, добавить дополнительно подсеть private в разных зонах, чтобы обеспечить отказоустойчивость 
![1](https://user-images.githubusercontent.com/88678440/188158807-fa0f2018-8738-4837-8517-099d03f8dadf.JPG)
- Разместить ноды кластера MySQL в разных подсетях
- Необходимо предусмотреть репликацию с произвольным временем технического обслуживания
![1 2](https://user-images.githubusercontent.com/88678440/188158939-672eb0be-d027-4ca8-a6c2-7fe648c04433.JPG)
- Использовать окружение PRESTABLE, платформу Intel Broadwell с производительностью 50% CPU и размером диска 20 Гб
- Задать время начала резервного копирования - 23:59
- Включить защиту кластера от непреднамеренного удаления
![1 3](https://user-images.githubusercontent.com/88678440/188158969-793d32eb-449f-418b-b0c4-d1b0a5ef5c6d.JPG)
- Создать БД с именем `netology_db` c логином и паролем
![1 4](https://user-images.githubusercontent.com/88678440/188158994-01ca60fb-e85c-4697-a3df-8d5f3f62acdf.JPG)


2. Настроить с помощью Terraform кластер Kubernetes
- Используя настройки VPC с предыдущих ДЗ, добавить дополнительно 2 подсети public в разных зонах, чтобы обеспечить отказоустойчивость
![2 1](https://user-images.githubusercontent.com/88678440/188153567-6b7b11c5-6f61-4c7c-8c4c-968a27aca8d5.JPG)
- Создать отдельный сервис-аккаунт с необходимыми правами 
![2 2](https://user-images.githubusercontent.com/88678440/188153672-fac2a84a-853f-475d-badc-6489001b663c.JPG)
- Создать региональный мастер kubernetes с размещением нод в разных 3 подсетях
- Добавить возможность шифрования ключом из KMS, созданного в предыдущем ДЗ
![2 3](https://user-images.githubusercontent.com/88678440/188153799-0fba0c6b-fd9a-4a2e-ade9-891fed809f51.JPG)
![2 3 2](https://user-images.githubusercontent.com/88678440/188153908-2946b6f2-34fa-4ce3-a18c-19292c8fe84a.JPG)
- Создать группу узлов состояющую из 3 машин с автомасштабированием до 6  
### Созданы 3 группы, так как autoscaling в разных зонах не поддерживается
![2 3 2](https://user-images.githubusercontent.com/88678440/188154464-64b81bc0-efc2-4230-b673-34230dd5a088.JPG)
![2 3 1](https://user-images.githubusercontent.com/88678440/188153967-ac5a977a-dda8-4952-9ad5-57073f342fc7.JPG)
- Подключиться к кластеру с помощью `kubectl`
![2 4](https://user-images.githubusercontent.com/88678440/188154515-13a06319-814b-4532-b3c6-2b858781ecfd.JPG)
