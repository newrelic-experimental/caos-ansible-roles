Install gpg before gathering facts (necessary for install-requirements)

```yaml
- name: install gpg
  include_role:
    name: install-gpg
```