Create or Delete Infrastructure HNR alerts

```yaml
- name: Create HNR alerts
  include_role:
    name: caos.ansible_roles.infrastructure_hnr_alert
  vars:
    action: create
    entity_name: "{{ iid }}:{{ inventory_hostname }}"
    policy_name: "CAOS packaging tests HNR {{ inventory_hostname }}"
```

```yaml
- name: Delete HNR alerts
  include_role:
    name: caos.ansible_roles.infrastructure_hnr_alert
  vars:
    action: delete
    entity_name: "{{ iid }}:{{ inventory_hostname }}"
    policy_name: "CAOS packaging tests HNR {{ inventory_hostname }}"
```
