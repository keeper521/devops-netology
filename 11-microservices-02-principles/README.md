## 1 ##
* Kong Gateway
Имеет маршрутизацию запросов, аутентификацию но нет терминации HTTPS
* Goku API Gateway
Имеет маршрутизацию, терминацию HTTPS но нет аутентификации
* KrakenD API Gateway
Имеет маршрутизацию, аутентификацию и терминацию HTTPS  

Мой выбор пал на KrakenD так как он попадает под все условия и он является сверхпроизводительным.
## 2 ##
* Kafka
Поддерживает кластеризацию, хранит сообщения на диске в процессе доставки, высокая скорость работы, поддерживает различные форматы сообщений, есть разделение прав доступа к различным потокам сообщений, трудно обслуживается.
* RabbitMQ
Поддерживает кластеризацию, хранит сообщения на диске в процессе доставки, высокая скорость работы, поддерживает различные форматы сообщений, есть разделение прав доступа к различным потокам сообщений, прост в эксплуатации, менее масштабируемый по сравнению с kafka
* ActiveMQ
Поволяет только Master-Slaves конфигурацию на основе общего хранилища, хранит сообщения на диске в процессе доставки, медленнее чем kafka и rabbitmq, не поддерживает разные форматы сообщений, есть разделение прав доступа к различным потокам сообщений, легко обслуживается  

Выбрал бы RabbitMQ, подходит под все требования имеет хорошую производительность.