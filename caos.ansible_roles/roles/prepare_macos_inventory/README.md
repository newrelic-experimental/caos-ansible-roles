##  Prepare MacOS canaries inventory file (MacStadium)

```yaml

- name: Prepare MacOS canaries inventory file
  include_role:
    name: caos.ansible_roles.prepare_macos_inventory
  vars:
    output_inventory: "{{ output_inventory_macos | default('inventory.macos.ec2') }}"
```
