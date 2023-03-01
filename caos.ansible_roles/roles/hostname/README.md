Set hostname equal to `{{ inventory_hostname | regex_replace('[_\\.:]', '-') }}` 

(from infra_agent requirements after provisioning)

```yaml
- name: Configure hostname
  include_role:
    name: hostname
```