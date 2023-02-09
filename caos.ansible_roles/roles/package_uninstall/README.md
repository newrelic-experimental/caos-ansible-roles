Uninstall package (Linux)
```yaml
- name: package uninstall
  include_role:
    name: caos.ansible_roles.package_uninstall
  vars:
    package: "newrelic-infra"
```
