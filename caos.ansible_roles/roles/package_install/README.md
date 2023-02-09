Install package (Linux)
```yaml
- name: package install
  include_role:
    name: package_install
  vars:
    package: "newrelic-infra"
```

Install msi from url and optionally enable service (Windows)
```yaml
- name: package install
  include_role:
    name: package_install
  vars:
    package: "http://nr-downloads-ohai-staging.s3-website-us-east-1.amazonaws.com/infrastructure_agent/windows/newrelic-infra.msi"
    service_windows: newrelic-infra
```