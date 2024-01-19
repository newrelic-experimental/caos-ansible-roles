Simple usage:
```yaml
- name: Configure OpenSUSE repositories when needed
  include_role:
    name: caos.ansible_roles.opensuse_repositories
  vars:
    suse_repo_base_url: "http://download.opensuse.org/distribution/12.3/repo/oss/"
    suse_version: "12.3"

```

Hostname based:
```yaml
vars:
  instances_requiring_opensuse_repos:
    "sles-12.3": http://download.opensuse.org/distribution/12.3/repo/oss/
    "sles-12.4": http://download.opensuse.org/distribution/12.3/repo/oss/
    "sles-15.1": http://download.opensuse.org/distribution/leap/15.1/repo/oss/
    "sles-15.2": http://download.opensuse.org/distribution/leap/15.2/repo/oss/


- include_role:
    name: caos.ansible_roles.opensuse_repositories
  loop: "{{ instances_requiring_opensuse_repos | dict2items }}"
  when: inventory_hostname is search(item.key)
  vars:
    suse_repo_base_url: "{{ item.value }}"
    suse_version: "{{ inventory_hostname | regex_replace('[^:]+:[^:]+:sles-', '') }}"

```
