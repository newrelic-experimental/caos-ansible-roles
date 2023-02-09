Role to ensure that certain components are not present. Files, packages and services.

Usage:
```yaml
- name: cleanup
  include_role:
    name: caos.ansible_roles.cleanup
  vars:
    files_to_cleanup:
      - /etc/newrelic-infra
      - /etc/newrelic-infra.yml
      - /etc/systemd/system/newrelic-infra.service
      - /var/db/newrelic-infra
      - /usr/local/bin/newrelic-infra
      - /usr/local/bin/newrelic-infra-ctl
      - /usr/local/bin/newrelic-infra-service
      - /var/run/newrelic-infra
      - /var/log/newrelic-infra
      - /opt/newrelic-infra.tar.gz
      - /opt/newrelic-infra
    packages_to_cleanup:
      - newrelic-infra
      - td-agent-bit
    services_to_stop:
      - newrelic-infra
```