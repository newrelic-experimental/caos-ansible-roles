Service status assertion (enabled and running for now)

```yaml

- name: assert service status
  include_role:
    name: caos.ansible_roles.assert_service_status
  vars:
    services_enabled:
      - newrelic-infra
    services_running:
      - newrelic-infra
```