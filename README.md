[![New Relic Experimental header](https://github.com/newrelic/opensource-website/raw/master/src/images/categories/Experimental.png)](https://opensource.newrelic.com/oss-category/#new-relic-experimental)

# CAOS Ansible Roles 

Ansible roles to be used in internal projects for automated tests and OpenTelemetry environments provisioner.

## Installation

### Ansible Collection (Recommended)
This repository contains a set of roles to be reused and they can be added to any project as an Ansible Collection:
```shell
# Import roles from collection
ansible-galaxy -v  collection install git+https://github.com/newrelic-experimental/caos-ansible-roles.git#/caos.ansible_roles/

```
After importing the collection, you can use the provided roles with the prefix `caos.ansible_roles`:

```yaml
- name: Install Docker
  include_role:
    name: caos.ansible_roles.docker_install
  vars:
    docker_compose_version: "2.15.1"
```

### Git Submodule (legacy)
This repository is meant to be used as a git submodule so the existing roles can be shared among different projects.
Once the git submodule is added, you need to add an entry to `ansible.cfg`. i.e.:
```
[defaults]
roles_path = PATH/TO/caos-ansible-roles:OTHER/PATH

```

## Support

This code is an [experimental project](https://opensource.newrelic.com/oss-category/#new-relic-experimental) and solves an interesting problem but does not yet have an active maintainer(s). The project is being developed in the open for the purpose of feedback on a new feature or function.


## Contributing
We encourage your contributions to improve [project name]! Keep in mind when you submit your pull request, you'll need to sign the CLA via the click-through using CLA-Assistant. You only have to sign the CLA one time per project.
If you have any questions, or to execute our corporate CLA, required if your contribution is on behalf of a company,  please drop us an email at opensource@newrelic.com.

**A note about vulnerabilities**

As noted in our [security policy](../../security/policy), New Relic is committed to the privacy and security of our customers and their data. We believe that providing coordinated disclosure by security researchers and engaging with the security community are important means to achieve our security goals.

If you believe you have found a security vulnerability in this project or any of New Relic's products or websites, we welcome and greatly appreciate you reporting it to New Relic through [HackerOne](https://hackerone.com/newrelic).

## License
`CAOS Ansible Roles` is licensed under the [Apache 2.0](http://apache.org/licenses/LICENSE-2.0.txt) License.
