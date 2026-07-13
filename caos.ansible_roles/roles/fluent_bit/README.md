Role to run standalone New Relic Fluent Bit log-forwarder containers
(`newrelic/newrelic-fluentbit-output`) on a host, independent of the Infra Agent.

It is designed for canary/packaging tests: it runs one Fluent Bit container for a
single image tag, forwarding the host's systemd journal to New Relic Logs. To
compare versions side by side, call the role once per version — each invocation
uses per-version paths (`/srv/fluent-bit_<tag>/`) and a uniquely named container,
so calls do not clobber each other.

* Requires docker to already be present (installed by the `infra_agent`
  containerized install, which runs before this role)
* Config options:
```yaml
# Fluent Bit image repo, no tag
fluent_bit_image: "newrelic/newrelic-fluentbit-output"
# single image tag to run; call the role once per version for a canary
fluent_bit_version: ""
# Fluent Bit config template; override with your own
fluent_bit_config: "fluent-bit.conf.j2"
# New Relic Logs ingest endpoint; empty derives from the `staging` flag
nr_logs_endpoint: ""
# New Relic license key
nr_license_key: ""
# staging vs production ingest
staging: true
```

```yaml
# Canary: call the role twice, once per version
- name: set up fluent bit (latest)
  include_role:
    name: caos.ansible_roles.fluent_bit
  vars:
    nr_license_key: "{{ my_license_key }}"
    fluent_bit_version: "3.7.0"

- name: set up fluent bit (previous)
  include_role:
    name: caos.ansible_roles.fluent_bit
  vars:
    nr_license_key: "{{ my_license_key }}"
    fluent_bit_version: "3.6.0"
```

Each container:
* mounts the host `/var/log` (incl. `/var/log/journal`) read-only,
* reads the systemd journal via the Fluent Bit `systemd` input,
* stamps records with `fb_source = <tag>` (from the `FB_VERSION` env) so versions
  can be distinguished in New Relic (`WHERE fb_source = '3.7.0'`),
* forwards to New Relic Logs via the bundled `out_newrelic.so` output plugin.
