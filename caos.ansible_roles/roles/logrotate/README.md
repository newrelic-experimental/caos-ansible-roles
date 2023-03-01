Configure logrotate (necessary for install-requirements)

```yaml
- name: Configure logrotate
  include_role:
    name: logrotate
```