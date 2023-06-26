Install and configure nri-mysql integration

Currently this role is not intended to be a full test of nri-mysql, just the minimum to test that an 
integration works.

Example:
```yaml
- name: nrql request
  include_role:
    name: caos.ansible_roles.nri_mysql
  vars:
    nri_mysql_hostname: localhost
    nri_mysql_port: 3306
    nri_mysql_username: root
    nri_mysql_password: root
    nri_mysql_interval: 20s 

```

Vars:
```yaml
# hostname/ip of the mysql server
nri_mysql_hostname: localhost
# port of the myqsl server
nri_mysql_port: "xxxxxxxxxxxxxxxx"
# username for mysql connection 
nri_mysql_username:
# password for mysql connection 
nri_mysql_password:
# integration interval
nri_mysql_interval: 20s

```