##  File and process assertions

* File: permissions, ownership and content by regex
* Process: ownership

```yaml

- name: File and process assertions (permissions, ownership and content by regex)
  include_role:
    name: caos.ansible_roles.assert_files
  vars:
    files:
      - name: /etc/fstab
        permissions: "0644"
        owner: root
        content: "/dev/disk/by-uuid/.* /boot/efi"
      - name: /etc/sudoers
        permissions: "0440"
    processes:
      - name: newrelic-infra-service
        owner: root
```
