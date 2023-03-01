Install python before gathering facts (necessary for install-requirements)

```yaml
- name: install python
  include_role:
    name: install_python
```