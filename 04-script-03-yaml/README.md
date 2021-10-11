### 1 ###
``` json
{ "info": "Sample JSON output from our service\t",
    "elements": [
        { "name": "first",
        "type": "server",
        "ip": 7175
        },
        { "name": "second",
        "type": "proxy",
        "ip": "71.78.22.43"
        }
    ]
}
```
### 2. ###
``` python
#!/usr/bin/env python3

import socket, json, yaml
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
www = dict(zip(adress, old_ip))

with open('ip.json', 'w') as js:
    json.dump(www, js)
with open('ip.yaml', 'w') as ym:
    yaml.dump(www, ym)
```
