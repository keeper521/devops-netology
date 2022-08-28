## Задание 1.

1. Создать bucket Object Storage и разместить там файл с картинкой:
- Создать bucket в Object Storage с произвольным именем (например, _имя_студента_дата_);
- Положить в bucket файл с картинкой;
- Сделать файл доступным из Интернет.  
![1](https://user-images.githubusercontent.com/88678440/187068309-9da32e8c-5a4c-494c-abfb-1658b1eef6fb.JPG)
![1 2](https://user-images.githubusercontent.com/88678440/187068626-8f736aa6-7893-4e8a-9d28-d84afb4c66bb.JPG)
2. Создать группу ВМ в public подсети фиксированного размера с шаблоном LAMP и web-страничкой, содержащей ссылку на картинку из bucket:
- Создать Instance Group с 3 ВМ и шаблоном LAMP. Для LAMP рекомендуется использовать `image_id = fd827b91d99psvq5fjit`;
- Для создания стартовой веб-страницы рекомендуется использовать раздел `user_data` в [meta_data](https://cloud.yandex.ru/docs/compute/concepts/vm-metadata);
- Разместить в стартовой веб-странице шаблонной ВМ ссылку на картинку из bucket;
- Настроить проверку состояния ВМ.
![2](https://user-images.githubusercontent.com/88678440/187068456-7c75e5a3-bc09-4274-b861-3aa2077287ae.JPG)
![2 3](https://user-images.githubusercontent.com/88678440/187068506-8655857f-d143-43f6-acd2-b3a1782f4080.JPG)
3. Подключить группу к сетевому балансировщику:
- Создать сетевой балансировщик;
![2 1](https://user-images.githubusercontent.com/88678440/187068527-828fa032-d42c-4ab9-b587-97a06b59edae.JPG)
- Проверить работоспособность, удалив одну или несколько ВМ.
![3](https://user-images.githubusercontent.com/88678440/187068535-a3aafa5c-f35a-4a97-902e-aa3bfea3f9c4.JPG)
![3 2](https://user-images.githubusercontent.com/88678440/187068567-f6835155-1c7c-4ae0-95d5-ef5232d97c2d.JPG)
![3 1](https://user-images.githubusercontent.com/88678440/187068572-3e5ea0f4-0d8d-4971-8d1a-24bb8c913a19.JPG)
