NRQL Api requests

After executing this role the fact `results` will contain the results.

```yaml

- name: nrql request
  include_role:
    name: caos.ansible_roles.nrql_api_request
  vars:
    infrastructure_event_query: >-
      SELECT count(*) FROM InfrastructureEvent WHERE
      entityId = {{ entity_id }} AND
      format = 'inventoryChange' AND
      source = 'system/host_status' AND
      newValue LIKE '%{{ host_status }}%'
      SINCE {{ timestamp }}


```