[Start | Stop | Terminate] EC2 Instance

After running this role the following vars will be filled (depending on the action):
* ec2_start_time_sec
* ec2_stop_time_sec
* ec2_terminate_time_sec

Usage:
```yaml

# stop instance
- name: stop ec2
  include_role:
    name: caos.ansible_roles.ec2_instance
  vars:
    action: stop
    instance_id: "{{ iid }}"
```