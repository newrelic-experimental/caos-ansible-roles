Assert service is not present assertion. (Legacy from pkg uninstall)

```yaml

- name: assert no service
  include_role:
    name: caos.ansible_roles.assert_no_service
  vars:
    service_name: newrelic-infra.service

```