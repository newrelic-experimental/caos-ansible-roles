New Relic OpenTelemetry Collector Distribution role
============================

An Ansible role that can be used to install and/or configure the New Relic OpenTelemetry Collector Distribution.

Requirements
------------


Role Variables
--------------

##### `repo_endpoint` (Optional)

Specifies the endpoint of the packages repository

##### `distribution` (Optional)

Specifies the New Relic OpenTelemetry Collector  distribution to use.  Defaults to
`nr-otel-collector`. See additional information about valid values in the
[New Relic OpenTelemetry Collector Releases](https://github.com/newrelic/opentelemetry-collector-releases).

##### `custom_config_file` (Optional)

Specifies a custom configuration file for the Open Telemetry Collector service. Defauts to the one provided by the service.
See additional information about the configuration file in [Open Telemetry Collector Configuration](https://opentelemetry.io/docs/collector/configuration/).

#### `collector_config_tpl` (Optional)
Configuration template for the collector. You can use [this example](./templates/nr-otel-collector-config.yaml.j2). Unset by default.
To use the collector as gateway, you can use the [otel-config-gw.yaml](./templates/nr-otel-collector-gw-config.yaml.j2)

Example:
```shell
ansible-playbook -i intentory -e collector_config_tpl=/tmp/otel-config.yaml.j2  playbook.yaml
```

#### `collector_is_containerized` (Optional)
Boolean flag to install the collector on-host or in a Docker container.

#### `collector_otlp_endpoint` (Optional)
OpenTelemetry collector endpoint used in the default configuration.

#### `collector_nr_license_key` (Optional)
New Relic ingest license key used in the default configuration. 

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

See [requirements.yml](requirements.yml)

Install requirements:
```
ansible-galaxy install -r requirements.yml
```

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

```
---
- name: Install and configure Open Telemetry collector
  hosts: all
  become: true
  tasks:
    - name: "Include nr_otel_distribution"
      include_role:
        name: "caos.ansible_roles.nr_otel_distribution"
```

To install the Open Telemetry collector as a Docker container:

```
- name: Install and configure Open Telemetry collector in a Docker container
  hosts: all
  become: true
  tasks:
    - name: create inventory
      vars:
        collector_is_containerized: true
      include_role:
        name: caos.ansible_roles.nr_otel_distribution
```

## Testing

The `opentelemetry-collector` role uses [molecule](https://github.com/ansible-community/molecule)
for testing.
