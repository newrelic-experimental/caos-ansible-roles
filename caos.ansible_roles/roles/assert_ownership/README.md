Assert file and process existence and ownership.

```yaml

- name: assert ownership
  include_role:
    name: caos.ansible_roles.assert_ownership
  vars:
    username: "root"
    user_folders:
      - /var/log/newrelic-infra
      - /etc/newrelic-infra
    user_processes:
      - newrelic-infra-service
```