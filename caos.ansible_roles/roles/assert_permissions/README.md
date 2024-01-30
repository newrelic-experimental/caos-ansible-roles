Assert file permissions.

## Deprecated
Use [assert_files](../assert_files)

## Old usage
```yaml

- name: Assert permissions
  include_role:
    name: caos.ansible_roles.assert_permissions
  vars:
    files:
      /etc/fstab: "0644"
      /this/is/another/path: "0765"
```
