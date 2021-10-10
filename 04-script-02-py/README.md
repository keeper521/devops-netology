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
import socket
old_ip = []
adress = ['google.com', 'drive.google.com', 'mail.google.com']
with open('ip_log', 'r') as file:
    for old in file:
        old_ip = (old.split())
a = 0
while a < len(adress):
    ip = socket.gethostbyname(adress[a])
    if old_ip[a] != ip:
        print(f'[ERROR] {adress[a]} IP mismatch: {old_ip[a]} {ip}')
        old_ip[a] = ip
    elif old_ip[a] == ip:
        print(f'{adress[a]} - {ip}')
        old_ip[a] = ip
    a += 1
with open('ip_log', 'w') as file:
    for z in old_ip:
        file.writelines(z + ' ')
```
