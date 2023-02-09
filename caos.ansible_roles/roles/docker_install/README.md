Install docker and docker compose

```yaml

- name: install docker
  include_role:
    name: caos.ansible_roles.docker_install
  vars:
    docker_compose_version: "2.15.1"
```