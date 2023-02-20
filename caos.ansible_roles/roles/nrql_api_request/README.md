NRQL Api requests

After executing this role the fact `results` will contain the results.

Example:
```yaml
- name: nrql request
  include_role:
    name: caos.ansible_roles.nrql_api_request
  vars:
    entity_id: 12345678
    host_status: "running"
    timestamp: 123456789
    nrql_query: >-
      SELECT count(*) FROM InfrastructureEvent WHERE
      entityId = {{ entity_id }} AND
      format = 'inventoryChange' AND
      source = 'system/host_status' AND
      newValue LIKE '%{{ host_status }}%'
      SINCE {{ timestamp }}
```

Vars:
```yaml
# New Relic account ID
nr_account_id: 123456789
# New Relic User API Key
nr_api_key: "xxxxxxxxxxxxxxxx"
# NRQL Query 
nrql_query: >-
  SELECT count(*) FROM SystemSample SINCE 1 day ago

```