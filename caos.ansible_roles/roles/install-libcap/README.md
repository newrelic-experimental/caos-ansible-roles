Install libcap before gathering facts (necessary for install-requirements)

```yaml
- name: install libcap
  include_role:
    name: install-libcap
```