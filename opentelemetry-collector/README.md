OpenTelemetry Collector role
============================

An Ansible role that can be used to install and/or configure the Open Telemetry Collector.

Requirements
------------


Role Variables
--------------

##### `distribution` (Optional)

Specifies the Open Telemetry collector distribution to use.  Defaults to
`otelcol`. See additional information about valid values in the
[Otel Collecotr Releases](https://github.com/open-telemetry/opentelemetry-collector-releases).

##### `custom_config_file` (Optional)

Specifies a custom configuration file for the Open Telemetry Collector service. Defauts to the one provided by the service.
. See additional information about the configuration file in [Open Telemetry Collector Configuration](https://opentelemetry.io/docs/collector/configuration/).


Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: opentelemetry-collector }

## Testing

The `opentelemetry-collector` role uses [molecule](https://github.com/ansible-community/molecule)
for testing.
