Assert file permissions.

```yaml

- name: Assert permissions
  include_role:
    name: caos.ansible_roles.assert_permissions
  vars:
    files:
      /etc/fstab: "0644"
      /this/is/another/path: "0765"
```
