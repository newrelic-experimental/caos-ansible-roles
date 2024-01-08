Infrastructure HNR alert violation assert

```yaml
- name: assert violation is opened
  include_role:
    name: caos.ansible_roles.infrastructure_hnr_alert_violation_assert
  vars:
    violation_open: true
    entity_name: "{{ iid }}:{{ inventory_hostname }}"
    policy_name: "CAOS packaging tests HNR {{ inventory_hostname }}"
    
    
- name: assert violation is closed
  include_role:
    name: caos.ansible_roles.infrastructure_hnr_alert_violation_assert
  vars:
    violation_open: false
    entity_name: "{{ iid }}:{{ inventory_hostname }}"
    policy_name: "CAOS packaging tests HNR {{ inventory_hostname }}"
```

