### 1. ###
будет ошибка так как складываются разного типа переменные  
сделать a = '1'  
сделать b = 2
### 2. ###
```python
#!/usr/bin/env python3

import os, sys

bash_command = ["cd ~/netology/devops-netology", "git status"]
result_os = os.popen(' && '.join(bash_command)).read()
is_change = False
for result in result_os.split('\n'):
    if result.find('modified') != -1:
        prepare_result = result.replace('\tmodified:   ', '')
        print(os.path.abspath(prepare_result))

```
### 3. ###
```python
#!/usr/bin/env python3

import os, sys

git = input('Укажите путь к репозиторию: ')
bash_command = [f"cd {git}",  "git status"]
result_os = os.popen(' && '.join(bash_command)).read()
is_change = False
for result in result_os.split('\n'):
    if result.find('modified') != -1:
        prepare_result = result.replace('\tmodified:   ', '')
        print(os.path.abspath(prepare_result))
```
### 4. ###
```python

#!/usr/bin/env python3

import socket, os

a = socket.gethostbyname('google.com')
d = socket.gethostbyname('drive.google.com')
m = socket.gethostbyname('mail.google.com')

bash_command = 'cat ip.log'
ip_log = os.popen(bash_command).read()
ip=list(ip_log.split())

if a != ip[0]:
    print(f'[ERROR] google.com IP mismatch: {a} {ip[0]}')
    ip[0] = a
elif a == ip[0]:
    print('google.com -', a)
if d != ip[1]:
    print(f'[ERROR] google.com IP mismatch: {d} {ip[1]}')
    ip[1] = d
elif d == ip[1]:
    print('drive.google.com -', d)
if m != ip[2]:
    print(f'[ERROR] google.com IP mismatch: {m} {ip[2]}')
    ip[2] = m
elif m == ip[2]:
    print('mail.google.com -', m)

with open('ip.log', 'w') as file:
    for z in ip:
        file.writelines(z + ' ')
```
