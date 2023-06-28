Assert one or multiple processes are running. It supports Extended regular expressions.

```yaml

- name: assert process running
  include_role:
    name: caos.ansible_roles.assert_process_running
  vars:
    processes_running:
      - "^one_process_regex$"
      - "^/usr/bin/another_process --with-args$"

```