Assert executable has capabilities

```yaml

- name: assert privileged caps
  include_role:
    name: assert_privileged_caps
  vars:
    executable: "/usr/bin/newrelic-infra"
    caps: #regular expressions
      - cap_dac_read_search
      - cap_sys_ptrace.ep
```