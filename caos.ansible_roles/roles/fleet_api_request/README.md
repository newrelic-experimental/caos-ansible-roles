NRQL Api requests

After executing this role the fact `results` will contain the results.

Example:
```yaml
- name: API REQUEST
  include_role:
    name: fleet_api_request
  vars:
    action: get_agents
    assertion: agents_healthy
```

Vars:
```yaml
# New Relic account ID
nr_account_id: 123456789
# New Relic User API Key
nr_api_key: "xxxxxxxxxxxxxxxx"

```