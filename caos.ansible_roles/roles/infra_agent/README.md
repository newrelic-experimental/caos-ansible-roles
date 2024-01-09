Role to install the Infra Agent for Canaries and Packaging tests, similar to `nr_otel_distribution`.

This role is based on the deprecated roles used for Canaries and Packaging tests in the Infra Agent repo.

* It has `repo_setup` as dependency
* It includes the next config options:
```yaml
# flag to control if the Infra Agent is installed or uninstalled
uninstall: false
# flag to control environment: on-host | container
is_containerized: false

# package repository
repo_endpoint: "https://download.newrelic.com/infrastructure_agent"

# agent config:
nr_license_key: ""
display_name: "{{ inventory_hostname }}"
log_level: "{{ nria_log_level | default('info') }}"
log_forward: "{{ nria_log_forward | default('false') }}"
log_rotation_mb: "{{ nria_log_rotation_mb | default('0') }}"
log_rotation_max_files: "{{ nria_log_rotation_max_files | default('0') }}"
log_rotation_compressed: "{{ nria_log_rotation_compressed | default('false') }}"
staging: true
custom_attributes: {}
enable_process_metrics: 'true'
self_instrumentation: false

# flag to forward docker logs to nr1
forward_docker_logs: false
```


```yaml
# Install latest version on host
- name: install agent
  include_role:
    name: caos.ansible_roles.infra_agent

# Install pinned version on host
- name: install agent
  include_role:
    name: caos.ansible_roles.infra_agent
  vars:
    target_version: "{{ target_agent_version }}"

# Uninstall
- name: uninstall agent on host
  include_role:
    name: caos.ansible_roles.infra_agent
  vars:
    uninstall: true

# Install latest version on container
- name: install agent
  include_role:
    name: caos.ansible_roles.infra_agent
  vars:
    is_containerized: true

# Install pinned version on container
- name: install agent
  include_role:
    name: caos.ansible_roles.infra_agent
  vars:
    target_version: "{{ target_agent_version }}"
    is_containerized: true

# Uninstall on container
- name: install agent
  include_role:
    name: caos.ansible_roles.infra_agent
  vars:
    is_containerized: true
    uninstall: true

```
