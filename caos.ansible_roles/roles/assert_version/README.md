Assert application version.

```yaml
# Linux
- name: assert version
  include_role:
    name: caos.ansible_roles.assert_version
  vars:
    target_versions:
      - exec: "/usr/bin/newrelic-infra --version"
        version: "1.36.1"
      - exec: "otelcol-contrib --version"
        version: "0.70.0"

# Windows

- name: Assert version
  include_role:
    name: caos.ansible_roles.assert_version
  vars:
    target_versions:
      - exec: '"C:\Program Files\New Relic\newrelic-infra\newrelic-infra.exe" "--version"'
        version: "1.47.2"
```
