### Playbook ###
```
---
- name: Getting data from routers

  hosts: mikrotik

  gather_facts: false

  tasks:

    - name: system command
      community.network.routeros_command:
        commands:
                 - /ip dhcp-server network set [find gateway="192.168.170.1"] dns-server=8.8.8.8
                 - /ip dhcp-server network print
#                 - /ip service set ftp disabled=yes
#                 - /ip service set www disabled=yes
#                 - /ip service set api disabled=yes
#                 - /ip service set api-ssl disabled=yes
#                 - /ip service set www-ssl disabled=yes
      register: system_print

    - name: debug print
      debug: var=system_print.stdout_lines
```
### Inventory ###
```
[all_mikrotik:vars]
ansible_user=admin+cet1024w #+cet1024w - ускоряет работу убирая цвета итд из консоли при логине
ansible_password=********
ansible_connection=network_cli
ansible_network_os=routeros
ansible_become=yes
ansible_become_method=enable
#ansible_ssh_common_args='-o ProxyCommand="ssh -W %h:%p -q bastion01"'
host_key_checking=false
```
