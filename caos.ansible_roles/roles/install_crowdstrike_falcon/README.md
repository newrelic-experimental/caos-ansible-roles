# CrowdStrike Falcon installer

This role installs the CrowdStrike Falcon sensor in our systems. It uses the installer hashes provided and relates them to each installation method (`dnf`, `apt`, manual, etc). See the [vars](./vars/main.yaml) to see this relation and modify it to your needs (e.g. changing hostnames).

## Providing credentials and variables

This role needs the following credentials to work:

- **CrowdStrike Client ID:** Along with the Client Secret, it will be used to get an auth token to download the appropriate installer. It can be provided to the role setting the `falcon_client_id` variable. 
- **CrowdStrike Client Secret:** Along with the Client ID, it will be used to get an auth token to download the appropriate installer. It can be provided to the role setting the `falcon_client_secret` variable.
- **CrowdStrike Customer ID:** It will be used to register the Falcon Sensor installation with CrowdStrike. It can be provided via the `falcon_customer_id` variable.

The URL from where to get the installer is also needed. Set it up via `api_base_url`.

### Passing credentials via the command line

Use the `-e`/`--extra-vars` option to set these variables directly:

```bash
ansible-playbook -i "$ANSIBLE_INVENTORY" -e "crowdstrike_client_id=$CROWDSTRIKE_CLIENT_ID" -e "crowdstrike_client_secret=$CROWDSTRIKE_CLIENT_SECRET" -e "crowdstrike_customer_id=$CROWDSTRIKE_CUSTOMER_ID" install-requirements.yml
```

Then, in the `install-requirements.yml` of this example:

```yaml
- hosts: testing_hosts_linux
  become: true
  gather_facts: yes
  vars:
    falcon_client_id: "{{ crowdstrike_client_id }}"
    falcon_client_secret: "{{ crowdstrike_client_secret }}"
    falcon_customer_id: "{{ crowdstrike_customer_id }}"
    api_base_url: "https://api.laggar.gcw.crowdstrike.com"
  tasks:
    - name: Install CrowdStrike Falcon
      include_role:
        name: install-crowdstrike-falcon
```

### Passing credentials via environment variables

Very similar to the above, but `lookup` directly in the playbook:

```yaml
- hosts: testing_hosts_linux
  become: true
  gather_facts: yes
  vars:
    falcon_client_id: "{{ lookup('env', 'CROWDSTRIKE_CLIENT_ID') }}"
    falcon_client_secret: "{{ lookup('env', 'CROWDSTRIKE_CLIENT_SECRET') }}"
    falcon_customer_id: "{{ lookup('env', 'CROWDSTRIKE_CUSTOMER_ID') }}"
    api_base_url: "https://api.laggar.gcw.crowdstrike.com"
  tasks:
    - name: Install CrowdStrike Falcon
      include_role:
        name: install-crowdstrike-falcon
```