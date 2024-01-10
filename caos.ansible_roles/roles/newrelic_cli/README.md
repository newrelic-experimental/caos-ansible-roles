Install agents using New Relic CLI

```yaml
- name: install agent via newrelic-cli
  include_role:
    name: caos.ansible_roles.newrelic_cli
  vars:
    repo_endpoint: "https://download.newrelic.com/"
    recipe: "newrelic-infra"
    region: "STAGING" # US | EU | STAGING
    nr_api_key: "user-api-key"
    nr_account_id: "nr-account-id"

```
