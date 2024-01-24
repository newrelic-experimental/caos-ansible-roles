Fleet Api requests

Example:
```yaml
  tasks:
    - name: test
      vars:
        # New Relic account ID
        nr_account_id: 123456789
        # New Relic User API Key
        nr_api_key: "xxxxxxxxxxxxxxxx"
      block:
        - name: API REQUEST
          include_role:
            name: fleet_api_request
          vars:
            assert_agents_healthy:
              uuids: ["01HMH8JKWX8GYPG2FNFCNZ4MX0", "01HMH8JJXWJE8N4040EK2D4E6F"]
              host: "G7WNJ9MWLN"
              enabled: true
```
