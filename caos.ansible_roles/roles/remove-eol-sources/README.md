Remove EOL sources (necessary for install-requirements)

```yaml
- name: Remove EOL repository sources
  include_role:
    name: remove-eol-sources
```