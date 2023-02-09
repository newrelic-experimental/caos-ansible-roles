start|stop|restart service
```yaml

- name: stop service
  include_role:
    name: caos.ansible_roles.service_status
  vars:
    service_name: "newrelic-infra"
    action: "stop"
```