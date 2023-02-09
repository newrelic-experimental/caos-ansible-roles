Assert application version.

```yaml
- name: assert version
  include_role:
    name: assert_version
  vars:
    target_versions:
      - exec: "/usr/bin/newrelic-infra --version"
        version: "1.36.1"
      - exec: "otelcol-contrib --version"
        version: "0.70.0"
```