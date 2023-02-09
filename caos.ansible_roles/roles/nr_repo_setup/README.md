Configure New Relic apt/rpm repository

Usage:
```yaml

# default
- name: repo setup
  include_role:
    name: caos.ansible_roles.nr_repo_setup

# custom values
- name: repo setup
  include_role:
    name: caos.ansible_roles.nr_repo_setup
  vars:
    repo_endpoint: "http://nr-downloads-ohai-testing.s3-website-us-east-1.amazonaws.com/infrastructure_agent"
    repo_name: "custom_repo_name"
```